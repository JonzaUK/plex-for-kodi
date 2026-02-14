{% extends "default.xml.tpl" %}
{% block background %}
    <!-- Layer 1: Solid dark background base -->
    <control type="image">
        <posx>0</posx>
        <posy>0</posy>
        <width>1920</width>
        <height>1080</height>
        <texture>script.plex/home/background-fallback_black.png</texture>
    </control>

    <!-- Layer 2: Hero art - top-right 70% quadrant with diffuse gradient mask -->
    <!-- Diffuse mask fades to 0% alpha on left edge and bottom edge -->
    <!-- Art updates dynamically via Window.Property(hero.art) on hub scroll -->
    <control type="image">
        <visible>!String.IsEmpty(Window.Property(hero.art))</visible>
        <posx>576</posx>
        <posy>0</posy>
        <width>1344</width>
        <height>{{ vscale(756) }}</height>
        <fadetime>200</fadetime>
        <texture diffuse="script.plex/home/hero-art-diffuse.png" background="true">$INFO[Window.Property(hero.art)]</texture>
        <aspectratio aligny="top" alignx="right">keep</aspectratio>
    </control>
{% endblock %}
{% block content %}
<!-- Hero section - FIXED POSITION (outside GroupList) -->
<control type="group" id="150">
    <visible>!String.IsEmpty(Window.Property(show.hero)) + !String.IsEmpty(Window.Property(hero.title))</visible>
    <animation effect="fade" start="0" end="100" time="200" tween="quadratic" easing="out">Visible</animation>
    <animation effect="fade" start="100" end="0" time="200" tween="quadratic" easing="in">Hidden</animation>
    <posx>0</posx>
    <posy>{{ vscale(130) }}</posy>
    <width>900</width>
    <height>{{ vscale(420) }}</height>
    <!-- Hero title (large) -->
    <control type="label">
        <posx>60</posx>
        <posy>0</posy>
        <width>800</width>
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
        <posx>60</posx>
        <posy>{{ vscale(90) }}</posy>
        <width>800</width>
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
        <posx>60</posx>
        <posy>{{ vscale(145) }}</posy>
        <width>800</width>
        <height>{{ vscale(35) }}</height>
        <font>font12</font>
        <align>left</align>
        <aligny>center</aligny>
        <textcolor>FFB0B0B0</textcolor>
        <label>$INFO[Window.Property(hero.metadata)]</label>
    </control>
    <!-- Hero description / summary -->
    <control type="textbox">
        <visible>!String.IsEmpty(Window.Property(hero.description))</visible>
        <posx>60</posx>
        <posy>{{ vscale(195) }}</posy>
        <width>750</width>
        <height>{{ vscale(180) }}</height>
        <font>font10</font>
        <align>left</align>
        <textcolor>FF999999</textcolor>
        <label>$INFO[Window.Property(hero.description)]</label>
    </control>
    <!-- Hero cast line -->
    <control type="label">
        <visible>!String.IsEmpty(Window.Property(hero.cast))</visible>
        <posx>60</posx>
        <posy>{{ vscale(390) }}</posy>
        <width>750</width>
        <height>{{ vscale(30) }}</height>
        <font>font10</font>
        <align>left</align>
        <aligny>center</aligny>
        <textcolor>FF777777</textcolor>
        <label>$INFO[Window.Property(hero.cast)]</label>
    </control>
</control>

