{% extends "default.xml.tpl" %}
{% block background %}
    <!-- Layer 1a: Black fallback (when no hero color) -->
    <control type="image">
        <visible>String.IsEmpty(Window.Property(hero.color))</visible>
        <posx>0</posx>
        <posy>0</posy>
        <width>1920</width>
        <height>1080</height>
        <texture>script.plex/home/background-fallback_black.png</texture>
    </control>

    <!-- Layer 1b: Colored background from UltraBlurColors (art fades into this) -->
    <control type="image">
        <visible>!String.IsEmpty(Window.Property(hero.color))</visible>
        <posx>0</posx>
        <posy>0</posy>
        <width>1920</width>
        <height>1080</height>
        <fadetime>200</fadetime>
        <colordiffuse>$INFO[Window.Property(hero.color)]</colordiffuse>
        <texture>script.plex/white-square.png</texture>
    </control>

{% endblock %}
{% block content %}
<!-- Hub rows - group with hub.focus slide animations for scrolling -->
<control type="group" id="50">
    <!-- When hero is hidden, slide up to reclaim hero space -->
    <animation effect="slide" end="0,{{ vscale(-350) }}" time="0" condition="String.IsEmpty(Window.Property(show.hero))">Conditional</animation>

    <!-- Slide right when sidebar is expanded (focused) -->
    <animation effect="slide" end="220,0" time="200" tween="quadratic" easing="out" condition="ControlGroup(9000).HasFocus(0)">Conditional</animation>

    <!-- Hub scroll animations - each slides up by one hub height+gap (555px) -->
    <!-- Animations are additive: hub.focus=2 activates both >=1 and >=2, total slide = 2*555 -->
    {% for ai in core.animation_indexes %}
    <animation effect="slide" end="0,{{ vscale(-555) }}" time="200" tween="quadratic" easing="out" condition="Integer.IsGreaterOrEqual(Window.Property(hub.focus),{{ ai.index }})">Conditional</animation>
    {% endfor %}

    <defaultcontrol>400</defaultcontrol>
    <posx>55</posx>
    <posy>{{ vscale(520) }}</posy>
    <width>2050</width>
    <height>{{ vscale(10000) }}</height>

    <!-- DYNAMIC HUB ROWS - Generated from hub_count setting -->
    {% for hub in core.hubs %}
    <control type="group" id="{{ hub.group_id }}">
        <visible>Integer.IsGreater(Container({{ hub.hub_id }}).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>{{ hub.hub_id }}</defaultcontrol>
        <posx>0</posx>
        <posy>{{ vscale(hub.posy) }}</posy>
        <width>1840</width>
        <height>{{ vscale(535) }}</height>
        <control type="image">
            <visible>!String.IsEmpty(Window.Property(bifurcation_lines))</visible>
            <posx>60</posx>
            <posy>{{ vscale(12) }}</posy>
            <width>1680</width>
            <height>{{ vscale(2) }}</height>
            <texture>script.plex/white-square.png</texture>
            <colordiffuse>A0000000</colordiffuse>
        </control>
        <control type="label">
            <posx>60</posx>
            <posy>{{ vscale(50) }}</posy>
            <width>1000</width>
            <height>{{ vscale(38) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>$INFO[Window.Property(hub.{{ hub.hub_id }})]</label>
        </control>
        <control type="list" id="{{ hub.hub_id }}">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1840</width>
            <height>{{ vscale(515) }}</height>
            <onup>{{ hub.prev_hub_id }}</onup>
            <ondown>{{ hub.next_hub_id }}</ondown>
            <onright>noop</onright>
            <onleft>9001</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>

            <!-- Conditional item layouts - Kodi selects layout based on condition attribute -->
            {% include "includes/hub_itemlayout_poster.xml.tpl" %}
            {% include "includes/hub_itemlayout_square.xml.tpl" %}
            {% include "includes/hub_itemlayout_ar16x9.xml.tpl" %}
            <!-- Conditional focused layouts - Kodi selects layout based on condition attribute -->
            {% include "includes/hub_focusedlayout_poster.xml.tpl" %}
            {% include "includes/hub_focusedlayout_square.xml.tpl" %}
            {% include "includes/hub_focusedlayout_ar16x9.xml.tpl" %}
        </control>
    </control>
    {% endfor %}
</control>

<!-- Hero zone mask (high z, covers scrolling hubs) -->
<!-- Art contained in top-right "window" via diffuse, fades to 0 well above posters -->
<control type="group">
    <visible>!String.IsEmpty(Window.Property(show.hero))</visible>
    <posx>0</posx>
    <posy>0</posy>
    <width>1920</width>
    <height>{{ vscale(520) }}</height>
    <!-- Ultrablur color fill - covers scrolling hubs -->
    <control type="image">
        <visible>!String.IsEmpty(Window.Property(hero.color))</visible>
        <posx>0</posx>
        <posy>0</posy>
        <width>1920</width>
        <height>{{ vscale(520) }}</height>
        <colordiffuse>$INFO[Window.Property(hero.color)]</colordiffuse>
        <texture>script.plex/white-square.png</texture>
    </control>
    <!-- Black fallback -->
    <control type="image">
        <visible>String.IsEmpty(Window.Property(hero.color))</visible>
        <posx>0</posx>
        <posy>0</posy>
        <width>1920</width>
        <height>{{ vscale(520) }}</height>
        <texture>script.plex/home/background-fallback_black.png</texture>
    </control>
    <!-- Hero art - full image scaled to fit in top-right area, edges blend into ultrablur -->
    <control type="image">
        <visible>!String.IsEmpty(Window.Property(hero.art))</visible>
        <posx>864</posx>
        <posy>10</posy>
        <width>1056</width>
        <height>{{ vscale(594) }}</height>
        <fadetime>200</fadetime>
        <texture diffuse="script.plex/home/hero-art-diffuse-home.png" background="true">$INFO[Window.Property(hero.art)]</texture>
        <aspectratio aligny="top" alignx="right">keep</aspectratio>
    </control>
</control>

<!-- Hero text section -->
<control type="group" id="150">
    <visible>!String.IsEmpty(Window.Property(show.hero)) + !String.IsEmpty(Window.Property(hero.title))</visible>
    <animation effect="fade" start="0" end="100" time="200" tween="quadratic" easing="out">Visible</animation>
    <animation effect="fade" start="100" end="0" time="200" tween="quadratic" easing="in">Hidden</animation>
    <!-- Slide right when sidebar is expanded -->
    <animation effect="slide" end="220,0" time="200" tween="quadratic" easing="out" condition="ControlGroup(9000).HasFocus(0)">Conditional</animation>
    <posx>0</posx>
    <posy>{{ vscale(130) }}</posy>
    <width>900</width>
    <height>{{ vscale(420) }}</height>
    <!-- Hero title (large) -->
    <control type="label">
        <posx>115</posx>
        <posy>0</posy>
        <width>720</width>
        <height>{{ vscale(60) }}</height>
        <font>font45</font>
        <align>left</align>
        <aligny>center</aligny>
        <textcolor>FFFFFFFF</textcolor>
        <label>$INFO[Window.Property(hero.title)]</label>
    </control>
    <!-- Hero subtitle (episode title / tagline) -->
    <control type="label">
        <visible>!String.IsEmpty(Window.Property(hero.subtitle))</visible>
        <posx>115</posx>
        <posy>{{ vscale(90) }}</posy>
        <width>720</width>
        <height>{{ vscale(40) }}</height>
        <font>font13</font>
        <align>left</align>
        <aligny>center</aligny>
        <textcolor>FFFFFFFF</textcolor>
        <label>$INFO[Window.Property(hero.subtitle)]</label>
    </control>
    <!-- Hero metadata line (year, duration, rating) -->
    <control type="label">
        <visible>!String.IsEmpty(Window.Property(hero.metadata))</visible>
        <posx>115</posx>
        <posy>{{ vscale(145) }}</posy>
        <width>720</width>
        <height>{{ vscale(35) }}</height>
        <font>font12</font>
        <align>left</align>
        <aligny>center</aligny>
        <textcolor>FFFFFFFF</textcolor>
        <label>$INFO[Window.Property(hero.metadata)]</label>
    </control>
    <!-- Hero description / summary -->
    <control type="textbox">
        <visible>!String.IsEmpty(Window.Property(hero.description))</visible>
        <posx>115</posx>
        <posy>{{ vscale(195) }}</posy>
        <width>670</width>
        <height>{{ vscale(180) }}</height>
        <font>font10</font>
        <align>left</align>
        <textcolor>FFFFFFFF</textcolor>
        <label>$INFO[Window.Property(hero.description)]</label>
    </control>
    <!-- Hero cast line -->
    <control type="label">
        <visible>!String.IsEmpty(Window.Property(hero.cast))</visible>
        <posx>115</posx>
        <posy>{{ vscale(390) }}</posy>
        <width>670</width>
        <height>{{ vscale(30) }}</height>
        <font>font10</font>
        <align>left</align>
        <aligny>center</aligny>
        <textcolor>FF777777</textcolor>
        <label>$INFO[Window.Property(hero.cast)]</label>
    </control>
</control>
{% endblock content %}

{% block header %}
<control type="group" id="200">
    <defaultcontrol always="true">201</defaultcontrol>
    <posx>0</posx>
    <posy>0</posy>
    <width>1920</width>
    <height>{{ vscale(135) }}</height>
    <control type="group">
        <visible>Player.HasAudio + String.IsEmpty(Window(10000).Property(script.plex.theme_playing))</visible>
        <posx>438</posx>
        <posy>0</posy>
        <control type="button" id="204">
            <visible>Player.HasAudio + String.IsEmpty(Window(10000).Property(script.plex.theme_playing))</visible>
            <posx>-10</posx>
            <posy>{{ vscale(38) }}</posy>
            <width>260</width>
            <height>{{ vscale(75) }}</height>
            <onleft>9001</onleft>
            <ondown>50</ondown>
            <font>font12</font>
            <textcolor>FFFFFFFF</textcolor>
            <focusedcolor>FF000000</focusedcolor>
            <align>right</align>
            <aligny>center</aligny>
            <texturefocus colordiffuse="FFE5A00D" border="10">script.plex/white-square-rounded.png</texturefocus>
            <texturenofocus>-</texturenofocus>
            <textoffsetx>100</textoffsetx>
            <textoffsety>0</textoffsety>
            <label> </label>
        </control>
        <control type="image">
            <posx>0</posx>
            <posy>{{ vscale(48) }}</posy>
            <width>42</width>
            <height>{{ vscale(42) }}</height>
            <texture>$INFO[Player.Art(thumb)]</texture>
        </control>

        <control type="group">
            <visible>!Control.HasFocus(204)</visible>
            <control type="label">
                <posx>53</posx>
                <posy>{{ vscale(48) }}</posy>
                <width>187</width>
                <height>{{ vscale(20) }}</height>
                <font>font10</font>
                <align>left</align>
                <aligny>center</aligny>
                <textcolor>FFFFFFFF</textcolor>
                <info>MusicPlayer.Artist</info>
            </control>
            <control type="label">
                <posx>53</posx>
                <posy>{{ vscale(72) }}</posy>
                <width>187</width>
                <height>{{ vscale(20) }}</height>
                <font>font10</font>
                <align>left</align>
                <aligny>center</aligny>
                <textcolor>FFFFFFFF</textcolor>
                <info>MusicPlayer.Title</info>
            </control>
        </control>
        <control type="group">
            <visible>Control.HasFocus(204)</visible>
            <control type="label">
                <posx>53</posx>
                <posy>{{ vscale(48) }}</posy>
                <width>187</width>
                <height>{{ vscale(20) }}</height>
                <font>font10</font>
                <align>left</align>
                <aligny>center</aligny>
                <textcolor>FF000000</textcolor>
                <info>MusicPlayer.Artist</info>
            </control>
            <control type="label">
                <posx>53</posx>
                <posy>{{ vscale(72) }}</posy>
                <width>187</width>
                <height>{{ vscale(20) }}</height>
                <font>font10</font>
                <align>left</align>
                <aligny>center</aligny>
                <textcolor>FF000000</textcolor>
                <info>MusicPlayer.Title</info>
            </control>
        </control>

        <control type="progress">
            <description>Progressbar</description>
            <posx>0</posx>
            <posy>{{ vscale(102) }}</posy>
            <width>240</width>
            <height>{{ vscale(1) }}</height>
            <texturebg colordiffuse="9AFFFFFF">script.plex/white-square-1px.png</texturebg>
            <lefttexture>-</lefttexture>
            <midtexture colordiffuse="FFCC7B19">script.plex/white-square-1px.png</midtexture>
            <righttexture>-</righttexture>
            <overlaytexture>-</overlaytexture>
            <info>Player.Progress</info>
        </control>
    </control>
    <control type="label">
        <right>213</right>
        <posy>{{ vscale(35) }}</posy>
        <width>200</width>
        <height>{{ vscale(65) }}</height>
        <font>font12</font>
        <align>right</align>
        <aligny>center</aligny>
        <textcolor>FFFFFFFF</textcolor>
        <label>$INFO[System.Time]</label>
    </control>
    <control type="image">
        <posx>153r</posx>
        <posy>{{ vscale(47.5) }}</posy>
        <width>93</width>
        <height>{{ vscale(43) }}</height>
        <texture>script.plex/home/plex.png</texture>
    </control>
    <!-- Server dropdown (triggered from sidebar server button) -->
    <control type="group">
        <visible>Control.HasFocus(260) | !String.IsEmpty(Window.Property(show.servers))</visible>
        <posx>80</posx>
        <posy>{{ vscale(42) }}</posy>
        <control type="image" id="800">
            <posx>-40</posx>
            <posy>{{ vscale(-40) }}</posy>
            <width>580</width>
            <height>{{ vscale(146) }}</height>
            <texture border="42">script.plex/drop-shadow.png</texture>
        </control>
        <control type="list" id="260">
            <hitrect x="0" y="-10" w="500" h="910" />
            <posx>0</posx>
            <posy>0</posy>
            <width>500</width>
            <height>{{ vscale(900) }}</height>
            <onleft>9001</onleft>
            <onright>9001</onright>
            <onunfocus>SetProperty(show.servers,)</onunfocus>
            <scrolltime>200</scrolltime>
            <orientation>vertical</orientation>
            <pagecontrol>261</pagecontrol>
            <!-- ITEM LAYOUT -->
            <itemlayout height="{{ vscale(100) }}">
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(first))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>500</width>
                    <height>{{ vscale(100) }}</height>
                    <texture colordiffuse="FF1F1F1F" border="10">script.plex/white-square-top-rounded.png</texture>
                </control>
                <control type="image">
                    <visible>String.IsEmpty(ListItem.Property(first)) + String.IsEmpty(ListItem.Property(last)) + String.IsEmpty(ListItem.Property(only))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>500</width>
                    <height>{{ vscale(100) }}</height>
                    <texture colordiffuse="FF1F1F1F">script.plex/white-square.png</texture>
                </control>
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(last))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>500</width>
                    <height>{{ vscale(100) }}</height>
                    <texture flipy="true" colordiffuse="FF1F1F1F" border="10">script.plex/white-square-top-rounded.png</texture>
                </control>
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(only))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>500</width>
                    <height>{{ vscale(100) }}</height>
                    <texture colordiffuse="FF1F1F1F" border="10">script.plex/white-square-top-rounded.png</texture>
                </control>
                <control type="group">
                    <visible>!String.IsEmpty(ListItem.Label2)</visible>
                    <control type="label">
                        <posx>20</posx>
                        <posy>{{ vscale(20) }}</posy>
                        <width>400</width>
                        <height>{{ vscale(35) }}</height>
                        <font>font12</font>
                        <align>left</align>
                        <aligny>center</aligny>
                        <textcolor>FFFFFFFF</textcolor>
                        <label>$INFO[ListItem.Label]</label>
                    </control>
                    <control type="label">
                        <posx>20</posx>
                        <posy>{{ vscale(50) }}</posy>
                        <width>400</width>
                        <height>{{ vscale(35) }}</height>
                        <font>font12</font>
                        <align>left</align>
                        <aligny>center</aligny>
                        <textcolor>FFA0A0A0</textcolor>
                        <label>$INFO[ListItem.Label2]</label>
                    </control>
                </control>
                <control type="label">
                    <visible>String.IsEmpty(ListItem.Label2)</visible>
                    <posx>20</posx>
                    <posy>0</posy>
                    <width>400</width>
                    <height>{{ vscale(100) }}</height>
                    <font>font12</font>
                    <align>left</align>
                    <aligny>center</aligny>
                    <textcolor>FFFFFFFF</textcolor>
                    <label>$INFO[ListItem.Label]</label>
                </control>
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(current))</visible>
                    <posx>449</posx>
                    <posy>{{ vscale(38) }}</posy>
                    <width>31</width>
                    <height>{{ vscale(24) }}</height>
                    <texture colordiffuse="FFFFFFFF">script.plex/home/device/check.png</texture>
                </control>
            </itemlayout>
            <focusedlayout height="{{ vscale(100) }}">
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(first))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>500</width>
                    <height>{{ vscale(100) }}</height>
                    <texture colordiffuse="FFE5A00D" border="10">script.plex/white-square-top-rounded.png</texture>
                </control>
                <control type="image">
                    <visible>String.IsEmpty(ListItem.Property(first)) + String.IsEmpty(ListItem.Property(last)) + String.IsEmpty(ListItem.Property(only))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>500</width>
                    <height>{{ vscale(100) }}</height>
                    <texture colordiffuse="FFE5A00D">script.plex/white-square.png</texture>
                </control>
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(last))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>500</width>
                    <height>{{ vscale(100) }}</height>
                    <texture flipy="true" colordiffuse="FFE5A00D" border="10">script.plex/white-square-top-rounded.png</texture>
                </control>
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(only))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>500</width>
                    <height>{{ vscale(100) }}</height>
                    <texture colordiffuse="FFE5A00D" border="10">script.plex/white-square-top-rounded.png</texture>
                </control>
                <control type="group">
                    <visible>!String.IsEmpty(ListItem.Label2)</visible>
                    <control type="label">
                        <posx>20</posx>
                        <posy>{{ vscale(20) }}</posy>
                        <width>400</width>
                        <height>{{ vscale(35) }}</height>
                        <font>font12</font>
                        <align>left</align>
                        <aligny>center</aligny>
                        <textcolor>FF000000</textcolor>
                        <label>$INFO[ListItem.Label]</label>
                    </control>
                    <control type="label">
                        <posx>20</posx>
                        <posy>{{ vscale(50) }}</posy>
                        <width>400</width>
                        <height>{{ vscale(35) }}</height>
                        <font>font12</font>
                        <align>left</align>
                        <aligny>center</aligny>
                        <textcolor>FFFFFFFF</textcolor>
                        <label>$INFO[ListItem.Label2]</label>
                    </control>
                </control>
                <control type="label">
                    <visible>String.IsEmpty(ListItem.Label2)</visible>
                    <posx>20</posx>
                    <posy>0</posy>
                    <width>400</width>
                    <height>{{ vscale(100) }}</height>
                    <font>font12</font>
                    <align>left</align>
                    <aligny>center</aligny>
                    <textcolor>FF000000</textcolor>
                    <label>$INFO[ListItem.Label]</label>
                </control>
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(current))</visible>
                    <posx>449</posx>
                    <posy>{{ vscale(38) }}</posy>
                    <width>31</width>
                    <height>{{ vscale(24) }}</height>
                    <texture colordiffuse="FF000000">script.plex/home/device/check.png</texture>
                </control>
            </focusedlayout>
        </control>
        <control type="scrollbar" id="261">
            <posx>492</posx>
            <posy>{{ vscale(20) }}</posy>
            <width>8</width>
            <height>{{ vscale(860) }}</height>
            <texturesliderbackground>-</texturesliderbackground>
            <texturesliderbar colordiffuse="20FFFFFF" border="4">script.plex/white-square.png</texturesliderbar>
            <texturesliderbarfocus colordiffuse="20E5A00D" border="4">script.plex/white-square.png</texturesliderbarfocus>
            <textureslidernib>-</textureslidernib>
            <textureslidernibfocus>-</textureslidernibfocus>
            <pulseonselect>false</pulseonselect>
            <orientation>vertical</orientation>
            <showonepage>false</showonepage>
            <onleft>250</onleft>
        </control>
    </control>

    <!-- User options dropdown (triggered from sidebar user button) -->
    <control type="group" id="901">
        <visible>Control.HasFocus(250) | !String.IsEmpty(Window.Property(show.options))</visible>
        <posx>80</posx>
        <posy>{{ vscale(42) }}</posy>
        <control type="image" id="801">
            <posx>-40</posx>
            <posy>{{ vscale(-40) }}</posy>
            <width>380</width>
            <height>{{ vscale(146) }}</height>
            <texture border="42">script.plex/drop-shadow.png</texture>
        </control>
        <control type="list" id="250">
            <hitrect x="0" y="-10" w="300" h="422" />
            <posx>0</posx>
            <posy>0</posy>
            <width>300</width>
            <height>{{ vscale(422) }}</height>
            <onleft>9001</onleft>
            <onunfocus>SetProperty(show.options,)</onunfocus>
            <scrolltime>200</scrolltime>
            <orientation>vertical</orientation>
            <!-- ITEM LAYOUT -->
            <itemlayout height="{{ vscale(66) }}">
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(first))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>300</width>
                    <height>{{ vscale(66) }}</height>
                    <texture colordiffuse="FF1F1F1F" border="10">script.plex/white-square-top-rounded.png</texture>
                </control>
                <control type="image">
                    <visible>String.IsEmpty(ListItem.Property(first)) + String.IsEmpty(ListItem.Property(last)) + String.IsEmpty(ListItem.Property(only))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>300</width>
                    <height>{{ vscale(66) }}</height>
                    <texture colordiffuse="FF1F1F1F">script.plex/white-square.png</texture>
                </control>
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(last))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>300</width>
                    <height>{{ vscale(66) }}</height>
                    <texture flipy="true" colordiffuse="FF1F1F1F" border="10">script.plex/white-square-top-rounded.png</texture>
                </control>
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(only))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>300</width>
                    <height>{{ vscale(66) }}</height>
                    <texture colordiffuse="FF1F1F1F" border="10">script.plex/white-square-rounded.png</texture>
                </control>
                <control type="label">
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>300</width>
                    <height>{{ vscale(66) }}</height>
                    <font>font12</font>
                    <align>center</align>
                    <aligny>center</aligny>
                    <textcolor>FFFFFFFF</textcolor>
                    <label>$INFO[ListItem.Label]</label>
                </control>
            </itemlayout>
            <focusedlayout height="{{ vscale(66) }}">
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(first))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>300</width>
                    <height>{{ vscale(66) }}</height>
                    <texture colordiffuse="FFE5A00D" border="10">script.plex/white-square-top-rounded.png</texture>
                </control>
                <control type="image">
                    <visible>String.IsEmpty(ListItem.Property(first)) + String.IsEmpty(ListItem.Property(last)) + String.IsEmpty(ListItem.Property(only))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>300</width>
                    <height>{{ vscale(66) }}</height>
                    <texture colordiffuse="FFE5A00D">script.plex/white-square.png</texture>
                </control>
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(last))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>300</width>
                    <height>{{ vscale(66) }}</height>
                    <texture flipy="true" colordiffuse="FFE5A00D" border="10">script.plex/white-square-top-rounded.png</texture>
                </control>
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(only))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>300</width>
                    <height>{{ vscale(66) }}</height>
                    <texture colordiffuse="FFE5A00D" border="10">script.plex/white-square-rounded.png</texture>
                </control>
                <control type="label">
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>300</width>
                    <height>{{ vscale(66) }}</height>
                    <font>font12</font>
                    <align>center</align>
                    <aligny>center</aligny>
                    <textcolor>FF000000</textcolor>
                    <label>$INFO[ListItem.Label]</label>
                </control>
            </focusedlayout>
        </control>
    </control>
