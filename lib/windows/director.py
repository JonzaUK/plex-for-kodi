# coding=utf-8
"""
Director Detail Window - Shows director biography, photo, and filmography
"""

from __future__ import absolute_import

import datetime

from kodi_six import xbmc
from kodi_six import xbmcgui

from lib import backgroundthread
from lib import util
from lib.util import T
from plexnet import util as plexnetUtil
from . import busy
from . import dropdown
from . import kodigui
from . import opener
from . import search
from . import windowutils

# Pagination settings
FILMOGRAPHY_PAGE_SIZE = 10

# Discover hub settings (Not in Library hubs - one per credit type)
DISCOVER_HUB_SLOTS = 6
NOT_IN_LIBRARY_BATCH_SIZE = 10


class DirectorDetailsTask(backgroundthread.Task):
    """Background task to fetch director details from the server"""

    def __init__(self, role, callback):
        super(DirectorDetailsTask, self).__init__()
        self.role = role
        self.callback = callback

    def run(self):
        if self.isCanceled():
            return

        details = self.role.getDetails()

        if not self.isCanceled():
            self.callback(details)


class DirectorFilmographyTask(backgroundthread.Task):
    """Background task to fetch director's filmography with pagination"""

    def __init__(self, role, media_type, callback, start=0, size=FILMOGRAPHY_PAGE_SIZE):
        super(DirectorFilmographyTask, self).__init__()
        self.role = role
        self.media_type = media_type
        self.callback = callback
        self.start = start
        self.size = size

    def run(self):
        if self.isCanceled():
            return

        result = self.role.getFilmography(
            self.media_type, start=self.start, size=self.size
        )

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
            util.DEBUG_LOG("ExtendFilmographyTask failed: {0}".format(e))
            if self.canceledCallback:
                self.canceledCallback()


class DiscoverItem(object):
    """Lightweight wrapper around discover API credit metadata."""

    def __init__(self, credit_data):
        meta = credit_data.get("Metadata", {})
        self.title = meta.get("title", "")
        self.year = str(meta.get("year", ""))
        self.type = meta.get("type", "movie")
        self.ratingKey = meta.get("ratingKey", "")
        self.guid = "plex://{0}/{1}".format(self.type, self.ratingKey)
        self.thumb = meta.get("thumb", "")
        self.art = meta.get("art", "")
        self.role = credit_data.get("role", "")
        self.order = credit_data.get("order", 999)
        self.is_discover = True


class DiscoverCreditsTask(backgroundthread.Task):
    """Background task to fetch full filmography from Plex discover API,
    then batch-check which items are in the user's library.
    Returns all credit groups with library presence info."""

    def __init__(self, role, server, callback):
        super(DiscoverCreditsTask, self).__init__()
        self.role = role
        self.server = server
        self.callback = callback

    def run(self):
        if self.isCanceled():
            return

        credit_groups = self.role.getDiscoverCredits(credit_type="director")
        if self.isCanceled() or not credit_groups:
            self.callback([], set(), set())
            return

        discover_hubs = []
        all_guids = []
        director_guids = set()

        for group_type, credits in credit_groups:
            group_items = []
            for credit in credits:
                item = DiscoverItem(credit)
                if item.ratingKey:
                    group_items.append(item)
                    all_guids.append(item.guid)
                    if group_type.lower() == "director":
                        director_guids.add(item.guid)
            if group_items:
                discover_hubs.append((group_type, group_items))

        if self.isCanceled():
            self.callback([], set(), set())
            return

        unique_guids = list(set(all_guids))
        from plexnet import media as plexmedia

        library_guids = plexmedia.Role.checkLibraryPresence(self.server, unique_guids)

        if not self.isCanceled():
            self.callback(discover_hubs, library_guids, director_guids)


