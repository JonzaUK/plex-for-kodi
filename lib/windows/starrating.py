# coding=utf-8
from __future__ import absolute_import

import xbmcgui

from lib import util
from . import kodigui

T = util.T

HALF_STAR_LABELS = [
    '',
    u'\u00BD / 5',       # ½
    '1 / 5',
    u'1\u00BD / 5',      # 1½
    '2 / 5',
    u'2\u00BD / 5',      # 2½
    '3 / 5',
    u'3\u00BD / 5',      # 3½
    '4 / 5',
    u'4\u00BD / 5',      # 4½
    '5 / 5',
]


class StarRatingDialog(kodigui.BaseDialog):
    xmlFile = 'script-plex-star_rating.xml'
    path = util.ADDON.getAddonInfo('path')
    theme = 'Main'
    res = '1080i'
    width = 1920
    height = 1080

    STAR_BUTTON_ID = 200
    OK_BUTTON_ID = 201
    CLEAR_BUTTON_ID = 202

    def __init__(self, *args, **kwargs):
        kodigui.BaseDialog.__init__(self, *args, **kwargs)
        self.rating = kwargs.get('current_rating', 0)
        self.result = None

    def onFirstInit(self):
        self.updateStars()
        self.setFocusId(self.STAR_BUTTON_ID)

    def onAction(self, action):
        controlID = self.getFocusId()
        actionID = action.getId()

        if actionID in (xbmcgui.ACTION_PREVIOUS_MENU, xbmcgui.ACTION_NAV_BACK):
            self.result = None
            self.doClose()
            return

        if controlID == self.STAR_BUTTON_ID:
            if actionID == xbmcgui.ACTION_MOVE_RIGHT:
                if self.rating < 10:
                    self.rating += 1
                    self.updateStars()
                return
            elif actionID == xbmcgui.ACTION_MOVE_LEFT:
                if self.rating > 0:
                    self.rating -= 1
                    self.updateStars()
                return

        kodigui.BaseDialog.onAction(self, action)

    def onClick(self, controlID):
        if controlID == self.STAR_BUTTON_ID or controlID == self.OK_BUTTON_ID:
            self.result = self.rating
            self.doClose()
        elif controlID == self.CLEAR_BUTTON_ID:
            self.result = 0
            self.doClose()

    def updateStars(self):
        self.setProperty('star.rating', str(self.rating))
        if self.rating > 0:
            self.setProperty('star.label', HALF_STAR_LABELS[self.rating])
        else:
            self.setProperty('star.label', '- / 5')


def show(current_rating=0):
    """Show the star rating dialog.

    Returns:
        int 1-10: the selected rating
        int 0: clear rating
        None: cancelled
    """
    w = StarRatingDialog.open(current_rating=current_rating)
    result = w.result
    del w
    util.garbageCollect()
    return result