</control>

<control type="group">
    <visible>!String.IsEmpty(Window.Property(search.dialog))</visible>
    <control type="group" >
        <visible>!String.IsEmpty(Window.Property(search.dialog.hasresults))</visible>
        <control type="image">
            <posx>0</posx>
            <posy>0</posy>
            <width>1920</width>
            <height>1080</height>
            <texture>script.plex/home/background-fallback.png</texture>
            {% include "includes/scale_background.xml.tpl" %}
        </control>
        <control type="image">
            <posx>0</posx>
            <posy>0</posy>
            <width>1920</width>
            <height>1080</height>
            <texture background="true">$INFO[Window.Property(background)]</texture>
            {% include "includes/scale_background.xml.tpl" %}
        </control>
    </control>
    <control type="image">
        <posx>0</posx>
        <posy>0</posy>
        <width>1920</width>
        <height>1080</height>
        <texture colordiffuse="99606060">script.plex/white-square.png</texture>
        {% include "includes/scale_background.xml.tpl" %}
    </control>
</control>

<control type="group">
    <visible>String.IsEmpty(Window.Property(busy)) + !String.IsEmpty(Window.Property(no.content))</visible>
    <posx>0</posx>
    <posy>{{ vscale(465) }}</posy>
    <control type="label">
        <scroll>false</scroll>
        <posx>60</posx>
        <posy>0</posy>
        <width>1800</width>
        <height>{{ vscale(35) }}</height>
        <font>font13</font>
        <align>center</align>
        <textcolor>FFFFFFFF</textcolor>
        <label>[B]$ADDON[script.plexmod 32452][/B]</label>
    </control>
    <control type="label">
        <scroll>false</scroll>
        <posx>60</posx>
        <posy>{{ vscale(60) }}</posy>
        <width>1800</width>
        <height>{{ vscale(35) }}</height>
        <font>font13</font>
        <align>center</align>
        <textcolor>FFCCCCCC</textcolor>
        <label>$ADDON[script.plexmod 32453]</label>
    </control>
