{% extends "default.xml.tpl" %}
{% block content %}
<control type="grouplist" id="50">
    <animation effect="slide" end="0,{{ vscale(-135) }}" time="200" tween="sine" easing="inout" condition="!String.IsEmpty(Window(10000).Property(script.plex.off.sections))">Conditional</animation>

    <!-- 501 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),0) + Control.IsVisible(500)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-345) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 502 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),1) + Control.IsVisible(501)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-540) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 503 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),2) + Control.IsVisible(502)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-540) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 504 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),3) + Control.IsVisible(503)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-540) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 505 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),4) + Control.IsVisible(504)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-540) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 506 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),5) + Control.IsVisible(505)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-400) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 507 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),6) + Control.IsVisible(506)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-440) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 508 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),7) + Control.IsVisible(507)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-540) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 509 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),8) + Control.IsVisible(508)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-540) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 510 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),9) + Control.IsVisible(509)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-400) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 511 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),10) + Control.IsVisible(510)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-400) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 512 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),11) + Control.IsVisible(511)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-400) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 520 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),12) + Control.IsVisible(512)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-400) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 521 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),13) + Control.IsVisible(520)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-400) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 522 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),14) + Control.IsVisible(521)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-400) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 513 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),15) + Control.IsVisible(522)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-400) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 514 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),16) + Control.IsVisible(513)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-540) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 515 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),17) + Control.IsVisible(514)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-540) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 516 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),18) + Control.IsVisible(515)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-540) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 517 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),19) + Control.IsVisible(516)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-540) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 518 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),20) + Control.IsVisible(517)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-540) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 519 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),21) + Control.IsVisible(518)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-540) }}" time="200" tween="sine" easing="inout"/>
    </animation>

    <!-- 523 Focus animation -->
    <animation type="Conditional" condition="Integer.IsGreater(Window.Property(hub.focus),22) + Control.IsVisible(519)" reversible="true">
        <effect type="slide" end="0,{{ vscale(-540) }}" time="200" tween="sine" easing="inout"/>
    </animation>


    <defaultcontrol>101</defaultcontrol>
    <posx>0</posx>
    <posy>{{ vscale(96) }}</posy>
    <width>2130</width>
    <height>{{ vscale(5540) }}</height>
    <itemgap>20</itemgap>
    <orientation>vertical</orientation>
    <usecontrolcoords>true</usecontrolcoords>
    <scrolltime tween="quadratic" easing="out">200</scrolltime>
    <control type="group" id="100">
        <width>2130</width>
        <height>{{ vscale(200) }}</height>
        <control type="fixedlist" id="101">
            <animation effect="slide" end="-110,0" time="200" tween="sine" easing="inout" condition="Integer.IsGreater(Container(101).Position,3)">Conditional</animation>
            <animation effect="slide" end="-110,0" time="200" tween="sine" easing="inout" condition="Integer.IsGreater(Container(101).Position,4)">Conditional</animation>-->
            <posx>-300</posx>
            <posy>0</posy>
            <width>2430</width>
            <height>{{ vscale(240) }}</height>
            <onup condition="!Player.HasAudio">203</onup>
            <onup condition="Player.HasAudio">204</onup>
            <ondown>400</ondown>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <focusposition>4</focusposition>
            <movement>3</movement>
            <pagecontrol>102</pagecontrol>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="298">
                <control type="group">
                    <visible>!String.IsEmpty(ListItem.Property(item))</visible>
                    <posx>60</posx>
                    <posy>{{ vscale(40) }}</posy>
                    <width>298</width>
                    <height>{{ vscale(200) }}</height>
                    <control type="group">
                        <posx>0</posx>
                        <posy>0</posy>
                        <width>238</width>
                        <height>{{ vscale(117) }}</height>
                        <control type="image">
                            <visible>String.IsEmpty(ListItem.Property(is.home))</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>238</width>
                            <height>{{ vscale(117) }}</height>
                            <texture border="10">script.plex/white-square-rounded.png</texture>
                            <colordiffuse>FF1F1F1F</colordiffuse>
                        </control>

                        <control type="image">
                            <visible>String.IsEmpty(ListItem.Property(is.home))</visible>
                            <posx>84</posx>
                            <posy>{{ vscale(23.5) }}</posy>
                            <width>70</width>
                            <height>{{ vscale(70) }}</height>
                            <texture>$INFO[ListItem.Thumb]</texture>
                            <aspectratio>keep</aspectratio>
                        </control>
                        <control type="image">
                            <visible>!String.IsEmpty(ListItem.Property(is.home))</visible>
                            <posx>74</posx>
                            <posy>{{ vscale(13.5) }}</posy>
                            <width>90</width>
                            <height>{{ vscale(90) }}</height>
                            <texture>script.plex/home/type/home.png</texture>
                            <aspectratio>keep</aspectratio>
                        </control>
                        <control type="image">
                            <visible>!String.IsEmpty(ListItem.Property(is.mapped))</visible>
                            <posx>230</posx>
                            <posy>0</posy>
                            <width>8</width>
                            <height>{{ vscale(8) }}</height>
                            <texture>script.plex/white-square-rounded-4r.png</texture>
                            <colordiffuse>FF666666</colordiffuse>
                        </control>
                    </control>

                    <control type="label">
                        <scroll>false</scroll>
                        <posx>0</posx>
                        <posy>{{ vscale(125) }}</posy>
                        <width>238</width>
                        <height>{{ vscale(35) }}</height>
                        <font>font10</font>
                        <align>center</align>
                        <textcolor>FFFFFFFF</textcolor>
                        <label>$INFO[ListItem.Label]</label>
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="298">
                <control type="group">
                    <visible>!String.IsEmpty(ListItem.Property(item))</visible>
                    <posx>60</posx>
                    <posy>{{ vscale(40) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="120" time="100" center="119,{{ vscale(58.5) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="120" end="100" time="100" center="119,{{ vscale(58.5) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="group">
                            <visible>String.IsEmpty(ListItem.Property(is.home))</visible>
                            <control type="group">
                                <visible>Control.HasFocus(101)</visible>
                                <control type="image">
                                    <posx>-40</posx>
                                    <posy>{{ vscale(-40) }}</posy>
                                    <width>318</width>
                                    <height>{{ vscale(197) }}</height>
                                    <texture border="42">script.plex/drop-shadow.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(moving))</visible>
                                    <animation effect="fade" end="100" reversible="false">UnFocus</animation>
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>238</width>
                                    <height>{{ vscale(117) }}</height>
                                    <texture border="10">script.plex/white-square-rounded.png</texture>
                                    <colordiffuse>FF1F1F1F</colordiffuse>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(moving))</visible>
                                    <animation effect="fade" end="0" reversible="false">UnFocus</animation>
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>238</width>
                                    <height>{{ vscale(117) }}</height>
                                    <texture border="10">script.plex/white-square-rounded.png</texture>
                                    <colordiffuse>FFE5A00D</colordiffuse>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(moving))</visible>
                                    <animation effect="fade" end="100" reversible="false">UnFocus</animation>
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>238</width>
                                    <height>{{ vscale(117) }}</height>
                                    <texture border="10">script.plex/white-square-rounded.png</texture>
                                    <colordiffuse>66777777</colordiffuse>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(moving))</visible>
                                    <animation effect="fade" end="0" reversible="false">UnFocus</animation>
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>238</width>
                                    <height>{{ vscale(117) }}</height>
                                    <texture border="10">script.plex/white-square-rounded.png</texture>
                                    <colordiffuse>66777777</colordiffuse>
                                </control>
                            </control>
                            <control type="image">
                                <visible>!Control.HasFocus(101)</visible>
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>238</width>
                                <height>{{ vscale(117) }}</height>
                                <texture border="10">script.plex/white-square-rounded.png</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>84</posx>
                                <posy>{{ vscale(23.5) }}</posy>
                                <width>70</width>
                                <height>{{ vscale(70) }}</height>
                                <texture>$INFO[ListItem.Thumb]</texture>
                                <aspectratio>keep</aspectratio>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.mapped))</visible>
                                <posx>230</posx>
                                <posy>0</posy>
                                <width>8</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>script.plex/white-square-rounded-4r.png</texture>
                                <colordiffuse>AAFFFFFFF</colordiffuse>
                            </control>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.home))</visible>
                            <posx>74</posx>
                            <posy>{{ vscale(13.5) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>90</width>
                                <height>{{ vscale(90) }}</height>
                                <texture>script.plex/home/type/home.png</texture>
                                <aspectratio>keep</aspectratio>
                            </control>
                            <control type="image">
                                <visible>Control.HasFocus(101)</visible>
                                <animation effect="fade" end="0" reversible="false">UnFocus</animation>
                                <posx>-40</posx>
                                <posy>{{ vscale(-40) }}</posy>
                                <width>170</width>
                                <height>{{ vscale(170) }}</height>
                                <texture>script.plex/home/type/home-selected.png</texture>
                                <aspectratio>keep</aspectratio>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>Control.HasFocus(100)</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(125) }}</posy>
                            <width>238</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>

    <control type="group" id="500">
        <visible>Integer.IsGreater(Container(400).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <width>1920</width>
        <height>{{ vscale(440) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.400)][/UPPERCASE]</label>
        </control>
        <control type="list" id="400">
            <posx>0</posx>
            <posy>{{ vscale(30) }}</posy>
            <width>1920</width>
            <height>{{ vscale(440) }}</height>
            <onup>101</onup>
            <ondown>401</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="592">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(64) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>235.5</posx>
                                <posy>{{ vscale(99.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>202</posx>
                                <posy>{{ vscale(85.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>532</width>
                            <height>{{ vscale(299) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>532</width>
                            <height>{{ vscale(299) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(289) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>532</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=532 & uw_size=48 & with_count=True %}

                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(309) }}</posy>
                            <width>532</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <aligny>center</aligny>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.400))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(337) }}</posy>
                            <width>532</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <aligny>center</aligny>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="592">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(64) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="271,{{ vscale(152) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="271,{{ vscale(152) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(400)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>622</width>
                            <height>{{ vscale(389) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>532</width>
                                    <height>{{ vscale(299) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>235.5</posx>
                                    <posy>{{ vscale(99.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>202</posx>
                                    <posy>{{ vscale(85.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(289) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>532</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>532</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=532 & uw_size=48 & with_count=True %}

                            <control type="label">
                                <scroll>Control.HasFocus(400)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(309) }}</posy>
                                <width>532</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <aligny>center</aligny>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(400)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.400))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(337) }}</posy>
                                <width>532</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <aligny>center</aligny>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(400)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>542</width>
                            <height>{{ vscale(309) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="600">
        <visible>Integer.IsGreater(Container(400).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.400))</visible>
        <width>10</width>
        <height>{{ vscale(12) }}</height>
    </control>

    <control type="group" id="501">
        <visible>Integer.IsGreater(Container(401).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>401</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(515) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.401)][/UPPERCASE]</label>
        </control>
        <control type="list" id="401">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(515) }}</height>
            <onup>400</onup>
            <ondown>402</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(130.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(116.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(351) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(371) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.401))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(398) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}

                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="127,{{ vscale(180.5) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="127,{{ vscale(180.5) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(401)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>334</width>
                            <height>{{ vscale(451) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(361) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(130.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(116.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(351) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(401)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(371) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(401)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.401))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(398) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(401)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(371) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="601">
        <visible>Integer.IsGreater(Container(401).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.401))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="502">
        <visible>Integer.IsGreater(Container(402).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>402</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(515) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.402)][/UPPERCASE]</label>
        </control>
        <control type="list" id="402">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(515) }}</height>
            <onup>401</onup>
            <ondown>403</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(130.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(116.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(351) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(371) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.402))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(398) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                        
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="127,{{ vscale(180.5) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="127,{{ vscale(180.5) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(402)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>334</width>
                            <height>{{ vscale(451) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(361) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(130.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(116.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(351) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(402)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(371) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(402)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.402))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(398) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(402)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(371) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="602">
        <visible>Integer.IsGreater(Container(402).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.402))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="503">
        <visible>Integer.IsGreater(Container(403).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>403</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(515) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.403)][/UPPERCASE]</label>
        </control>
        <control type="list" id="403">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(515) }}</height>
            <onup>402</onup>
            <ondown>404</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(130.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(116.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(351) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(371) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.403))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(398) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}

                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="127,{{ vscale(180.5) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="127,{{ vscale(180.5) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(403)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>334</width>
                            <height>{{ vscale(451) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(361) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(130.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(116.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(351) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(403)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(371) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(403)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.403))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(398) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(403)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(371) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="603">
        <visible>Integer.IsGreater(Container(403).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.403))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="504">
        <visible>Integer.IsGreater(Container(404).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>404</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(515) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.404)][/UPPERCASE]</label>
        </control>
        <control type="list" id="404">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(515) }}</height>
            <onup>403</onup>
            <ondown>405</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(130.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(116.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(351) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(371) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.404))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(398) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="127,{{ vscale(180.5) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="127,{{ vscale(180.5) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(404)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>334</width>
                            <height>{{ vscale(451) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(361) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(130.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(116.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(351) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(404)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(371) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(404)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.404))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(398) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(404)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(371) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="604">
        <visible>Integer.IsGreater(Container(404).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.404))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="505">
        <visible>Integer.IsGreater(Container(405).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>405</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(392) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.405)][/UPPERCASE]</label>
        </control>
        <control type="list" id="405">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(392) }}</height>
            <onup>404</onup>
            <ondown>406</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(72) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(58) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(234) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(254) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.405))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(281) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="122,{{ vscale(122) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="122,{{ vscale(122) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(405)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>324</width>
                            <height>{{ vscale(324) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(244) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(72) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(58) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(234) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(405)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(254) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(405)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.405))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(281) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(405)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(254) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="605">
        <visible>Integer.IsGreater(Container(405).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.405))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="506">
        <visible>Integer.IsGreater(Container(406).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <width>1920</width>
        <height>{{ vscale(440) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.406)][/UPPERCASE]</label>
        </control>
        <control type="list" id="406">
            <posx>0</posx>
            <posy>{{ vscale(30) }}</posy>
            <width>1920</width>
            <height>{{ vscale(440) }}</height>
            <onup>405</onup>
            <ondown>407</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="592">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(64) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>235.5</posx>
                                <posy>{{ vscale(99.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>202</posx>
                                <posy>{{ vscale(85.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>532</width>
                            <height>{{ vscale(299) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>532</width>
                            <height>{{ vscale(299) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(289) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>532</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=532 & uw_size=48 & with_count=True %}
                        
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(309) }}</posy>
                            <width>532</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <aligny>center</aligny>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.406))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(337) }}</posy>
                            <width>532</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <aligny>center</aligny>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="592">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(64) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="271,{{ vscale(152) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="271,{{ vscale(152) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(406)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>622</width>
                            <height>{{ vscale(389) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>532</width>
                                    <height>{{ vscale(299) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>235.5</posx>
                                    <posy>{{ vscale(99.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>202</posx>
                                    <posy>{{ vscale(85.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(289) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>532</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>532</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=532 & uw_size=48 & with_count=True %}
                            <control type="label">
                                <scroll>Control.HasFocus(406)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(309) }}</posy>
                                <width>532</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <aligny>center</aligny>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(406)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.406))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(337) }}</posy>
                                <width>532</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <aligny>center</aligny>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(406)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>542</width>
                            <height>{{ vscale(309) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="606">
        <visible>Integer.IsGreater(Container(406).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.406))</visible>
        <width>10</width>
        <height>{{ vscale(12) }}</height>
    </control>

    <control type="group" id="507">
        <visible>Integer.IsGreater(Container(407).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>407</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(515) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.407)][/UPPERCASE]</label>
        </control>
        <control type="list" id="407">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(515) }}</height>
            <onup>406</onup>
            <ondown>408</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(130.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(116.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(351) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(371) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.407))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(398) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="127,{{ vscale(180.5) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="127,{{ vscale(180.5) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(407)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>334</width>
                            <height>{{ vscale(451) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(361) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(130.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(116.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(351) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(407)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(371) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(407)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.407))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(398) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(407)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(371) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="607">
        <visible>Integer.IsGreater(Container(407).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.407))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="508">
        <visible>Integer.IsGreater(Container(408).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>408</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(515) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.408)][/UPPERCASE]</label>
        </control>
        <control type="list" id="408">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(515) }}</height>
            <onup>407</onup>
            <ondown>409</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(130.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(116.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(351) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(371) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.408))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(398) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="127,{{ vscale(180.5) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="127,{{ vscale(180.5) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(408)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>334</width>
                            <height>{{ vscale(451) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(361) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(130.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(116.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(351) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(408)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(371) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(408)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.408))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(398) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(408)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(371) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="608">
        <visible>Integer.IsGreater(Container(408).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.408))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="509">
        <visible>Integer.IsGreater(Container(409).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>409</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(392) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.409)][/UPPERCASE]</label>
        </control>
        <control type="list" id="409">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(392) }}</height>
            <onup>408</onup>
            <ondown>410</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(72) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(58) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(234) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(254) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.409))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(281) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="122,{{ vscale(122) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="122,{{ vscale(122) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(409)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>324</width>
                            <height>{{ vscale(324) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(244) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(72) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(58) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(234) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(409)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(254) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(409)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.409))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(281) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(409)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(254) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="609">
        <visible>Integer.IsGreater(Container(409).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.409))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="510">
        <visible>Integer.IsGreater(Container(410).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>410</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(392) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.410)][/UPPERCASE]</label>
        </control>
        <control type="list" id="410">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(392) }}</height>
            <onup>409</onup>
            <ondown>411</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(72) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(58) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(234) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(254) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.410))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(281) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="122,{{ vscale(122) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="122,{{ vscale(122) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(410)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>324</width>
                            <height>{{ vscale(324) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(244) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(72) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(58) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(234) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(410)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(254) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(410)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.410))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(281) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(410)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(254) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="610">
        <visible>Integer.IsGreater(Container(410).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.410))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="511">
        <visible>Integer.IsGreater(Container(411).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>411</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(392) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.411)][/UPPERCASE]</label>
        </control>
        <control type="list" id="411">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(392) }}</height>
            <onup>410</onup>
            <ondown>412</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(72) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(58) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(234) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(254) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.411))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(281) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="122,{{ vscale(122) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="122,{{ vscale(122) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(411)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>324</width>
                            <height>{{ vscale(324) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(244) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(72) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(58) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(234) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(411)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(254) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(411)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.411))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(281) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(411)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(254) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="611">
        <visible>Integer.IsGreater(Container(411).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.411))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="512">
        <visible>Integer.IsGreater(Container(412).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>412</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(392) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.412)][/UPPERCASE]</label>
        </control>
        <control type="list" id="412">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(392) }}</height>
            <onup>411</onup>
            <ondown>420</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(72) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(58) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(234) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(254) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.412))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(281) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="122,{{ vscale(122) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="122,{{ vscale(122) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(412)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>324</width>
                            <height>{{ vscale(324) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(244) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(72) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(58) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(234) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(412)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(254) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(412)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.412))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(281) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(412)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(254) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="612">
        <visible>Integer.IsGreater(Container(412).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.412))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="520">
        <visible>Integer.IsGreater(Container(420).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>420</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(392) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.420)][/UPPERCASE]</label>
        </control>
        <control type="list" id="420">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(392) }}</height>
            <onup>412</onup>
            <ondown>421</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(72) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(58) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(234) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(254) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.420))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(281) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="122,{{ vscale(122) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="122,{{ vscale(122) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(420)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>324</width>
                            <height>{{ vscale(324) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(244) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(72) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(58) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(234) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(420)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(254) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(420)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.420))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(281) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(420)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(254) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="620">
        <visible>Integer.IsGreater(Container(420).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.420))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="521">
        <visible>Integer.IsGreater(Container(421).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>421</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(392) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.421)][/UPPERCASE]</label>
        </control>
        <control type="list" id="421">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(392) }}</height>
            <onup>420</onup>
            <ondown>422</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(72) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(58) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(234) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(254) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.421))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(281) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="122,{{ vscale(122) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="122,{{ vscale(122) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(421)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>324</width>
                            <height>{{ vscale(324) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(244) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(72) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(58) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(234) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(421)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(254) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(421)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.421))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(281) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(421)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(254) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="621">
        <visible>Integer.IsGreater(Container(421).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.421))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="522">
        <visible>Integer.IsGreater(Container(422).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>422</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(392) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.422)][/UPPERCASE]</label>
        </control>
        <control type="list" id="422">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(392) }}</height>
            <onup>421</onup>
            <ondown>413</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(72) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(58) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(244) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(234) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(254) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.422))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(281) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="122,{{ vscale(122) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="122,{{ vscale(122) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(422)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>324</width>
                            <height>{{ vscale(324) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(244) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(72) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(58) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(244) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(234) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(422)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(254) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(422)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.422))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(281) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(422)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(254) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="622">
        <visible>Integer.IsGreater(Container(422).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.422))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="513">
        <visible>Integer.IsGreater(Container(413).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>413</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(515) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.413)][/UPPERCASE]</label>
        </control>
        <control type="list" id="413">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(515) }}</height>
            <onup>422</onup>
            <ondown>414</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(130.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(116.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(351) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(371) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.413))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(398) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="127,{{ vscale(180.5) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="127,{{ vscale(180.5) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(413)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>334</width>
                            <height>{{ vscale(451) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(361) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(130.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(116.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(351) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(413)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(371) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(413)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.413))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(398) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(413)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(371) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="613">
        <visible>Integer.IsGreater(Container(413).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.413))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="514">
        <visible>Integer.IsGreater(Container(414).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>414</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(515) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.414)][/UPPERCASE]</label>
        </control>
        <control type="list" id="414">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(515) }}</height>
            <onup>413</onup>
            <ondown>415</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(130.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(116.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(351) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(371) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.414))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(398) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="127,{{ vscale(180.5) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="127,{{ vscale(180.5) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(414)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>334</width>
                            <height>{{ vscale(451) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(361) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(130.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(116.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(351) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(414)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(371) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(414)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.414))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(398) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(414)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(371) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="614">
        <visible>Integer.IsGreater(Container(414).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.414))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="515">
        <visible>Integer.IsGreater(Container(415).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>415</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(515) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.415)][/UPPERCASE]</label>
        </control>
        <control type="list" id="415">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(515) }}</height>
            <onup>414</onup>
            <ondown>416</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(130.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(116.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(351) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(371) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.415))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(398) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="127,{{ vscale(180.5) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="127,{{ vscale(180.5) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(415)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>334</width>
                            <height>{{ vscale(451) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(361) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(130.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(116.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(351) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(415)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(371) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(415)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.415))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(398) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(415)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(371) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="615">
        <visible>Integer.IsGreater(Container(415).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.415))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="516">
        <visible>Integer.IsGreater(Container(416).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <defaultcontrol>416</defaultcontrol>
        <width>1920</width>
        <height>{{ vscale(515) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.416)][/UPPERCASE]</label>
        </control>
        <control type="list" id="416">
            <posx>0</posx>
            <posy>{{ vscale(29) }}</posy>
            <width>1920</width>
            <height>{{ vscale(515) }}</height>
            <onup>415</onup>
            <ondown>417</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>91.5</posx>
                                <posy>{{ vscale(130.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>58</posx>
                                <posy>{{ vscale(116.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>244</width>
                            <height>{{ vscale(361) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(351) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>244</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(371) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.416))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(398) }}</posy>
                            <width>244</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="287">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(72) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="127,{{ vscale(180.5) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="127,{{ vscale(180.5) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(416)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>334</width>
                            <height>{{ vscale(451) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(361) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>91.5</posx>
                                    <posy>{{ vscale(130.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>58</posx>
                                    <posy>{{ vscale(116.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>244</width>
                                <height>{{ vscale(361) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(351) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>244</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>244</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(416)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(371) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(416)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.416))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(398) }}</posy>
                                <width>244</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=244 & uw_size=48 & with_count=True & scale="medium" %}
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(416)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>254</width>
                            <height>{{ vscale(371) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="616">
        <visible>Integer.IsGreater(Container(416).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.416))</visible>
        <width>10</width>
        <height>{{ vscale(7) }}</height>
    </control>

    <control type="group" id="517">
        <visible>Integer.IsGreater(Container(417).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <width>1920</width>
        <height>{{ vscale(440) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.417)][/UPPERCASE]</label>
        </control>
        <control type="list" id="417">
            <posx>0</posx>
            <posy>{{ vscale(30) }}</posy>
            <width>1920</width>
            <height>{{ vscale(440) }}</height>
            <onup>416</onup>
            <ondown>418</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="592">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(64) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>235.5</posx>
                                <posy>{{ vscale(99.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>202</posx>
                                <posy>{{ vscale(85.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>532</width>
                            <height>{{ vscale(299) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>532</width>
                            <height>{{ vscale(299) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(289) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>532</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=532 & uw_size=48 & with_count=True %}
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(309) }}</posy>
                            <width>532</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <aligny>center</aligny>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.417))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(337) }}</posy>
                            <width>532</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <aligny>center</aligny>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="592">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(64) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="271,{{ vscale(152) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="271,{{ vscale(152) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(417)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>622</width>
                            <height>{{ vscale(389) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>532</width>
                                    <height>{{ vscale(299) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>235.5</posx>
                                    <posy>{{ vscale(99.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>202</posx>
                                    <posy>{{ vscale(85.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(289) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>532</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>532</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=532 & uw_size=48 & with_count=True %}
                            <control type="label">
                                <scroll>Control.HasFocus(417)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(309) }}</posy>
                                <width>532</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <aligny>center</aligny>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(417)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.417))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(337) }}</posy>
                                <width>532</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <aligny>center</aligny>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(417)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>542</width>
                            <height>{{ vscale(309) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="617">
        <visible>Integer.IsGreater(Container(417).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.417))</visible>
        <width>10</width>
        <height>{{ vscale(12) }}</height>
    </control>

    <control type="group" id="518">
        <visible>Integer.IsGreater(Container(418).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <width>1920</width>
        <height>{{ vscale(440) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.418)][/UPPERCASE]</label>
        </control>
        <control type="list" id="418">
            <posx>0</posx>
            <posy>{{ vscale(30) }}</posy>
            <width>1920</width>
            <height>{{ vscale(440) }}</height>
            <onup>417</onup>
            <ondown>419</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="592">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(64) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>235.5</posx>
                                <posy>{{ vscale(99.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>202</posx>
                                <posy>{{ vscale(85.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>532</width>
                            <height>{{ vscale(299) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>532</width>
                            <height>{{ vscale(299) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(289) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>532</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=532 & uw_size=48 & with_count=True %}
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(309) }}</posy>
                            <width>532</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <aligny>center</aligny>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.418))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(337) }}</posy>
                            <width>532</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <aligny>center</aligny>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="592">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(64) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="271,{{ vscale(152) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="271,{{ vscale(152) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(418)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>622</width>
                            <height>{{ vscale(389) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>532</width>
                                    <height>{{ vscale(299) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>235.5</posx>
                                    <posy>{{ vscale(99.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>202</posx>
                                    <posy>{{ vscale(85.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(289) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>532</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>532</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=532 & uw_size=48 & with_count=True %}
                            <control type="label">
                                <scroll>Control.HasFocus(418)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(309) }}</posy>
                                <width>532</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <aligny>center</aligny>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(418)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.418))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(337) }}</posy>
                                <width>532</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <aligny>center</aligny>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(418)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>542</width>
                            <height>{{ vscale(309) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="618">
        <visible>Integer.IsGreater(Container(418).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.418))</visible>
        <width>10</width>
        <height>{{ vscale(12) }}</height>
    </control>

    <control type="group" id="519">
        <visible>Integer.IsGreater(Container(419).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <width>1920</width>
        <height>{{ vscale(440) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.419)][/UPPERCASE]</label>
        </control>
        <control type="list" id="419">
            <posx>0</posx>
            <posy>{{ vscale(30) }}</posy>
            <width>1920</width>
            <height>{{ vscale(440) }}</height>
            <onup>418</onup>
            <ondown>423</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="592">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(64) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>235.5</posx>
                                <posy>{{ vscale(99.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>202</posx>
                                <posy>{{ vscale(85.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>532</width>
                            <height>{{ vscale(299) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>532</width>
                            <height>{{ vscale(299) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(289) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>532</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=532 & uw_size=48 & with_count=True %}
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(309) }}</posy>
                            <width>532</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <aligny>center</aligny>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.419))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(337) }}</posy>
                            <width>532</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <aligny>center</aligny>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="592">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(64) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="271,{{ vscale(152) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="271,{{ vscale(152) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(419)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>622</width>
                            <height>{{ vscale(389) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>532</width>
                                    <height>{{ vscale(299) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>235.5</posx>
                                    <posy>{{ vscale(99.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>202</posx>
                                    <posy>{{ vscale(85.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(289) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>532</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>532</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=532 & uw_size=48 & with_count=True %}
                            <control type="label">
                                <scroll>Control.HasFocus(419)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(309) }}</posy>
                                <width>532</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <aligny>center</aligny>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(419)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.419))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(337) }}</posy>
                                <width>532</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <aligny>center</aligny>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(419)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>542</width>
                            <height>{{ vscale(309) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="619">
        <visible>Integer.IsGreater(Container(419).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.419))</visible>
        <width>10</width>
        <height>{{ vscale(12) }}</height>
    </control>

    <control type="group" id="523">
        <visible>Integer.IsGreater(Container(423).NumItems,0) + String.IsEmpty(Window.Property(drawing))</visible>
        <width>1920</width>
        <height>{{ vscale(440) }}</height>
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
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(87) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$INFO[Window.Property(hub.423)][/UPPERCASE]</label>
        </control>
        <control type="list" id="423">
            <posx>0</posx>
            <posy>{{ vscale(30) }}</posy>
            <width>1920</width>
            <height>{{ vscale(440) }}</height>
            <onup>419</onup>
            <ondown>423</ondown>
            <onright>noop</onright>
            <onleft>noop</onleft>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>
            <!-- ITEM LAYOUT ########################################## -->
            <itemlayout width="592">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(64) }}</posy>
                    <control type="group">
                        <posx>5</posx>
                        <posy>5</posy>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                            </control>
                            <control type="image">
                                <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>235.5</posx>
                                <posy>{{ vscale(99.5) }}</posy>
                                <width>61</width>
                                <height>{{ vscale(100) }}</height>
                                <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                            </control>
                            <control type="image">
                                <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                <posx>202</posx>
                                <posy>{{ vscale(85.5) }}</posy>
                                <width>128</width>
                                <height>{{ vscale(128) }}</height>
                                <texture>script.plex/home/busy.gif</texture>
                            </control>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>532</width>
                            <height>{{ vscale(299) }}</height>
                            <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>532</width>
                            <height>{{ vscale(299) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="group">
                            <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(289) }}</posy>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(10) }}</height>
                                <texture>script.plex/white-square.png</texture>
                                <colordiffuse>C0000000</colordiffuse>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>1</posy>
                                <width>532</width>
                                <height>{{ vscale(8) }}</height>
                                <texture>$INFO[ListItem.Property(progress)]</texture>
                                <colordiffuse>FFCC7B19</colordiffuse>
                            </control>
                        </control>
                        {% include "includes/watched_indicator.xml.tpl" with xoff=532 & uw_size=48 & with_count=True %}
                        <control type="label">
                            <scroll>false</scroll>
                            <posx>0</posx>
                            <posy>{{ vscale(309) }}</posy>
                            <width>532</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <aligny>center</aligny>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label]</label>
                        </control>
                        <control type="label">
                            <scroll>false</scroll>
                            <visible>!String.IsEmpty(Window.Property(hub.text2lines.423))</visible>
                            <posx>0</posx>
                            <posy>{{ vscale(337) }}</posy>
                            <width>532</width>
                            <height>{{ vscale(35) }}</height>
                            <font>font10</font>
                            <align>center</align>
                            <aligny>center</aligny>
                            <textcolor>FFFFFFFF</textcolor>
                            <label>$INFO[ListItem.Label2]</label>
                        </control>
                    </control>
                </control>
            </itemlayout>

            <!-- FOCUSED LAYOUT ####################################### -->
            <focusedlayout width="592">
                <control type="group">
                    <posx>55</posx>
                    <posy>{{ vscale(64) }}</posy>
                    <control type="group">
                        <animation effect="zoom" start="100" end="110" time="100" center="271,{{ vscale(152) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="110" end="100" time="100" center="271,{{ vscale(152) }}" reversible="false">UnFocus</animation>
                        <posx>0</posx>
                        <posy>0</posy>
                        <control type="image">
                            <visible>Control.HasFocus(423)</visible>
                            <posx>-40</posx>
                            <posy>{{ vscale(-40) }}</posy>
                            <width>622</width>
                            <height>{{ vscale(389) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>
                        <control type="group">
                            <posx>5</posx>
                            <posy>5</posy>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(is.end))</visible>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>532</width>
                                    <height>{{ vscale(299) }}</height>
                                    <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                                </control>
                                <control type="image">
                                    <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>235.5</posx>
                                    <posy>{{ vscale(99.5) }}</posy>
                                    <width>61</width>
                                    <height>{{ vscale(100) }}</height>
                                    <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                                </control>
                                <control type="image">
                                    <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                                    <posx>202</posx>
                                    <posy>{{ vscale(85.5) }}</posy>
                                    <width>128</width>
                                    <height>{{ vscale(128) }}</height>
                                    <texture>script.plex/home/busy.gif</texture>
                                </control>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                            </control>
                            <control type="image">
                                <posx>0</posx>
                                <posy>0</posy>
                                <width>532</width>
                                <height>{{ vscale(299) }}</height>
                                <texture background="true">$INFO[ListItem.Thumb]</texture>
                                <aspectratio>scale</aspectratio>
                            </control>
                            <control type="group">
                                <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(289) }}</posy>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>0</posy>
                                    <width>532</width>
                                    <height>{{ vscale(10) }}</height>
                                    <texture>script.plex/white-square.png</texture>
                                    <colordiffuse>C0000000</colordiffuse>
                                </control>
                                <control type="image">
                                    <posx>0</posx>
                                    <posy>1</posy>
                                    <width>532</width>
                                    <height>{{ vscale(8) }}</height>
                                    <texture>$INFO[ListItem.Property(progress)]</texture>
                                    <colordiffuse>FFCC7B19</colordiffuse>
                                </control>
                            </control>
                            {% include "includes/watched_indicator.xml.tpl" with xoff=532 & uw_size=48 & with_count=True %}
                            <control type="label">
                                <scroll>Control.HasFocus(423)</scroll>
                                <posx>0</posx>
                                <posy>{{ vscale(309) }}</posy>
                                <width>532</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <aligny>center</aligny>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label]</label>
                            </control>
                            <control type="label">
                                <scroll>Control.HasFocus(423)</scroll>
                                <visible>!String.IsEmpty(Window.Property(hub.text2lines.423))</visible>
                                <posx>0</posx>
                                <posy>{{ vscale(337) }}</posy>
                                <width>532</width>
                                <height>{{ vscale(35) }}</height>
                                <font>font10</font>
                                <align>center</align>
                                <aligny>center</aligny>
                                <textcolor>FFFFFFFF</textcolor>
                                <label>$INFO[ListItem.Label2]</label>
                            </control>
                        </control>
                        <control type="image">
                            <visible>Control.HasFocus(423)</visible>
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>542</width>
                            <height>{{ vscale(309) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>
    <control type="group" id="623">
        <visible>Integer.IsGreater(Container(423).NumItems,0) + !String.IsEmpty(Window.Property(hub.text2lines.423))</visible>
        <width>10</width>
        <height>{{ vscale(12) }}</height>
    </control>

    <control type="label">
        <!-- DUMMY -->
        <width>1920</width>
        <height>{{ vscale(100) }}</height>
        <font>font12</font>
        <align>left</align>
        <aligny>center</aligny>
        <textcolor>00FFFFFF</textcolor>
        <label> </label>
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
    <control type="image">
        <animation effect="fade" start="0" end="100" time="200" tween="quadratic" easing="out" reversible="true">VisibleChange</animation>
        <visible>ControlGroup(200).HasFocus(0) + !String.IsEmpty(Window(10000).Property(script.plex.off.sections))</visible>
        <posx>0</posx>
        <posy>0</posy>
        <width>1920</width>
        <height>{{ vscale(135) }}</height>
        <texture>script.plex/white-square.png</texture>
        <colordiffuse>C0000000</colordiffuse>
    </control>
    <control type="group">
        <visible>String.IsEmpty(Window.Property(search.dialog))</visible>
        <control type="button" id="203">
            <animation effect="zoom" start="100" end="144" time="100" center="80,{{ vscale(67.5) }}" reversible="false">Focus</animation>
            <animation effect="zoom" start="144" end="100" time="100" center="80,{{ vscale(67.5) }}" reversible="false">UnFocus</animation>
            <posx>60</posx>
            <posy>{{ vscale(47.5) }}</posy>
            <width>40</width>
            <height>{{ vscale(40) }}</height>
            <ondown>50</ondown>
            <font>font12</font>
            <focusedcolor>FF000000</focusedcolor>
            <texturefocus colordiffuse="FFE5A00D">script.plex/buttons/search-focus.png</texturefocus>
            <texturenofocus colordiffuse="99FFFFFF">script.plex/buttons/search.png</texturenofocus>
            <label> </label>
        </control>
        <control type="label">
            <posx>160</posx>
            <posy>{{ vscale(35) }}</posy>
            <width>500</width>
            <height>{{ vscale(65) }}</height>
            <font>font12</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$ADDON[script.plexmod 32430][/UPPERCASE]</label>
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
    <control type="group">
        <posx>576</posx>
        <posy>{{ vscale(34) }}</posy>
        <width>1000</width>
        <height>{{ vscale(1046) }}</height>
        <control type="grouplist">
            <posx>0</posx>
            <posy>0</posy>
            <width>1000</width>
            <height>{{ vscale(1046) }}</height>
            <ondown>50</ondown>
            <onleft>204</onleft>
            <align>right</align>
            <itemgap>0</itemgap>
            <orientation>horizontal</orientation>
            <scrolltime tween="quadratic" easing="out">200</scrolltime>
            <usecontrolcoords>true</usecontrolcoords>
            <control type="button" id="201">
                <width max="500">auto</width>
                <height>{{ vscale(66) }}</height>
                <font>font12</font>
                <textcolor>FFFFFFFF</textcolor>
                <focusedcolor>FF000000</focusedcolor>
                <disabledcolor>FFFFFFFF</disabledcolor>
                <align>right</align>
                <aligny>center</aligny>
                <texturefocus colordiffuse="FFE5A00D" border="10">script.plex/white-square-rounded.png</texturefocus>
                <texturenofocus>-</texturenofocus>
                <textoffsetx>100</textoffsetx>
                <textoffsety>0</textoffsety>
                <label>$INFO[Window.Property(server.name)]</label>
                <onunfocus condition="!String.IsEmpty(Window.Property(show.servers))">SetFocus(260)</onunfocus>
            </control>
            <!-- server control -->
            <control type="group">
                <posx>-93</posx>
                <width>93</width>
                <height>{{ vscale(66) }}</height>
                <control type="image">
                    <posx>6</posx>
                    <posy>{{ vscale(14) }}</posy>
                    <width>40</width>
                    <height>{{ vscale(39) }}</height>
                    <texture>$INFO[Window.Property(server.icon)]</texture>
                </control>
                <control type="image">
                    <posx>0</posx>
                    <posy>{{ vscale(38) }}</posy>
                    <width>16</width>
                    <height>{{ vscale(15) }}</height>
                    <texture>$INFO[Window.Property(server.iconmod)]</texture>
                </control>
                <!-- secure + local -->
                <control type="image">
                    <visible>!String.IsEmpty(Window.Property(server.iconmod))</visible>
                    <posx>0</posx>
                    <posy>{{ vscale(20) }}</posy>
                    <width>16</width>
                    <height>{{ vscale(14) }}</height>
                    <texture>$INFO[Window.Property(server.iconmod2)]</texture>
                    <colordiffuse>FFEEEEEE</colordiffuse>
                </control>
                <!-- local -->
                <control type="image">
                    <visible>String.IsEmpty(Window.Property(server.iconmod))</visible>
                    <posx>0</posx>
                    <posy>{{ vscale(38) }}</posy>
                    <width>16</width>
                    <height>{{ vscale(14) }}</height>
                    <texture>$INFO[Window.Property(server.iconmod2)]</texture>
                    <colordiffuse>FFEEEEEE</colordiffuse>
                </control>
                <control type="image">
                    <visible>!Control.HasFocus(201)</visible>
                    <posx>59</posx>
                    <posy>{{ vscale(27) }}</posy>
                    <width>15</width>
                    <height>{{ vscale(13) }}</height>
                    <texture>script.plex/indicators/dropdown-triangle.png</texture>
                    <colordiffuse>99FFFFFF</colordiffuse>
                </control>
                <control type="image">
                    <visible>Control.HasFocus(201)</visible>
                    <posx>59</posx>
                    <posy>{{ vscale(27) }}</posy>
                    <width>15</width>
                    <height>{{ vscale(13) }}</height>
                    <texture>script.plex/indicators/dropdown-triangle.png</texture>
                    <colordiffuse>FF222222</colordiffuse>
                </control>
                <control type="group">
                    <visible>Control.HasFocus(260) | !String.IsEmpty(Window.Property(show.servers))</visible>
                    <posx>-413</posx>
                    <posy>{{ vscale(70) }}</posy>
                    <control type="image" id="800">
                        <posx>-40</posx>
                        <posy>{{ vscale(-40) }}</posy>
                        <width>580</width>
                        <height>{{ vscale(146) }}</height>
                        <texture border="42">script.plex/drop-shadow.png</texture>
                    </control>
                    <control type="image">
                        <posx>432</posx>
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
                        <onup>201</onup>
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
            <control type="button" id="202">
                <width max="500">auto</width>
                <height>{{ vscale(66) }}</height>
                <font>font12</font>
                <textcolor>FFFFFFFF</textcolor>
                <focusedcolor>FF000000</focusedcolor>
                <align>right</align>
                <aligny>center</aligny>
                <texturefocus colordiffuse="FFE5A00D" border="10">script.plex/white-square-rounded.png</texturefocus>
                <texturenofocus>-</texturenofocus>
                <textoffsetx>100</textoffsetx>
                <textoffsety>0</textoffsety>
                <label>$INFO[Window.Property(user.name)]</label>
                <onunfocus condition="!String.IsEmpty(Window.Property(show.options))">SetFocus(250)</onunfocus>
            </control>
            <control type="group">
                <posx>-87</posx>
                <width>87</width>
                <height>{{ vscale(66) }}</height>
                <control type="image">
                    <posx>0</posx>
                    <posy>{{ vscale(14) }}</posy>
                    <width>40</width>
                    <height>{{ vscale(39) }}</height>
                    <texture diffuse="script.plex/home/avatar-diffuse.png" fallback="script.plex/gray-square.png">$INFO[Window.Property(user.avatar)]</texture>
                </control>
                <control type="label">
                    <visible>String.IsEmpty(Window.Property(user.avatar))</visible>
                    <posx>0</posx>
                    <posy>{{ vscale(14) }}</posy>
                    <width>40</width>
                    <height>{{ vscale(39) }}</height>
                    <font>font10</font>
                    <align>center</align>
                    <aligny>center</aligny>
                    <textcolor>FFFFFFFF</textcolor>
                    <label>[B]$INFO[Window.Property(user.avatar.letter)][/B]</label>
                </control>
                <control type="image">
                    <visible>!Control.HasFocus(202)</visible>
                    <posx>53</posx>
                    <posy>{{ vscale(27) }}</posy>
                    <width>15</width>
                    <height>{{ vscale(13) }}</height>
                    <texture>script.plex/indicators/dropdown-triangle.png</texture>
                    <colordiffuse>99FFFFFF</colordiffuse>
                </control>
                <control type="image">
                    <visible>Control.HasFocus(202)</visible>
                    <posx>53</posx>
                    <posy>{{ vscale(27) }}</posy>
                    <width>15</width>
                    <height>{{ vscale(13) }}</height>
                    <texture>script.plex/indicators/dropdown-triangle.png</texture>
                    <colordiffuse>FF222222</colordiffuse>
                </control>
                <control type="group">
                    <visible>Control.HasFocus(250) | !String.IsEmpty(Window.Property(show.options))</visible>
                    <posx>-213</posx>
                    <posy>{{ vscale(70) }}</posy>
                    <control type="image" id="801">
                        <posx>-40</posx>
                        <posy>{{ vscale(-40) }}</posy>
                        <width>380</width>
                        <height>{{ vscale(146) }}</height>
                        <texture border="42">script.plex/drop-shadow.png</texture>
                    </control>
                    <control type="image">
                        <posx>226</posx>
                        <posy>{{ vscale(-13) }}</posy>
                        <width>15</width>
                        <height>{{ vscale(13) }}</height>
                        <texture flipy="true">script.plex/indicators/dropdown-triangle.png</texture>
                        <colordiffuse>FF1F1F1F</colordiffuse>
                    </control>
                    <control type="list" id="250">
                        <hitrect x="0" y="-10" w="300" h="208" />
                        <posx>0</posx>
                        <posy>0</posy>
                        <width>300</width>
                        <height>{{ vscale(198) }}</height>
                        <onup>202</onup>
                        <ondown>noop</ondown>
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
            <control type="image">
                <!-- dummy image to allow shadow -->
                <width>40</width>
                <height>{{ vscale(10) }}</height>
                <texture>-</texture>
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
    <visible>!String.IsEmpty(Window.Property(busy))</visible>
    <animation effect="fade" start="0" end="100" delay="500">Visible</animation>
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