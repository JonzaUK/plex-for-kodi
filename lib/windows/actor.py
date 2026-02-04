# coding=utf-8
"""
Actor Detail Window - Shows actor biography, photo, and filmography
"""
from __future__ import absolute_import

import datetime

from kodi_six import xbmc
from kodi_six import xbmcgui

from lib import backgroundthread
from lib import util
from lib.util import T
from . import busy
from . import dropdown
from . import kodigui
from . import opener
from . import search
from . import windowutils


class ActorDetailsTask(backgroundthread.Task):
    """Background task to fetch actor details from the server"""
    def __init__(self, role, callback):
        super(ActorDetailsTask, self).__init__()
        self.role = role
        self.callback = callback

    def run(self):
        if self.isCanceled():
            return

        details = self.role.getDetails()

        if not self.isCanceled():
            self.callback(details)


class ActorFilmographyTask(backgroundthread.Task):
    """Background task to fetch actor's filmography"""
    def __init__(self, role, media_type, callback):
        super(ActorFilmographyTask, self).__init__()
        self.role = role
        self.media_type = media_type
        self.callback = callback

    def run(self):
        if self.isCanceled():
            return

        items = self.role.getFilmography(self.media_type)

        if not self.isCanceled():
            self.callback(items)


class ActorWindow(kodigui.ControlledWindow, windowutils.UtilMixin):
    xmlFile = 'script-plex-actor.xml'
    path = util.ADDON.getAddonInfo('path')
    theme = 'Main'
    res = '1080i'
    width = 1920
    height = 1080

    THUMB_DIM = util.scaleResolution(300, 300)
    POSTER_DIM = util.scaleResolution(268, 402)

    FILMOGRAPHY_LIST_ID = 400
    HOME_BUTTON_ID = 201
    SEARCH_BUTTON_ID = 202
    PLAYER_STATUS_BUTTON_ID = 204

    def __init__(self, *args, **kwargs):
        kodigui.ControlledWindow.__init__(self, *args, **kwargs)
        self.role = kwargs.get('role')
        self.actorDetails = None
        self.filmographyItems = []
        self.tasks = backgroundthread.Tasks()
        self.exitCommand = None
        self.initialized = False

    def onFirstInit(self):
        self.filmographyListControl = kodigui.ManagedControlList(self, self.FILMOGRAPHY_LIST_ID, 5)

        # Set initial info from role object
        self.setProperty('actor.name', self.role.tag or '')
        if self.role.thumb:
            self.setProperty('actor.thumb', self.role.thumb.asTranscodedImageURL(*self.THUMB_DIM))

        # Fetch full details in background
        self.fetchActorDetails()
        self.fetchFilmography()

        self.initialized = True

    def onReInit(self):
        pass

    def onAction(self, action):
        try:
            controlID = self.getFocusId()
            if action in (xbmcgui.ACTION_NAV_BACK, xbmcgui.ACTION_PREVIOUS_MENU):
                self.doClose()
                return
        except Exception:
            util.ERROR()

        kodigui.ControlledWindow.onAction(self, action)

    def onClick(self, controlID):
        if controlID == self.HOME_BUTTON_ID:
            self.goHome()
        elif controlID == self.FILMOGRAPHY_LIST_ID:
            self.filmographyItemClicked()
        elif controlID == self.SEARCH_BUTTON_ID:
            self.searchButtonClicked()
        elif controlID == self.PLAYER_STATUS_BUTTON_ID:
            self.showAudioPlayer()

    def onFocus(self, controlID):
        pass

    def doClose(self):
        self.tasks.kill()
        kodigui.ControlledWindow.doClose(self)

    def fetchActorDetails(self):
        task = ActorDetailsTask(self.role, self.onActorDetails)
        self.tasks.add(task)
        backgroundthread.BGThreader.addTask(task)

    def fetchFilmography(self):
        self.setProperty('loading', '1')
        task = ActorFilmographyTask(self.role, None, self.onFilmography)
        self.tasks.add(task)
        backgroundthread.BGThreader.addTask(task)

    def onActorDetails(self, details):
        if not details:
            util.DEBUG_LOG('ActorWindow: No details returned for actor')
            return

        util.DEBUG_LOG('ActorWindow: Got actor details - name={}, summary_len={}, birthDate={}'.format(
            details.get('name', ''),
            len(details.get('summary', '')),
            details.get('birthDate', '')
        ))

        self.actorDetails = details
        self.setProperty('actor.name', details.get('name', ''))
        self.setProperty('actor.summary', details.get('summary', ''))
        self.setProperty('actor.birthPlace', details.get('birthPlace', ''))

        # Handle birth date and age calculation
        birthDate = details.get('birthDate', '')
        deathDate = details.get('deathDate', '')

        if birthDate:
            self.setProperty('actor.birthDate', self.formatDate(birthDate))
            age = self.calculateAge(birthDate, deathDate)
            if age:
                self.setProperty('actor.age', str(age))

        if deathDate:
            self.setProperty('actor.deathDate', self.formatDate(deathDate))
            self.setProperty('actor.deceased', '1')

        # Update thumb if we got a better one
        thumb = details.get('thumb', '')
        if thumb:
            self.setProperty('actor.thumb', self.role.server.getImageTranscodeURL(thumb, *self.THUMB_DIM))

    def onFilmography(self, items):
        self.setProperty('loading', '')
        self.filmographyItems = items or []
        self.fillFilmography()

    def fillFilmography(self):
        listItems = []

        for item in self.filmographyItems:
            title = item.title if hasattr(item, 'title') else item.get('title', '')
            year = ''
            if hasattr(item, 'year'):
                year = str(item.year) if item.year else ''

            thumb = ''
            if hasattr(item, 'thumb') and item.thumb:
                thumb = item.thumb.asTranscodedImageURL(*self.POSTER_DIM)
            elif hasattr(item, 'defaultThumb') and item.defaultThumb:
                thumb = item.defaultThumb.asTranscodedImageURL(*self.POSTER_DIM)

            mli = kodigui.ManagedListItem(title, year, thumbnailImage=thumb, data_source=item)

            # Set type indicator
            item_type = item.type if hasattr(item, 'type') else item.TYPE if hasattr(item, 'TYPE') else ''
            mli.setProperty('media.type', item_type)

            # Set watched indicator
            if hasattr(item, 'isWatched') and item.isWatched:
                mli.setProperty('watched', '1')

            listItems.append(mli)

        self.filmographyListControl.reset()
        self.filmographyListControl.addItems(listItems)

        # Update count
        self.setProperty('filmography.count', str(len(listItems)))

    def filmographyItemClicked(self):
        mli = self.filmographyListControl.getSelectedItem()
        if not mli or not mli.dataSource:
            return

        self.processCommand(opener.open(mli.dataSource))

    def searchButtonClicked(self):
        self.processCommand(search.dialog(self))

    def formatDate(self, dateStr):
        """Format a date string (YYYY-MM-DD) to a display format"""
        if not dateStr:
            return ''

        try:
            # Parse YYYY-MM-DD format
            parts = dateStr.split('-')
            if len(parts) == 3:
                year, month, day = int(parts[0]), int(parts[1]), int(parts[2])
                dt = datetime.date(year, month, day)
                # Format as "Month Day, Year"
                return dt.strftime('%B %d, %Y')
        except (ValueError, IndexError):
            pass

        return dateStr

    def calculateAge(self, birthDateStr, deathDateStr=None):
        """Calculate age from birth date, optionally to death date"""
        if not birthDateStr:
            return None

        try:
            parts = birthDateStr.split('-')
            if len(parts) != 3:
                return None

            birthYear, birthMonth, birthDay = int(parts[0]), int(parts[1]), int(parts[2])
            birthDate = datetime.date(birthYear, birthMonth, birthDay)

            if deathDateStr:
                parts = deathDateStr.split('-')
                if len(parts) == 3:
                    endYear, endMonth, endDay = int(parts[0]), int(parts[1]), int(parts[2])
                    endDate = datetime.date(endYear, endMonth, endDay)
                else:
                    endDate = datetime.date.today()
            else:
                endDate = datetime.date.today()

            age = endDate.year - birthDate.year
            # Adjust if birthday hasn't occurred yet this year
            if (endDate.month, endDate.day) < (birthDate.month, birthDate.day):
                age -= 1

            return age
        except (ValueError, IndexError):
            return None