<!-- Hub rows - fixed viewport at bottom, hero always visible above -->
<control type="grouplist" id="50">
    <!-- No slide animations - grouplist internal scroll handles all row navigation -->
    <!-- Hero zone stays permanently anchored above -->
    <!-- When hero is hidden, slide up to reclaim space -->
    <animation effect="slide" end="0,{{ vscale(-360) }}" time="0" condition="String.IsEmpty(Window.Property(show.hero))">Conditional</animation>

    <defaultcontrol>400</defaultcontrol>
    <posx>0</posx>
    <posy>{{ vscale(490) }}</posy>
    <width>2130</width>
    <height>{{ vscale(core.grouplist_height_expanded) }}</height>
    <itemgap>20</itemgap>
    <orientation>vertical</orientation>
    <usecontrolcoords>true</usecontrolcoords>
    <scrolltime tween="quadratic" easing="out">200</scrolltime>

    <!-- DYNAMIC HUB ROWS - Generated from hub_count setting -->
    {% for hub in core.hubs %}
    <control type="group" id="{{ hub.group_id }}">
        <visible>Integer.IsGreater(Container({{ hub.hub_id }}).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>{{ hub.hub_id }}</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(535) }}</height>
        <control type="image">
            <visible>!String.IsEmpty(Window.Property(bifurcation_lines))</visible>
            <posx>60</posx>
            <posy>{{ vscale(12) }}</posy>
            <width>1800</width>
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
            <width>1920</width>
            <height>{{ vscale(515) }}</height>
            <onup>{{ hub.prev_hub_id }}</onup>
            <ondown>{{ hub.next_hub_id }}</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
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

    <control type="group">
        <!-- Dummy focus catcher for non-visible content -->
        <posx>0</posx>
        <posy>0</posy>
        <width>1920</width>
        <height>{{ vscale(10) }}</height>
        <control type="label">
            <width>1920</width>
            <height>{{ vscale(10) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>00FFFFFF</textcolor>
            <label> </label>
        </control>
    </control>
</control>
{% endblock content %}

{% block header %}
<control type="group" id="200">
    <animation effect="slide" end="0,{{ vscale(-135) }}" time="200" tween="sine" easing="inout" condition="!String.IsEmpty(Window(10000).Property(script.plex.off.sections)) + !ControlGroup(200).HasFocus(0)">Conditional</animation>
    <defaultcontrol always="true">201</defaultcontrol>
    <posx>0</posx>
    <posy>0</posy>
    <width>1920</width>
    <height>{{ vscale(135) }}</height>
    <!-- Top gradient overlay for text readability on light backgrounds -->
    <control type="image">
        <posx>0</posx>
        <posy>0</posy>
        <width>1920</width>
        <height>{{ vscale(200) }}</height>
        <texture>script.plex/home/top-gradient.png</texture>
    </control>
    <control type="group">
        <visible>String.IsEmpty(Window.Property(search.dialog))</visible>
        <!-- Search button -->
        <control type="button" id="203">
            <animation effect="zoom" start="100" end="144" time="100" center="80,{{ vscale(67.5) }}" reversible="false">Focus</animation>
            <animation effect="zoom" start="144" end="100" time="100" center="80,{{ vscale(67.5) }}" reversible="false">UnFocus</animation>
            <posx>60</posx>
            <posy>{{ vscale(47.5) }}</posy>
            <width>40</width>
            <height>{{ vscale(40) }}</height>
            <ondown>50</ondown>
            <onright>101</onright>
            <font>font12</font>
            <focusedcolor>FF000000</focusedcolor>
            <texturefocus colordiffuse="FFE5A00D">script.plex/buttons/search-focus.png</texturefocus>
            <texturenofocus colordiffuse="99FFFFFF">script.plex/buttons/search.png</texturenofocus>
            <label> </label>
        </control>
        <!-- Navigation tab bar -->
        <control type="list" id="101">
            <posx>120</posx>
            <posy>{{ vscale(35) }}</posy>
            <width>1200</width>
            <height>{{ vscale(65) }}</height>
            <onup>noop</onup>
            <ondown>50</ondown>
            <onleft>203</onleft>
            <onright>201</onright>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <!-- NAV TAB ITEM LAYOUT -->
            <itemlayout width="200">
                <control type="group">
                    <visible>!String.IsEmpty(ListItem.Property(item))</visible>
                    <posx>5</posx>
                    <posy>{{ vscale(5) }}</posy>
                    <width>190</width>
                    <height>{{ vscale(55) }}</height>
                    <!-- Active section underline -->
                    <control type="image">
                        <visible>!String.IsEmpty(ListItem.Property(is.active))</visible>
                        <posx>30</posx>
                        <posy>{{ vscale(48) }}</posy>
                        <width>130</width>
                        <height>{{ vscale(3) }}</height>
                        <texture>script.plex/white-square.png</texture>
                        <colordiffuse>FFFFFFFF</colordiffuse>
                    </control>
                    <control type="label">
                        <scroll>false</scroll>
                        <posx>5</posx>
                        <posy>0</posy>
                        <width>180</width>
                        <height>{{ vscale(55) }}</height>
                        <font>font10</font>
                        <align>center</align>
                        <aligny>center</aligny>
                        <textcolor>AAFFFFFF</textcolor>
                        <label>[B]$INFO[ListItem.Label][/B]</label>
                    </control>
                </control>
            </itemlayout>
            <!-- NAV TAB FOCUSED LAYOUT -->
            <focusedlayout width="200">
                <control type="group">
                    <visible>!String.IsEmpty(ListItem.Property(item))</visible>
                    <posx>5</posx>
                    <posy>{{ vscale(5) }}</posy>
                    <width>190</width>
                    <height>{{ vscale(55) }}</height>
                    <!-- Focused underline -->
                    <control type="image">
                        <visible>Control.HasFocus(101)</visible>
                        <animation effect="fade" end="0" reversible="false">UnFocus</animation>
                        <posx>30</posx>
                        <posy>{{ vscale(48) }}</posy>
                        <width>130</width>
                        <height>{{ vscale(3) }}</height>
                        <texture>script.plex/white-square.png</texture>
                        <colordiffuse>FFFFFFFF</colordiffuse>
                    </control>
                    <!-- Active section underline (when nav bar not focused) -->
                    <control type="image">
                        <visible>!Control.HasFocus(101) + !String.IsEmpty(ListItem.Property(is.active))</visible>
                        <posx>30</posx>
                        <posy>{{ vscale(48) }}</posy>
                        <width>130</width>
                        <height>{{ vscale(3) }}</height>
                        <texture>script.plex/white-square.png</texture>
                        <colordiffuse>FFFFFFFF</colordiffuse>
                    </control>
                    <control type="label">
                        <scroll>Control.HasFocus(101)</scroll>
                        <posx>5</posx>
                        <posy>0</posy>
                        <width>180</width>
                        <height>{{ vscale(55) }}</height>
                        <font>font10</font>
                        <align>center</align>
                        <aligny>center</aligny>
                        <textcolor>FFFFFFFF</textcolor>
                        <focusedcolor>FFFFFFFF</focusedcolor>
                        <label>[B]$INFO[ListItem.Label][/B]</label>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
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
            <onleft>203</onleft>
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
    <!-- Server/User icon buttons - aligned with nav bar -->
    <control type="group">
        <posx>840</posx>
        <posy>{{ vscale(42) }}</posy>
        <width>700</width>
        <height>{{ vscale(1046) }}</height>
        <control type="grouplist">
            <posx>0</posx>
            <posy>0</posy>
            <width>700</width>
            <height>{{ vscale(1046) }}</height>
            <ondown>50</ondown>
            <onleft>101</onleft>
            <align>right</align>
            <itemgap>5</itemgap>
            <orientation>horizontal</orientation>
            <scrolltime tween="quadratic" easing="out">200</scrolltime>
            <usecontrolcoords>true</usecontrolcoords>
            <!-- Server icon button -->
            <control type="button" id="201">
                <width>50</width>
                <height>{{ vscale(50) }}</height>
                <font>font10</font>
                <textcolor>00000000</textcolor>
                <focusedcolor>00000000</focusedcolor>
                <disabledcolor>00000000</disabledcolor>
                <align>center</align>
                <aligny>center</aligny>
                <texturefocus colordiffuse="FFE5A00D" border="19">script.plex/white-square-rounded.png</texturefocus>
                <texturenofocus>-</texturenofocus>
                <label> </label>
                <onunfocus condition="!String.IsEmpty(Window.Property(show.servers))">SetFocus(260)</onunfocus>
            </control>
            <!-- Server connection icon overlay -->
            <control type="group">
                <posx>-50</posx>
                <width>50</width>
                <height>{{ vscale(50) }}</height>
                <control type="image">
                    <posx>10</posx>
                    <posy>{{ vscale(10) }}</posy>
                    <width>30</width>
                    <height>{{ vscale(30) }}</height>
                    <texture>$INFO[Window.Property(server.icon)]</texture>
                </control>
                <control type="image">
                    <posx>4</posx>
                    <posy>{{ vscale(30) }}</posy>
                    <width>14</width>
                    <height>{{ vscale(13) }}</height>
                    <texture>$INFO[Window.Property(server.iconmod)]</texture>
                </control>
                <!-- secure + local -->
                <control type="image">
                    <visible>!String.IsEmpty(Window.Property(server.iconmod))</visible>
                    <posx>4</posx>
                    <posy>{{ vscale(16) }}</posy>
                    <width>14</width>
                    <height>{{ vscale(12) }}</height>
                    <texture>$INFO[Window.Property(server.iconmod2)]</texture>
                    <colordiffuse>FFEEEEEE</colordiffuse>
                </control>
                <!-- local -->
                <control type="image">
                    <visible>String.IsEmpty(Window.Property(server.iconmod))</visible>
                    <posx>4</posx>
                    <posy>{{ vscale(30) }}</posy>
                    <width>14</width>
                    <height>{{ vscale(12) }}</height>
                    <texture>$INFO[Window.Property(server.iconmod2)]</texture>
                    <colordiffuse>FFEEEEEE</colordiffuse>
                </control>
                <!-- Server dropdown -->
                <control type="group">
                    <visible>Control.HasFocus(260) | !String.IsEmpty(Window.Property(show.servers))</visible>
                    <posx>-480</posx>
                    <posy>{{ vscale(70) }}</posy>
                    <control type="image" id="800">
                        <posx>-40</posx>
                        <posy>{{ vscale(-40) }}</posy>
                        <width>580</width>
                        <height>{{ vscale(146) }}</height>
                        <texture border="42">script.plex/drop-shadow.png</texture>
                    </control>
                    <control type="image">
                        <posx>498</posx>
                        <posy>{{ vscale(-13) }}</posy>
                        <width>15</width>
                        <height>{{ vscale(13) }}</height>
                        <texture flipy="true">script.plex/indicators/dropdown-triangle.png</texture>
                        <colordiffuse>FF1F1F1F</colordiffuse>
                    </control>
                    <control type="list" id="260">
                        <hitrect x="0" y="-10" w="500" h="910" />
                        <posx>0</posx>
                        <posy>0</posy>
                        <width>500</width>
                        <height>{{ vscale(900) }}</height>
                        <onleft>203</onleft>
                        <onright>202</onright>
                        <onunfocus>SetProperty(show.servers,)</onunfocus>
                        <scrolltime>200</scrolltime>
                        <orientation>vertical</orientation>
                        <pagecontrol>261</pagecontrol>
                        <!-- ITEM LAYOUT ########################################## -->
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

                            <!-- not status + not current + local -->
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(status)) + String.IsEmpty(ListItem.Property(current)) + !String.IsEmpty(ListItem.Property(local)) </visible>
                                <posx>456</posx>
                                <posy>{{ vscale(38) }}</posy>
                                <width>24</width>
                                <height>{{ vscale(21) }}</height>
                                <texture>script.plex/home/device/home.png</texture>
                            </control>
                            <!-- not status + current + local -->
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(status)) + !String.IsEmpty(ListItem.Property(current)) + !String.IsEmpty(ListItem.Property(local)) </visible>
                                <posx>415</posx>
                                <posy>{{ vscale(38) }}</posy>
                                <width>24</width>
                                <height>{{ vscale(21) }}</height>
                                <texture>script.plex/home/device/home.png</texture>
                            </control>
                            <!-- status + not current + local -->
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(status)) + String.IsEmpty(ListItem.Property(current)) + !String.IsEmpty(ListItem.Property(local)) </visible>
                                <posx>415</posx>
                                <posy>{{ vscale(38) }}</posy>
                                <width>24</width>
                                <height>{{ vscale(21) }}</height>
                                <texture>script.plex/home/device/home.png</texture>
                            </control>
                            <!-- status + current + local -->
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(status)) + !String.IsEmpty(ListItem.Property(current)) + !String.IsEmpty(ListItem.Property(local)) </visible>
                                <posx>374</posx>
                                <posy>{{ vscale(38) }}</posy>
                                <width>24</width>
                                <height>{{ vscale(21) }}</height>
                                <texture>script.plex/home/device/home.png</texture>
                            </control>
                            <!-- status + not current -->
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(status)) + String.IsEmpty(ListItem.Property(current))</visible>
                                <posx>456</posx>
                                <posy>{{ vscale(38) }}</posy>
                                <width>24</width>
                                <height>{{ vscale(24) }}</height>
                                <texture>script.plex/home/device/$INFO[ListItem.Property(status)]</texture>
                            </control>
                            <!-- status + current -->
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(status)) + !String.IsEmpty(ListItem.Property(current))</visible>
                                <posx>415</posx>
                                <posy>{{ vscale(38) }}</posy>
                                <width>24</width>
                                <height>{{ vscale(24) }}</height>
                                <texture>script.plex/home/device/$INFO[ListItem.Property(status)]</texture>
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

                            <!-- not status + not current + local -->
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(status)) + String.IsEmpty(ListItem.Property(current)) + !String.IsEmpty(ListItem.Property(local)) </visible>
                                <posx>456</posx>
                                <posy>{{ vscale(38) }}</posy>
                                <width>24</width>
                                <height>{{ vscale(21) }}</height>
                                <texture>script.plex/home/device/home.png</texture>
                            </control>
                            <!-- not status + current + local -->
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(status)) + !String.IsEmpty(ListItem.Property(current)) + !String.IsEmpty(ListItem.Property(local)) </visible>
                                <posx>415</posx>
                                <posy>{{ vscale(38) }}</posy>
                                <width>24</width>
                                <height>{{ vscale(21) }}</height>
                                <texture>script.plex/home/device/home.png</texture>
                            </control>
                            <!-- status + not current + local -->
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(status)) + String.IsEmpty(ListItem.Property(current)) + !String.IsEmpty(ListItem.Property(local)) </visible>
                                <posx>415</posx>
                                <posy>{{ vscale(38) }}</posy>
                                <width>24</width>
                                <height>{{ vscale(21) }}</height>
                                <texture>script.plex/home/device/home.png</texture>
                            </control>
                            <!-- status + current + local -->
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(status)) + !String.IsEmpty(ListItem.Property(current)) + !String.IsEmpty(ListItem.Property(local)) </visible>
                                <posx>374</posx>
                                <posy>{{ vscale(38) }}</posy>
                                <width>24</width>
                                <height>{{ vscale(21) }}</height>
                                <texture>script.plex/home/device/home.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(status)) + String.IsEmpty(ListItem.Property(current))</visible>
                                <posx>456</posx>
                                <posy>{{ vscale(38) }}</posy>
                                <width>24</width>
                                <height>{{ vscale(24) }}</height>
                                <texture>script.plex/home/device/focus-$INFO[ListItem.Property(status)]</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(status)) + !String.IsEmpty(ListItem.Property(current))</visible>
                                <posx>415</posx>
                                <posy>{{ vscale(38) }}</posy>
                                <width>24</width>
                                <height>{{ vscale(24) }}</height>
                                <texture>script.plex/home/device/focus-$INFO[ListItem.Property(status)]</texture>
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
            </control>
            <!-- User icon button -->
            <control type="button" id="202">
                <width>50</width>
                <height>{{ vscale(50) }}</height>
                <font>font10</font>
                <textcolor>00000000</textcolor>
                <focusedcolor>00000000</focusedcolor>
                <align>center</align>
                <aligny>center</aligny>
                <texturefocus colordiffuse="FFE5A00D" border="19">script.plex/white-square-rounded.png</texturefocus>
                <texturenofocus>-</texturenofocus>
                <label> </label>
                <onunfocus condition="!String.IsEmpty(Window.Property(show.options))">SetFocus(250)</onunfocus>
            </control>
            <!-- User avatar overlay -->
            <control type="group">
                <posx>-50</posx>
                <width>50</width>
                <height>{{ vscale(50) }}</height>
                <control type="image">
                    <posx>10</posx>
                    <posy>{{ vscale(10) }}</posy>
                    <width>30</width>
                    <height>{{ vscale(30) }}</height>
                    <texture diffuse="script.plex/home/avatar-diffuse.png" fallback="script.plex/gray-square.png">$INFO[Window.Property(user.avatar)]</texture>
                </control>
                <control type="label">
                    <visible>String.IsEmpty(Window.Property(user.avatar))</visible>
                    <posx>10</posx>
                    <posy>{{ vscale(10) }}</posy>
                    <width>30</width>
                    <height>{{ vscale(30) }}</height>
                    <font>font10</font>
                    <align>center</align>
                    <aligny>center</aligny>
                    <textcolor>FFFFFFFF</textcolor>
                    <label>[B]$INFO[Window.Property(user.avatar.letter)][/B]</label>
                </control>
                <control type="image">
                    <visible>!String.IsEmpty(Window(10000).Property(script.plex.update_available))</visible>
                    <posx>2</posx>
                    <posy>{{ vscale(30) }}</posy>
                    <width>14</width>
                    <height>{{ vscale(12) }}</height>
                    <texture>script.plex/home/device/update_small.png</texture>
                    <colordiffuse>FF00CC00</colordiffuse>
                </control>
                <!-- User options dropdown -->
                <control type="group" id="901">
                    <visible>Control.HasFocus(250) | !String.IsEmpty(Window.Property(show.options))</visible>
                    <posx>-280</posx>
                    <posy>{{ vscale(70) }}</posy>
                    <control type="image" id="801">
                        <posx>-40</posx>
                        <posy>{{ vscale(-40) }}</posy>
                        <width>380</width>
                        <height>{{ vscale(146) }}</height>
                        <texture border="42">script.plex/drop-shadow.png</texture>
                    </control>
                    <control type="image">
                        <posx>293</posx>
                        <posy>{{ vscale(-13) }}</posy>
                        <width>15</width>
                        <height>{{ vscale(13) }}</height>
                        <texture flipy="true">script.plex/indicators/dropdown-triangle.png</texture>
                        <colordiffuse>FF1F1F1F</colordiffuse>
                    </control>
                    <control type="list" id="250">
                        <hitrect x="0" y="-10" w="300" h="422" />
                        <posx>0</posx>
                        <posy>0</posy>
                        <width>300</width>
                        <height>{{ vscale(422) }}</height>
                        <onleft>201</onleft>
                        <onunfocus>SetProperty(show.options,)</onunfocus>
                        <scrolltime>200</scrolltime>
                        <orientation>vertical</orientation>
                        <!-- ITEM LAYOUT ########################################## -->
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
{% endblock header %}
