from __future__ import absolute_import

import json
import threading
import time

import os
import sys

# websocket-client uses stdlib `typing`, but the bundled typing.py shim in
# _included_packages shadows it on sys.path. Temporarily remove that directory
# so the stdlib typing is found during websocket import.
_inc_dir = os.path.normpath(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
_saved = []
for _i, _p in enumerate(sys.path):
    if os.path.normpath(os.path.abspath(_p)) == _inc_dir:
        _saved.append((_i, _p))
for _, _p in reversed(_saved):
    sys.path.remove(_p)

from .websocket_lib import WebSocketTimeoutException, WebSocketConnectionClosedException, create_connection

for _i, _p in _saved:
    sys.path.insert(_i, _p)

del _inc_dir, _saved, _i, _p

from . import util


class PlexNotificationListener(object):
    """
    Listens for real-time notifications from a Plex Media Server via WebSocket.

    Runs on a dedicated daemon thread. Parses incoming JSON notifications and
    fires signals on the owning PlexServer instance via SignalsMixin, e.g.:
        server.trigger('notification:timeline', entries=[...])
        server.trigger('notification:activity', entries=[...])

    Automatically reconnects with exponential backoff on connection loss.
    """

    ENDPOINT = '/:/websockets/notifications'

    # Reconnect backoff: 1s, 2s, 4s, 8s, ... up to 60s
    RECONNECT_BASE = 1
    RECONNECT_MAX = 60

    # Map notification types to their entry list key and signal name
    NOTIFICATION_MAP = {
        'timeline':                   ('TimelineEntry',                    'notification:timeline'),
        'playing':                    ('PlaySessionStateNotification',     'notification:playing'),
        'activity':                   ('ActivityNotification',             'notification:activity'),
        'progress':                   ('ProgressNotification',             'notification:progress'),
        'status':                     ('StatusNotification',               'notification:status'),
        'backgroundProcessing':       ('BackgroundProcessingNotification', 'notification:backgroundProcessing'),
        'transcodeSession.start':     ('TranscodeSession',                 'notification:transcode'),
        'transcodeSession.update':    ('TranscodeSession',                 'notification:transcode'),
        'transcodeSession.end':       ('TranscodeSession',                 'notification:transcode'),
        'setting':                    ('SettingNotification',              'notification:setting'),
    }

    def __init__(self, server):
        self.server = server
        self._thread = None
        self._ws = None
        self._stopping = False
        self._reconnectDelay = self.RECONNECT_BASE

    @property
    def isRunning(self):
        return self._thread is not None and self._thread.is_alive()

    def start(self):
        if self.isRunning:
            util.DEBUG_LOG('NotificationListener: already running for {0}', repr(self.server.name))
            return

        self._stopping = False
        self._reconnectDelay = self.RECONNECT_BASE

        self._thread = threading.Thread(target=self._run, name='PlexNotificationListener')
        self._thread.daemon = True
        self._thread.start()

        util.LOG('NotificationListener: started for {0}', repr(self.server.name))

    def stop(self):
        self._stopping = True
        if self._ws:
            try:
                self._ws.close()
            except Exception:
                pass

        util.LOG('NotificationListener: stopped for {0}', repr(self.server.name))

    def _buildUrl(self):
        """Build the WebSocket URL from the server's active connection."""
        if not self.server.activeConnection:
            return None

        # Get the base HTTP URL and swap to ws:// / wss://
        httpUrl = self.server.buildUrl(self.ENDPOINT, includeToken=True)
        if not httpUrl:
            return None

        return httpUrl.replace('https://', 'wss://').replace('http://', 'ws://')

    def _getHeaders(self):
        """Get standard Plex headers for the WebSocket handshake."""
        return util.getPlexHeaders()

    def _run(self):
        """Main loop: connect, listen, reconnect on failure."""
        while not self._stopping:
            url = self._buildUrl()
            if not url:
                util.WARN_LOG('NotificationListener: no active connection for {0}, retrying in {1}s',
                              repr(self.server.name), self._reconnectDelay)
                self._sleep(self._reconnectDelay)
                self._backoff()
                continue

            try:
                util.DEBUG_LOG('NotificationListener: connecting to {0}', repr(self.server.name))

                self._ws = create_connection(
                    url,
                    header=self._getHeaders(),
                    timeout=30
                )

                util.LOG('NotificationListener: connected to {0}', repr(self.server.name))
                self._reconnectDelay = self.RECONNECT_BASE  # Reset backoff on success

                self._listen()

            except Exception as e:
                if not self._stopping:
                    util.WARN_LOG('NotificationListener: connection error for {0}: {1}',
                                  repr(self.server.name), e)

            finally:
                if self._ws:
                    try:
                        self._ws.close()
                    except Exception:
                        pass
                    self._ws = None

            if not self._stopping:
                util.DEBUG_LOG('NotificationListener: reconnecting to {0} in {1}s',
                               repr(self.server.name), self._reconnectDelay)
                self._sleep(self._reconnectDelay)
                self._backoff()

    def _listen(self):
        """Read messages from the WebSocket until disconnected or stopped."""
        while not self._stopping:
            try:
                message = self._ws.recv()
                if message:
                    self._onMessage(message)
            except WebSocketTimeoutException:
                continue
            except WebSocketConnectionClosedException:
                util.DEBUG_LOG('NotificationListener: connection closed for {0}', repr(self.server.name))
                break
            except Exception as e:
                if not self._stopping:
                    util.WARN_LOG('NotificationListener: receive error for {0}: {1}',
                                  repr(self.server.name), e)
                break

    def _onMessage(self, message):
        """Parse a JSON notification and fire the appropriate signal."""
        try:
            data = json.loads(message)
        except (ValueError, TypeError):
            util.WARN_LOG('NotificationListener: failed to parse message: {0}', message[:200])
            return

        container = data.get('NotificationContainer')
        if not container:
            return

        notificationType = container.get('type', '')

        mapping = self.NOTIFICATION_MAP.get(notificationType)
        if not mapping:
            util.DEBUG_LOG('NotificationListener: unhandled notification type: {0}', notificationType)
            return

        entryKey, signalName = mapping
        entries = container.get(entryKey, [])

        util.DEBUG_LOG('NotificationListener: {0} ({1} entries)', notificationType, len(entries))

        try:
            self.server.trigger(signalName, type=notificationType, entries=entries)
        except Exception as e:
            util.ERROR_LOG('NotificationListener: error firing signal {0}: {1}', signalName, e)

    def _sleep(self, seconds):
        """Sleep in small increments so we can respond to stop() quickly."""
        end = time.time() + seconds
        while not self._stopping and time.time() < end:
            time.sleep(0.5)

    def _backoff(self):
        """Increase reconnect delay with exponential backoff."""
        self._reconnectDelay = min(self._reconnectDelay * 2, self.RECONNECT_MAX)
