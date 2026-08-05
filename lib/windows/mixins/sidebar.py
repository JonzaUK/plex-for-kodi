from __future__ import absolute_import

from plexnet import plexapp

from lib import util
from lib.util import T
from .. import kodigui
from .. import opener


class SidebarMixin:
    """Mixin for populating and handling sidebar navigation in pre-play/episode screens."""

    SIDEBAR_SECTION_LIST_ID = 9001
    SIDEBAR_USER_BUTTON_ID = 202
    SIDEBAR_SERVER_BUTTON_ID = 201

    def initSidebar(self):
        """Populate sidebar with user info, library sections, and server info."""
        self.sidebarSectionList = kodigui.ManagedControlList(self, self.SIDEBAR_SECTION_LIST_ID, 15)

        # User info
        title = plexapp.ACCOUNT.title or plexapp.ACCOUNT.username or ' '
        self.setProperty('user.name', title)
        self.setProperty('user.avatar', plexapp.ACCOUNT.thumb)
        self.setProperty('user.avatar.letter', title[0].upper())

        # Server info
        if plexapp.SERVERMANAGER.selectedServer:
            self.setProperty('server.name', plexapp.SERVERMANAGER.selectedServer.name)
            self.setProperty('server.icon', 'script.plex/home/device/plex.png')
        else:
            self.setProperty('server.name', T(32338, 'No Servers Found'))
            self.setProperty('server.icon', 'script.plex/home/device/error.png')

        # Populate sections
        items = []
        try:
            sections = plexapp.SERVERMANAGER.selectedServer.library.sections()
        except Exception:
            sections = []

        for section in sections:
            mli = kodigui.ManagedListItem(
                section.title,
                iconImage='script.plex/home/type/{0}.png'.format(section.type),
                data_source=section
            )
            mli.setProperty('item', '1')
            items.append(mli)

        # Mark the section that matches this video's library
        video = getattr(self, 'video', None) or getattr(self, 'show_', None)
        if video:
            lib_section_id = video.getLibrarySectionId()
            for mli in items:
                if mli.dataSource and str(getattr(mli.dataSource, 'key', '')) == str(lib_section_id):
                    mli.setProperty('is.active', '1')
                    break

        self.sidebarSectionList.reset()
        self.sidebarSectionList.addItems(items)

    def sidebarSectionClicked(self):
        """Handle click on a sidebar section item — navigate to that library."""
        mli = self.sidebarSectionList.getSelectedItem()
        if not mli or not mli.dataSource:
            return

        section = mli.dataSource
        self.processCommand(opener.sectionClicked(section))
