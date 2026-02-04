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

# Pagination settings
FILMOGRAPHY_PAGE_SIZE = 10


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
    """Background task to fetch actor's filmography with pagination"""
    def __init__(self, role, media_type, callback, start=0, size=FILMOGRAPHY_PAGE_SIZE):
        super(ActorFilmographyTask, self).__init__()
        self.role = role
        self.media_type = media_type
        self.callback = callback
        self.start = start
        self.size = size

    def run(self):
        if self.isCanceled():
            return

        result = self.role.getFilmography(self.media_type, start=self.start, size=self.size)

        if not self.isCanceled():
            self.callback(result)


class ExtendFilmographyTask(backgroundthread.Task):
    """Background task to fetch more filmography items"""
    def setup(self, role, start, size, callback, canceledCallback=None):
        self.role = role
        self.start = start
        self.size = size
        self.callback = callback
        self.canceledCallback = canceledCallback
        return self

    def run(self):
        if self.isCanceled():
            if self.canceledCallback:
                self.canceledCallback()
            return

        try:
            result = self.role.getFilmography(None, start=self.start, size=self.size)
            if self.isCanceled():
                if self.canceledCallback:
                    self.canceledCallback()
                return
            self.callback(result)
        except Exception as e:
            util.DEBUG_LOG('ExtendFilmographyTask failed: {0}'.format(e))
            if self.canceledCallback:
                self.canceledCallback()


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
        self.filmographyOffset = 0
        self.filmographyTotalSize = 0
        self.filmographyMore = False
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

            # Handle filmography pagination when user scrolls to end marker
            if controlID == self.FILMOGRAPHY_LIST_ID:
                if self.checkFilmographyPagination(action):
                    return
        except Exception:
            util.ERROR()

        kodigui.ControlledWindow.onAction(self, action)

    def checkFilmographyPagination(self, action):
        """Check if we need to load more filmography items"""
        mli = self.filmographyListControl.getSelectedItem()
        if not mli:
            return False

        # Check if we're on the "load more" marker
        if mli.getProperty('is.end') and not mli.getProperty('is.updating'):
            # User scrolled to the end marker, load more items
            mli.setBoolProperty('is.updating', True)
            self.extendFilmography()
            return True

        return False

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
        task = ActorFilmographyTask(self.role, None, self.onFilmography, start=0, size=FILMOGRAPHY_PAGE_SIZE)
        self.tasks.add(task)
        backgroundthread.BGThreader.addTask(task)

    def extendFilmography(self):
        """Fetch more filmography items"""
        start = self.filmographyOffset + len(self.filmographyItems)
        task = ExtendFilmographyTask().setup(
            self.role,
            start=start,
            size=FILMOGRAPHY_PAGE_SIZE,
            callback=self.onFilmographyExtended,
            canceledCallback=self.onFilmographyExtendCanceled
        )
        self.tasks.add(task)
        backgroundthread.BGThreader.addTask(task)

    def onFilmographyExtendCanceled(self):
        """Handle extension task cancellation"""
        # Find and clear the is.updating property on the end marker
        for mli in self.filmographyListControl:
            if mli.getProperty('is.end'):
                mli.setBoolProperty('is.updating', False)
                break

    def onFilmographyExtended(self, result):
        """Handle additional filmography items"""
        items = result.get('items', [])
        self.filmographyMore = result.get('more', False)
        self.filmographyTotalSize = result.get('totalSize', 0)

        if not items:
            # No more items, remove the end marker
            self.onFilmographyExtendCanceled()
            return

        # Add new items to our list
        self.filmographyItems.extend(items)

        # Create list items for the new items
        newListItems = []
        for item in items:
            mli = self.createFilmographyListItem(item)
            newListItems.append(mli)

        # Add end marker if there are more items
        if self.filmographyMore:
            end = kodigui.ManagedListItem('')
            end.setBoolProperty('is.end', True)
            newListItems.append(end)

        # Replace the old end marker with new items
        endPos = self.filmographyListControl.size() - 1
        self.filmographyListControl.replaceItem(endPos, newListItems[0])
        if len(newListItems) > 1:
            self.filmographyListControl.addItems(newListItems[1:])

        # Select the first new item
        self.filmographyListControl.selectItem(endPos)

        # Update count
        self.setProperty('filmography.count', str(len(self.filmographyItems)))

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

    def onFilmography(self, result):
        self.setProperty('loading', '')
        
        # Handle the new result format with pagination info
        items = result.get('items', [])
        self.filmographyItems = items
        self.filmographyOffset = result.get('offset', 0)
        self.filmographyTotalSize = result.get('totalSize', len(items))
        self.filmographyMore = result.get('more', False)
        
        self.fillFilmography()

    def createFilmographyListItem(self, item):
        """Create a ManagedListItem for a filmography item"""
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

        # Thumb fallback
        mli.setProperty('thumb.fallback', 'script.plex/thumb_fallbacks/{0}.png'.format(
            item_type in ('show', 'season', 'episode') and 'show' or 'movie'))

        return mli

    def fillFilmography(self):
        """Populate the filmography list with initial items."""
        listItems = []

        for item in self.filmographyItems:
            mli = self.createFilmographyListItem(item)
            listItems.append(mli)

        # Add "load more" end marker if there are more items
        if self.filmographyMore:
            end = kodigui.ManagedListItem('')
            end.setBoolProperty('is.end', True)
            listItems.append(end)

        self.filmographyListControl.reset()
        self.filmographyListControl.addItems(listItems)

        # Update count
        self.setProperty('filmography.count', str(len(self.filmographyItems)))

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
