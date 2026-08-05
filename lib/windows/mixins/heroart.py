from __future__ import absolute_import

from lib import util


class HeroArtMixin:
    """Mixin for setting hero art, UltraBlurColors, and clear logos on pre-play/episode screens."""

    # the hero wordmark is wider and shorter than the one the detail screens use
    HERO_LOGO_DIM = (600, 110)

    def setHeroArt(self, obj):
        """Set hero.art, hero.color, and hero.clearlogo from a media object."""
        art = obj.get('art') or obj.get('parentArt') or obj.get('grandparentArt')
        if art:
            url = art.asTranscodedImageURL(1920, 1080, blur=0, opacity=100)
            self.setProperty('hero.art', url)
        else:
            self.setProperty('hero.art', '')

        # Set hero background color from UltraBlurColors child XML element
        hero_color = ''
        if obj.data is not None:
            ubc = obj.data.find('UltraBlurColors')
            if ubc is not None:
                hero_color = ubc.attrib.get('bottomLeft') or ubc.attrib.get('topLeft') or ''
                if hero_color:
                    hero_color = 'FF' + hero_color.lstrip('#')
        self.setProperty('hero.color', hero_color)

        # Clear logo
        self.setProperty('hero.clearlogo', util.clearLogoFrom(obj, *self.HERO_LOGO_DIM))