class DirectorWindow(kodigui.ControlledWindow, windowutils.UtilMixin):
    xmlFile = "script-plex-director.xml"
    path = util.ADDON.getAddonInfo("path")
    theme = "Main"
    res = "1080i"
    width = 1920
    height = 1080

    THUMB_DIM = util.scaleResolution(300, 300)
    POSTER_DIM = util.scaleResolution(244, 361)

    FILMOGRAPHY_LIST_ID = 400
    DISCOVER_LIST_BASE_ID = 401
    DISCOVER_GROUP_BASE_ID = 501
    HOME_BUTTON_ID = 201
    SEARCH_BUTTON_ID = 202
    PLAYER_STATUS_BUTTON_ID = 204

    def __init__(self, *args, **kwargs):
        kodigui.ControlledWindow.__init__(self, *args, **kwargs)
        self.role = kwargs.get("role")
        self.directorDetails = None
        self.filmographyItems = []
        self.filmographyAllItems = []
        self.filmographyByGuid = {}
        self.filmographyOffset = 0
        self.filmographyTotalSize = 0
        self.filmographyMore = False
        self.discoverListControls = []
        self.discoverDirectorGuids = set()
        self.libraryGuids = set()
        self.tasks = backgroundthread.Tasks()
        self.exitCommand = None
        self.initialized = False

    def onFirstInit(self):
        self.filmographyListControl = kodigui.ManagedControlList(
            self, self.FILMOGRAPHY_LIST_ID, 5
        )

        self.discoverListControls = []
        for i in range(DISCOVER_HUB_SLOTS):
            list_id = self.DISCOVER_LIST_BASE_ID + i
            try:
                control = kodigui.ManagedControlList(self, list_id, 5)
                self.discoverListControls.append(control)
            except Exception:
                break

        from plexnet import plexapp

        local_server = plexapp.SERVERMANAGER.selectedServer
        if local_server and self.role.server != local_server:
            self.role.server = local_server

        self.setProperty("director.name", self.role.tag or "")
        if self.role.thumb:
            self.setProperty(
                "director.thumb", self.role.thumb.asTranscodedImageURL(*self.THUMB_DIM)
            )

        self.fetchDirectorDetails()
        self.fetchFilmography()
        self.fetchDiscoverCredits()

        self.initialized = True

    def onReInit(self):
        pass

    def onAction(self, action):
        try:
            controlID = self.getFocusId()
            if action in (xbmcgui.ACTION_NAV_BACK, xbmcgui.ACTION_PREVIOUS_MENU):
                self.doClose()
                return

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

        if mli.getProperty("is.end") and not mli.getProperty("is.updating"):
            mli.setBoolProperty("is.updating", True)
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
        elif (
            self.DISCOVER_LIST_BASE_ID
            <= controlID
            < self.DISCOVER_LIST_BASE_ID + DISCOVER_HUB_SLOTS
        ):
            self.openDiscoverItem(controlID)

    def onFocus(self, controlID):
        if (
            self.FILMOGRAPHY_LIST_ID
            <= controlID
            <= self.DISCOVER_LIST_BASE_ID + DISCOVER_HUB_SLOTS
        ):
            self.setProperty("hub.focus", str(controlID - self.FILMOGRAPHY_LIST_ID))

    def doClose(self, **kw):
        self.tasks.kill()
        kodigui.ControlledWindow.doClose(self)

    def fetchDirectorDetails(self):
        task = DirectorDetailsTask(self.role, self.onDirectorDetails)
        self.tasks.add(task)
        backgroundthread.BGThreader.addTask(task)

    def fetchFilmography(self):
        self.setProperty("loading", "1")
        task = DirectorFilmographyTask(
            self.role, None, self.onFilmography, start=0, size=FILMOGRAPHY_PAGE_SIZE
        )
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
            canceledCallback=self.onFilmographyExtendCanceled,
        )
        self.tasks.add(task)
        backgroundthread.BGThreader.addTask(task)

    def onFilmographyExtendCanceled(self):
        """Handle extension task cancellation"""
        for mli in self.filmographyListControl:
            if mli.getProperty("is.end"):
                mli.setBoolProperty("is.updating", False)
                break

    def onFilmographyExtended(self, result):
        """Handle additional filmography items"""
        items = result.get("items", [])
        self.filmographyMore = result.get("more", False)
        self.filmographyTotalSize = result.get("totalSize", 0)

        if not items:
            self.onFilmographyExtendCanceled()
            return

        self.filmographyAllItems.extend(items)

        newUniqueItems, newByGuid = self.groupFilmographyByGuid(
            items, existingByGuid=self.filmographyByGuid
        )
        self.filmographyItems.extend(newUniqueItems)

        newListItems = []
        for item in newUniqueItems:
            mli = self.createFilmographyListItem(item)
            newListItems.append(mli)

        if self.filmographyMore:
            end = kodigui.ManagedListItem("")
            end.setBoolProperty("is.end", True)
            newListItems.append(end)

        endPos = self.filmographyListControl.size() - 1
        self.filmographyListControl.replaceItem(endPos, newListItems[0])
        if len(newListItems) > 1:
            self.filmographyListControl.addItems(newListItems[1:])

        self.filmographyListControl.selectItem(endPos)

        self.setProperty("filmography.count", str(len(self.filmographyItems)))

    def onDirectorDetails(self, details):
        if not details:
            util.DEBUG_LOG("DirectorWindow: No details returned for director")
            return

        util.DEBUG_LOG(
            "DirectorWindow: Got director details - name={}, summary_len={}, birthDate={}".format(
                details.get("name", ""),
                len(details.get("summary", "")),
                details.get("birthDate", ""),
            )
        )

        self.directorDetails = details
        self.setProperty("director.name", details.get("name", ""))
        self.setProperty("director.summary", details.get("summary", ""))
        self.setProperty("director.birthPlace", details.get("birthPlace", ""))

        birthDate = details.get("birthDate", "")
        deathDate = details.get("deathDate", "")

        if birthDate:
            self.setProperty("director.birthDate", self.formatDate(birthDate))
            age = self.calculateAge(birthDate, deathDate)
            if age:
                self.setProperty("director.age", str(age))

        if deathDate:
            self.setProperty("director.deathDate", self.formatDate(deathDate))
            self.setProperty("director.deceased", "1")

        thumb = details.get("thumb", "")
        if thumb:
            self.setProperty(
                "director.thumb",
                self.role.server.getImageTranscodeURL(thumb, *self.THUMB_DIM),
            )

        tag_key = details.get("tagKey", "")
        if tag_key and not getattr(self.role, "tagKey", None):
            self.role.tagKey = tag_key
            self.fetchDiscoverCredits()

    def fetchDiscoverCredits(self):
        """Fetch full filmography from discover API and check library presence"""
        if not hasattr(self.role, "tagKey") or not self.role.tagKey:
            util.DEBUG_LOG("DirectorWindow: No tagKey, skipping discover credits")
            return

        task = DiscoverCreditsTask(self.role, self.role.server, self.onDiscoverCredits)
        self.tasks.add(task)
        backgroundthread.BGThreader.addTask(task)

    def onDiscoverCredits(self, discover_hubs, library_guids, director_guids):
        """Handle discover credits results — populate one hub per credit type with not-in-library items"""
        self.libraryGuids = library_guids
        self.discoverDirectorGuids = director_guids

        slot = 0
        for group_type, items in discover_hubs:
            if slot >= DISCOVER_HUB_SLOTS:
                break
            not_in_library = [item for item in items if item.guid not in library_guids]
            if not_in_library:
                label = "{0} - {1}".format(
                    T(32479, "Not in Library"), group_type.title()
                )
                self.fillDiscoverHub(slot, not_in_library, label)
                slot += 1

        util.DEBUG_LOG(
            "DirectorWindow: Discover credits: {0} groups, {1} in library, {2} hubs populated".format(
                len(discover_hubs), len(library_guids), slot
            )
        )

        self.filterFilmographyToDirectorCredits()

    def filterFilmographyToDirectorCredits(self):
        """Remove non-director credits from the filmography list using discover data"""
        if not self.discoverDirectorGuids or not self.filmographyItems:
            return

        original_count = len(self.filmographyItems)
        filtered = []
        for item in self.filmographyItems:
            guid = self.getItemGuid(item)
            if not guid or guid in self.discoverDirectorGuids:
                filtered.append(item)

        if len(filtered) < original_count:
            util.DEBUG_LOG(
                "DirectorWindow: Filtered filmography from {0} to {1} (director credits only)".format(
                    original_count, len(filtered)
                )
            )
            self.filmographyItems = filtered
            self.fillFilmography()

    def fillDiscoverHub(self, slot, items, label):
        """Populate a discover hub slot with items and set its label"""
        if slot >= len(self.discoverListControls):
            return

        listControl = self.discoverListControls[slot]
        listItems = []
        for item in items:
            mli = self.createNotInLibraryListItem(item)
            listItems.append(mli)

        listControl.reset()
        listControl.addItems(listItems)
        self.setProperty("discover.hub.{0}.label".format(slot), label)

    def createNotInLibraryListItem(self, item):
        """Create a ManagedListItem from a DiscoverItem"""
        mli = kodigui.ManagedListItem(
            item.title, item.year, thumbnailImage=item.thumb, data_source=item
        )
        mli.setProperty("media.type", item.type)
        mli.setProperty(
            "thumb.fallback",
            "script.plex/thumb_fallbacks/{0}.png".format(
                "show" if item.type == "show" else "movie"
            ),
        )
        if item.role:
            mli.setProperty("role", item.role)
        return mli

    def openDiscoverItem(self, controlID):
        """Open a discover item in the watchlist preplay screen"""
        slot = controlID - self.DISCOVER_LIST_BASE_ID
        if slot < 0 or slot >= len(self.discoverListControls):
            return

        mli = self.discoverListControls[slot].getSelectedItem()
        if not mli or not mli.dataSource:
            return

        item = mli.dataSource
        if not item.ratingKey:
            return

        from plexnet import util as pnUtil

        discover_server = pnUtil.SERVERMANAGER.getDiscoverServer()
        if not discover_server:
            util.DEBUG_LOG("DirectorWindow: No discover server available")
            return

        self.processCommand(
            opener.open(
                item.ratingKey,
                server=discover_server,
                from_watchlist=True,
                external_item=True,
            )
        )

    def onFilmography(self, result):
        self.setProperty("loading", "")

        items = result.get("items", [])
        self.filmographyAllItems = items
        self.filmographyOffset = result.get("offset", 0)
        self.filmographyTotalSize = result.get("totalSize", len(items))
        self.filmographyMore = result.get("more", False)

        self.filmographyItems, self.filmographyByGuid = self.groupFilmographyByGuid(
            items
        )

        self.fillFilmography()

    def createFilmographyListItem(self, item):
        """Create a ManagedListItem for a filmography item"""
        title = item.title if hasattr(item, "title") else item.get("title", "")
        year = ""
        if hasattr(item, "year"):
            year = str(item.year) if item.year else ""

        thumb = ""
        if hasattr(item, "thumb") and item.thumb:
            thumb = item.thumb.asTranscodedImageURL(*self.POSTER_DIM)
        elif hasattr(item, "defaultThumb") and item.defaultThumb:
            thumb = item.defaultThumb.asTranscodedImageURL(*self.POSTER_DIM)

        mli = kodigui.ManagedListItem(
            title, year, thumbnailImage=thumb, data_source=item
        )

        item_type = (
            item.type
            if hasattr(item, "type")
            else item.TYPE
            if hasattr(item, "TYPE")
            else ""
        )
        mli.setProperty("media.type", item_type)

        if hasattr(item, "isWatched") and item.isWatched:
            mli.setProperty("watched", "1")

        mli.setProperty(
            "thumb.fallback",
            "script.plex/thumb_fallbacks/{0}.png".format(
                item_type in ("show", "season", "episode") and "show" or "movie"
            ),
        )

        return mli

    def fillFilmography(self):
        """Populate the filmography list with initial items."""
        listItems = []

        for item in self.filmographyItems:
            mli = self.createFilmographyListItem(item)
            listItems.append(mli)

        if self.filmographyMore:
            end = kodigui.ManagedListItem("")
            end.setBoolProperty("is.end", True)
            listItems.append(end)

        self.filmographyListControl.reset()
        self.filmographyListControl.addItems(listItems)

        self.setProperty("filmography.count", str(len(self.filmographyItems)))

    def filmographyItemClicked(self):
        mli = self.filmographyListControl.getSelectedItem()
        if not mli or not mli.dataSource:
            return

        item = mli.dataSource
        guid = self.getItemGuid(item)

        versions = self.filmographyByGuid.get(guid, [item]) if guid else [item]

        if len(versions) > 1:
            selectedItem = self.showVersionPicker(
                versions, item.type if hasattr(item, "type") else "movie"
            )
            if selectedItem:
                self.processCommand(opener.open(selectedItem))
        else:
            self.processCommand(opener.open(item))

    def searchButtonClicked(self):
        self.processCommand(search.dialog(self))

    def formatDate(self, dateStr):
        """Format a date string (YYYY-MM-DD) to a display format"""
        if not dateStr:
            return ""

        try:
            parts = dateStr.split("-")
            if len(parts) == 3:
                year, month, day = int(parts[0]), int(parts[1]), int(parts[2])
                dt = datetime.date(year, month, day)
                return dt.strftime("%B %d, %Y")
        except (ValueError, IndexError):
            pass

        return dateStr

    def calculateAge(self, birthDateStr, deathDateStr=None):
        """Calculate age from birth date, optionally to death date"""
        if not birthDateStr:
            return None

        try:
            parts = birthDateStr.split("-")
            if len(parts) != 3:
                return None

            birthYear, birthMonth, birthDay = (
                int(parts[0]),
                int(parts[1]),
                int(parts[2]),
            )
            birthDate = datetime.date(birthYear, birthMonth, birthDay)

            if deathDateStr:
                parts = deathDateStr.split("-")
                if len(parts) == 3:
                    endYear, endMonth, endDay = (
                        int(parts[0]),
                        int(parts[1]),
                        int(parts[2]),
                    )
                    endDate = datetime.date(endYear, endMonth, endDay)
                else:
                    endDate = datetime.date.today()
            else:
                endDate = datetime.date.today()

            age = endDate.year - birthDate.year
            if (endDate.month, endDate.day) < (birthDate.month, birthDate.day):
                age -= 1

            return age
        except (ValueError, IndexError):
            return None

    def getItemGuid(self, item):
        """Get the GUID from a filmography item"""
        if hasattr(item, "guid") and item.guid:
            return str(item.guid)
        return None

    def groupFilmographyByGuid(self, items, existingByGuid=None):
        """
        Group filmography items by GUID to handle multi-library duplicates.
        """
        byGuid = existingByGuid if existingByGuid is not None else {}
        uniqueItems = []
        seenGuids = set(byGuid.keys()) if existingByGuid else set()

        for item in items:
            guid = self.getItemGuid(item)

            if guid:
                if guid not in byGuid:
                    byGuid[guid] = []
                byGuid[guid].append(item)

                if guid not in seenGuids:
                    seenGuids.add(guid)
                    uniqueItems.append(item)
            else:
                uniqueItems.append(item)

        for guid, versions in byGuid.items():
            if len(versions) > 1:
                versions.sort(key=lambda v: self.getItemBitrate(v), reverse=True)
                for i, uitem in enumerate(uniqueItems):
                    if self.getItemGuid(uitem) == guid:
                        uniqueItems[i] = versions[0]
                        break

        return uniqueItems, byGuid

    def getItemBitrate(self, item):
        """Get the bitrate from an item's media info"""
        try:
            if hasattr(item, "media") and item.media:
                for media in item.media:
                    if hasattr(media, "bitrate"):
                        return int(media.bitrate) if media.bitrate else 0
        except (ValueError, TypeError, AttributeError):
            pass
        return 0

    def getItemResolution(self, item):
        """Get the video resolution from an item's media info"""
        try:
            if hasattr(item, "media") and item.media:
                for media in item.media:
                    if hasattr(media, "videoResolution") and media.videoResolution:
                        return str(media.videoResolution)
        except (AttributeError, TypeError):
            pass
        return ""

    def getItemLibraryTitle(self, item):
        """Get the library section title for an item"""
        if hasattr(item, "getLibrarySectionTitle"):
            return item.getLibrarySectionTitle()
        elif hasattr(item, "librarySectionTitle"):
            return str(item.librarySectionTitle)
        return ""

    def formatVersionLabel(self, item, media_type="movie"):
        """Format a version label like watchlist: 'Library, Resolution (Bitrate)'"""
        library = self.getItemLibraryTitle(item) or T(34090, "Unknown")

        if media_type == "movie":
            resolution = self.getItemResolution(item)
            bitrate = self.getItemBitrate(item)

            if resolution:
                res_str = (
                    "{}p".format(resolution)
                    if "k" not in str(resolution).lower()
                    else resolution.upper()
                )
            else:
                res_str = T(34090, "Unknown")

            if bitrate:
                bitrate_str = plexnetUtil.bitrateToString(bitrate * 1000)
                return "{}, {} ({})".format(library, res_str, bitrate_str)
            else:
                return "{}, {}".format(library, res_str)
        else:
            return library

    def showVersionPicker(self, versions, media_type="movie"):
        """Show a dropdown to pick which version to open"""
        options = []

        for idx, item in enumerate(versions):
            label = self.formatVersionLabel(item, media_type)
            options.append({"key": idx, "display": label})

        choice = dropdown.showDropdown(
            options=options,
            pos=(660, 441),
            close_direction="none",
            set_dropdown_prop=False,
            header=T(34091, "Choose Version"),
            align_items="left",
        )

        if choice is not None:
            return versions[choice["key"]]
        return None