</control>

<control type="group">
    <visible>String.IsEmpty(Window.Property(busy)) + !String.IsEmpty(Window.Property(loading.content))</visible>
    <posx>0</posx>
    <posy>{{ vscale(465) }}</posy>
    <control type="label">
        <scroll>false</scroll>
        <posx>60</posx>
        <posy>0</posy>
        <width>1800</width>
        <height>{{ vscale(35) }}</height>
        <font>font13</font>
        <align>center</align>
        <textcolor>FFFFFFFF</textcolor>
        <label>[B]$ADDON[script.plexmod 34020][/B]</label>
    </control>
    <control type="label">
        <scroll>false</scroll>
        <posx>60</posx>
        <posy>{{ vscale(60) }}</posy>
        <width>1800</width>
        <height>{{ vscale(35) }}</height>
        <font>font13</font>
        <align>center</align>
        <textcolor>FFCCCCCC</textcolor>
        <label>[B]$ADDON[script.plexmod 34021][/B]</label>
    </control>
</control>

<control type="group">
    <visible>!String.IsEmpty(Window.Property(busy))</visible>
    <animation effect="fade" start="0" end="100">Visible</animation>
    <posx>840</posx>
    <posy>{{ vscale(465) }}</posy>
    <control type="image">
        <posx>0</posx>
        <posy>0</posy>
        <width>240</width>
        <height>{{ vscale(150) }}</height>
        <texture>script.plex/busy-back.png</texture>
        <colordiffuse>A0FFFFFF</colordiffuse>
    </control>
    <control type="image">
        <posx>75</posx>
        <posy>{{ vscale(56) }}</posy>
        <width>90</width>
        <height>{{ vscale(38) }}</height>
        <texture diffuse="script.plex/busy-diffuse.png">script.plex/busy.gif</texture>
    </control>
</control>
<!-- ========== SIDEBAR RAIL ========== -->
<!-- Renders last for z-order: paints on top of all content -->
<control type="group" id="9000">
    <posx>0</posx>
    <posy>0</posy>
    <width>300</width>
    <height>1080</height>

    <!-- No background panels - sidebar is transparent, content pushes right when expanded -->

    <!-- User avatar area at top -->
    <control type="group">
        <posx>0</posx>
        <posy>{{ vscale(30) }}</posy>
        <width>300</width>
        <height>{{ vscale(80) }}</height>
        <!-- Avatar image (always visible) -->
        <control type="image">
            <posx>18</posx>
            <posy>{{ vscale(10) }}</posy>
            <width>44</width>
            <height>{{ vscale(44) }}</height>
            <texture diffuse="script.plex/home/avatar-diffuse.png" fallback="script.plex/gray-square.png">$INFO[Window.Property(user.avatar)]</texture>
        </control>
        <!-- Avatar letter fallback (always visible when no avatar) -->
        <control type="label">
            <visible>String.IsEmpty(Window.Property(user.avatar))</visible>
            <posx>18</posx>
            <posy>{{ vscale(10) }}</posy>
            <width>44</width>
            <height>{{ vscale(44) }}</height>
            <font>font12</font>
            <align>center</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[B]$INFO[Window.Property(user.avatar.letter)][/B]</label>
        </control>
        <!-- Username label (expanded only) -->
        <control type="label">
            <visible>ControlGroup(9000).HasFocus(0)</visible>
            <animation effect="fade" start="0" end="100" time="200">Visible</animation>
            <animation effect="fade" start="100" end="0" time="200">Hidden</animation>
            <posx>75</posx>
            <posy>{{ vscale(10) }}</posy>
            <width>210</width>
            <height>{{ vscale(44) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>$INFO[Window.Property(user.name)]</label>
        </control>
    </control>

    <!-- Section list (sidebar items) -->
    <control type="fixedlist" id="9001">
        <posx>0</posx>
        <posy>{{ vscale(120) }}</posy>
        <width>300</width>
        <height>{{ vscale(860) }}</height>
        <onright>50</onright>
        <onup>noop</onup>
        <ondown>noop</ondown>
        <scrolltime>200</scrolltime>
        <orientation>vertical</orientation>
        <focusposition>0</focusposition>
        <movement>6</movement>
        <pagecontrol>0</pagecontrol>
        <!-- SIDEBAR ITEM LAYOUT (unfocused list) -->
        <itemlayout height="{{ vscale(72) }}">
            <control type="group">
                <visible>!String.IsEmpty(ListItem.Property(item))</visible>
                <posx>0</posx>
                <posy>0</posy>
                <width>300</width>
                <height>{{ vscale(72) }}</height>
                <!-- Active indicator bar (left edge) -->
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(is.active))</visible>
                    <posx>0</posx>
                    <posy>{{ vscale(16) }}</posy>
                    <width>3</width>
                    <height>{{ vscale(40) }}</height>
                    <texture>script.plex/white-square.png</texture>
                    <colordiffuse>FFE5A00D</colordiffuse>
                </control>
                <!-- Section icon (always visible) -->
                <control type="image">
                    <posx>26</posx>
                    <posy>{{ vscale(22) }}</posy>
                    <width>28</width>
                    <height>{{ vscale(28) }}</height>
                    <texture>$INFO[ListItem.Icon]</texture>
                    <colordiffuse>99FFFFFF</colordiffuse>
                </control>
                <!-- Active icon overlay (orange tint) -->
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(is.active))</visible>
                    <posx>26</posx>
                    <posy>{{ vscale(22) }}</posy>
                    <width>28</width>
                    <height>{{ vscale(28) }}</height>
                    <texture>$INFO[ListItem.Icon]</texture>
                    <colordiffuse>FFE5A00D</colordiffuse>
                </control>
                <!-- Section label (expanded only) -->
                <control type="label">
                    <visible>ControlGroup(9000).HasFocus(0)</visible>
                    <posx>68</posx>
                    <posy>0</posy>
                    <width>220</width>
                    <height>{{ vscale(72) }}</height>
                    <font>font10</font>
                    <align>left</align>
                    <aligny>center</aligny>
                    <textcolor>99FFFFFF</textcolor>
                    <label>$INFO[ListItem.Label]</label>
                </control>
            </control>
        </itemlayout>
        <!-- SIDEBAR FOCUSED ITEM LAYOUT -->
        <focusedlayout height="{{ vscale(72) }}">
            <control type="group">
                <visible>!String.IsEmpty(ListItem.Property(item))</visible>
                <posx>0</posx>
                <posy>0</posy>
                <width>300</width>
                <height>{{ vscale(72) }}</height>
                <!-- Focus highlight background (only when list itself has focus) -->
                <control type="image">
                    <visible>Control.HasFocus(9001)</visible>
                    <posx>8</posx>
                    <posy>{{ vscale(6) }}</posy>
                    <width>284</width>
                    <height>{{ vscale(60) }}</height>
                    <texture border="10">script.plex/white-square-rounded.png</texture>
                    <colordiffuse>33FFFFFF</colordiffuse>
                </control>
                <!-- Active indicator bar (left edge) -->
                <control type="image">
                    <visible>!String.IsEmpty(ListItem.Property(is.active))</visible>
                    <posx>0</posx>
                    <posy>{{ vscale(16) }}</posy>
                    <width>3</width>
                    <height>{{ vscale(40) }}</height>
                    <texture>script.plex/white-square.png</texture>
                    <colordiffuse>FFE5A00D</colordiffuse>
                </control>
                <!-- Section icon - orange when focused or active -->
                <control type="image">
                    <visible>Control.HasFocus(9001) | !String.IsEmpty(ListItem.Property(is.active))</visible>
                    <posx>26</posx>
                    <posy>{{ vscale(22) }}</posy>
                    <width>28</width>
                    <height>{{ vscale(28) }}</height>
                    <texture>$INFO[ListItem.Icon]</texture>
                    <colordiffuse>FFE5A00D</colordiffuse>
                </control>
                <!-- Section icon - normal when not focused and not active -->
                <control type="image">
                    <visible>!Control.HasFocus(9001) + String.IsEmpty(ListItem.Property(is.active))</visible>
                    <posx>26</posx>
                    <posy>{{ vscale(22) }}</posy>
                    <width>28</width>
                    <height>{{ vscale(28) }}</height>
                    <texture>$INFO[ListItem.Icon]</texture>
                    <colordiffuse>99FFFFFF</colordiffuse>
                </control>
                <!-- Section label (expanded only) -->
                <control type="label">
                    <visible>ControlGroup(9000).HasFocus(0)</visible>
                    <posx>68</posx>
                    <posy>0</posy>
                    <width>220</width>
                    <height>{{ vscale(72) }}</height>
                    <font>font10</font>
                    <align>left</align>
                    <aligny>center</aligny>
                    <textcolor>FFFFFFFF</textcolor>
                    <focusedcolor>FFFFFFFF</focusedcolor>
                    <label>$INFO[ListItem.Label]</label>
                </control>
            </control>
        </focusedlayout>
    </control>

    <!-- Server button at bottom of sidebar -->
    <control type="button" id="201">
        <posx>10</posx>
        <posy>{{ vscale(990) }}</posy>
        <width>60</width>
        <height>{{ vscale(40) }}</height>
        <font>font10</font>
        <textcolor>00000000</textcolor>
        <focusedcolor>00000000</focusedcolor>
        <disabledcolor>00000000</disabledcolor>
        <align>center</align>
        <aligny>center</aligny>
        <onup>9001</onup>
        <onright>50</onright>
        <ondown>202</ondown>
        <texturefocus colordiffuse="FFE5A00D" border="10">script.plex/white-square-rounded.png</texturefocus>
        <texturenofocus>-</texturenofocus>
        <label> </label>
        <onunfocus condition="!String.IsEmpty(Window.Property(show.servers))">SetFocus(260)</onunfocus>
    </control>
    <!-- Server connection icon overlay -->
    <control type="group">
        <posx>10</posx>
        <posy>{{ vscale(990) }}</posy>
        <width>60</width>
        <height>{{ vscale(40) }}</height>
        <control type="image">
            <posx>15</posx>
            <posy>{{ vscale(5) }}</posy>
            <width>30</width>
            <height>{{ vscale(30) }}</height>
            <texture>$INFO[Window.Property(server.icon)]</texture>
        </control>
    </control>
    <!-- User button at bottom of sidebar -->
    <control type="button" id="202">
        <posx>10</posx>
        <posy>{{ vscale(1035) }}</posy>
        <width>60</width>
        <height>{{ vscale(40) }}</height>
        <font>font10</font>
        <textcolor>00000000</textcolor>
        <focusedcolor>00000000</focusedcolor>
        <align>center</align>
        <aligny>center</aligny>
        <onup>201</onup>
        <onright>50</onright>
        <texturefocus colordiffuse="FFE5A00D" border="10">script.plex/white-square-rounded.png</texturefocus>
        <texturenofocus>-</texturenofocus>
        <label> </label>
        <onunfocus condition="!String.IsEmpty(Window.Property(show.options))">SetFocus(250)</onunfocus>
    </control>
</control>
{% endblock header %}
