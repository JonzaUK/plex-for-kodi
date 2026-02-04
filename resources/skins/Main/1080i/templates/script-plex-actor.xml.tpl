{% extends "default.xml.tpl" %}
{% block headers %}<defaultcontrol>400</defaultcontrol>{% endblock %}

{% block content %}
<!-- Background -->
<control type="group">
    <control type="image">
        <posx>0</posx>
        <posy>0</posy>
        <width>1920</width>
        <height>1080</height>
        <texture background="true">script.plex/home/background-fallback_black.png</texture>
    </control>
    <control type="image">
        <posx>0</posx>
        <posy>0</posy>
        <width>1920</width>
        <height>1080</height>
        <fadetime>1000</fadetime>
        <texture background="true">$INFO[Window.Property(background)]</texture>
    </control>
</control>

<!-- Main Content -->
<control type="group" id="50">
    <posx>0</posx>
    <posy>0</posy>

    <!-- Actor Details Section -->
    <control type="group">
        <posx>60</posx>
        <posy>{{ vscale(120) }}</posy>
        <width>1800</width>
        <height>{{ vscale(350) }}</height>

        <!-- Actor Photo (Circular) -->
        <control type="group">
            <posx>0</posx>
            <posy>0</posy>
            <control type="image">
                <posx>0</posx>
                <posy>0</posy>
                <width>300</width>
                <height>{{ vscale(300) }}</height>
                <texture diffuse="script.plex/masks/role.png">script.plex/thumb_fallbacks/role.png</texture>
            </control>
            <control type="image">
                <posx>0</posx>
                <posy>0</posy>
                <width>300</width>
                <height>{{ vscale(300) }}</height>
                <texture background="true" diffuse="script.plex/masks/role.png">$INFO[Window.Property(actor.thumb)]</texture>
                <aspectratio scalediffuse="false" aligny="top">scale</aspectratio>
            </control>
        </control>

        <!-- Actor Info -->
        <control type="group">
            <posx>340</posx>
            <posy>0</posy>
            <width>1400</width>
            <height>{{ vscale(350) }}</height>

            <!-- Name -->
            <control type="label">
                <posx>0</posx>
                <posy>0</posy>
                <width>1400</width>
                <height>{{ vscale(50) }}</height>
                <font>font_title</font>
                <align>left</align>
                <aligny>center</aligny>
                <textcolor>FFFFFFFF</textcolor>
                <label>$INFO[Window.Property(actor.name)]</label>
            </control>

            <!-- Role Type (Actor, Producer, etc) - could be expanded -->
            <control type="label">
                <posx>0</posx>
                <posy>{{ vscale(50) }}</posy>
                <width>1400</width>
                <height>{{ vscale(30) }}</height>
                <font>font12</font>
                <align>left</align>
                <aligny>center</aligny>
                <textcolor>99FFFFFF</textcolor>
                <label>$ADDON[script.plexmod 32473]</label>
            </control>

            <!-- Birth Date and Age -->
            <control type="group">
                <visible>!String.IsEmpty(Window.Property(actor.birthDate))</visible>
                <posx>0</posx>
                <posy>{{ vscale(90) }}</posy>

                <control type="label">
                    <visible>!String.IsEmpty(Window.Property(actor.age))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>1400</width>
                    <height>{{ vscale(30) }}</height>
                    <font>font12</font>
                    <align>left</align>
                    <aligny>center</aligny>
                    <textcolor>AAFFFFFF</textcolor>
                    <label>Born $INFO[Window.Property(actor.birthDate)] ($INFO[Window.Property(actor.age)] years)</label>
                </control>
                <control type="label">
                    <visible>String.IsEmpty(Window.Property(actor.age))</visible>
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>1400</width>
                    <height>{{ vscale(30) }}</height>
                    <font>font12</font>
                    <align>left</align>
                    <aligny>center</aligny>
                    <textcolor>AAFFFFFF</textcolor>
                    <label>Born $INFO[Window.Property(actor.birthDate)]</label>
                </control>
            </control>

            <!-- Biography -->
            <control type="textbox">
                <posx>0</posx>
                <posy>{{ vscale(130) }}</posy>
                <width>1400</width>
                <height>{{ vscale(160) }}</height>
                <font>font12</font>
                <align>left</align>
                <textcolor>CCFFFFFF</textcolor>
                <scrolltime>200</scrolltime>
                <autoscroll delay="3000" time="3000" repeat="5000"></autoscroll>
                <label>$INFO[Window.Property(actor.summary)]</label>
            </control>
        </control>
    </control>

    <!-- Filmography Section Header -->
    <control type="group">
        <posx>60</posx>
        <posy>{{ vscale(460) }}</posy>
        <width>1800</width>
        <height>{{ vscale(60) }}</height>

        <control type="label">
            <posx>0</posx>
            <posy>0</posy>
            <width>600</width>
            <height>{{ vscale(60) }}</height>
            <font>font13</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>[UPPERCASE]$ADDON[script.plexmod 32476][/UPPERCASE]</label>
        </control>
    </control>

    <!-- Loading Indicator -->
    <control type="group">
        <visible>!String.IsEmpty(Window.Property(loading))</visible>
        <posx>960</posx>
        <posy>{{ vscale(700) }}</posy>
        <control type="image">
            <posx>-32</posx>
            <posy>0</posy>
            <width>64</width>
            <height>{{ vscale(64) }}</height>
            <texture>script.plex/indicators/busy-photo.gif</texture>
        </control>
    </control>

    <!-- Filmography List -->
    <control type="group" id="500">
        <visible>String.IsEmpty(Window.Property(loading))</visible>
        <posx>0</posx>
        <posy>{{ vscale(500) }}</posy>
        <width>1920</width>
        <height>{{ vscale(540) }}</height>

        <control type="list" id="400">
            <posx>0</posx>
            <posy>{{ vscale(20) }}</posy>
            <width>1920</width>
            <height>{{ vscale(520) }}</height>
            <onup>201</onup>
            <scrolltime>200</scrolltime>
            <orientation>horizontal</orientation>
            <preloaditems>4</preloaditems>

            <!-- Item Layout -->
            <itemlayout width="288" height="{{ vscale(500) }}">
                <control type="group">
                    <posx>60</posx>
                    <posy>{{ vscale(30) }}</posy>

                    <!-- Poster -->
                    <control type="image">
                        <posx>0</posx>
                        <posy>0</posy>
                        <width>268</width>
                        <height>{{ vscale(402) }}</height>
                        <texture>script.plex/thumb_fallbacks/movie.png</texture>
                        <aspectratio>scale</aspectratio>
                    </control>
                    <control type="image">
                        <posx>0</posx>
                        <posy>0</posy>
                        <width>268</width>
                        <height>{{ vscale(402) }}</height>
                        <texture background="true">$INFO[ListItem.Thumb]</texture>
                        <aspectratio>scale</aspectratio>
                    </control>

                    <!-- Title -->
                    <control type="label">
                        <scroll>false</scroll>
                        <posx>0</posx>
                        <posy>{{ vscale(410) }}</posy>
                        <width>268</width>
                        <height>{{ vscale(30) }}</height>
                        <font>font10</font>
                        <align>center</align>
                        <textcolor>FFFFFFFF</textcolor>
                        <label>$INFO[ListItem.Label]</label>
                    </control>

                    <!-- Year -->
                    <control type="label">
                        <scroll>false</scroll>
                        <posx>0</posx>
                        <posy>{{ vscale(435) }}</posy>
                        <width>268</width>
                        <height>{{ vscale(25) }}</height>
                        <font>font10</font>
                        <align>center</align>
                        <textcolor>99FFFFFF</textcolor>
                        <label>$INFO[ListItem.Label2]</label>
                    </control>

                    <!-- Watched indicator -->
                    <control type="image">
                        <visible>!String.IsEmpty(ListItem.Property(watched))</visible>
                        <posx>230</posx>
                        <posy>8</posy>
                        <width>30</width>
                        <height>{{ vscale(30) }}</height>
                        <texture>script.plex/indicators/watched-indicator.png</texture>
                    </control>
                </control>
            </itemlayout>

            <!-- Focused Layout -->
            <focusedlayout width="288" height="{{ vscale(500) }}">
                <control type="group">
                    <posx>60</posx>
                    <posy>{{ vscale(30) }}</posy>

                    <control type="group">
                        <animation effect="zoom" start="100" end="105" time="100" center="134,{{ vscale(201) }}" reversible="false">Focus</animation>
                        <animation effect="zoom" start="105" end="100" time="100" center="134,{{ vscale(201) }}" reversible="false">UnFocus</animation>

                        <!-- Poster Shadow -->
                        <control type="image">
                            <visible>Control.HasFocus(400)</visible>
                            <posx>-12</posx>
                            <posy>{{ vscale(-12) }}</posy>
                            <width>292</width>
                            <height>{{ vscale(426) }}</height>
                            <texture border="42">script.plex/drop-shadow.png</texture>
                        </control>

                        <!-- Poster -->
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>268</width>
                            <height>{{ vscale(402) }}</height>
                            <texture>script.plex/thumb_fallbacks/movie.png</texture>
                            <aspectratio>scale</aspectratio>
                        </control>
                        <control type="image">
                            <posx>0</posx>
                            <posy>0</posy>
                            <width>268</width>
                            <height>{{ vscale(402) }}</height>
                            <texture background="true">$INFO[ListItem.Thumb]</texture>
                            <aspectratio>scale</aspectratio>
                        </control>

                        <!-- Selection Indicator -->
                        <control type="image">
                            <visible>Control.HasFocus(400)</visible>
                            <posx>-4</posx>
                            <posy>{{ vscale(-4) }}</posy>
                            <width>276</width>
                            <height>{{ vscale(410) }}</height>
                            <texture border="10">script.plex/home/selected.png</texture>
                        </control>

                        <!-- Watched indicator -->
                        <control type="image">
                            <visible>!String.IsEmpty(ListItem.Property(watched))</visible>
                            <posx>230</posx>
                            <posy>8</posy>
                            <width>30</width>
                            <height>{{ vscale(30) }}</height>
                            <texture>script.plex/indicators/watched-indicator.png</texture>
                        </control>
                    </control>

                    <!-- Title -->
                    <control type="label">
                        <scroll>Control.HasFocus(400)</scroll>
                        <posx>0</posx>
                        <posy>{{ vscale(410) }}</posy>
                        <width>268</width>
                        <height>{{ vscale(30) }}</height>
                        <font>font10</font>
                        <align>center</align>
                        <textcolor>FFFFFFFF</textcolor>
                        <label>$INFO[ListItem.Label]</label>
                    </control>

                    <!-- Year -->
                    <control type="label">
                        <scroll>false</scroll>
                        <posx>0</posx>
                        <posy>{{ vscale(435) }}</posy>
                        <width>268</width>
                        <height>{{ vscale(25) }}</height>
                        <font>font10</font>
                        <align>center</align>
                        <textcolor>99FFFFFF</textcolor>
                        <label>$INFO[ListItem.Label2]</label>
                    </control>
                </control>
            </focusedlayout>
        </control>
    </control>

    <!-- Empty State -->
    <control type="group">
        <visible>String.IsEmpty(Window.Property(loading)) + !Integer.IsGreater(Container(400).NumItems,0)</visible>
        <posx>0</posx>
        <posy>{{ vscale(650) }}</posy>
        <width>1920</width>
        <height>{{ vscale(200) }}</height>

        <control type="label">
            <posx>0</posx>
            <posy>0</posy>
            <width>1920</width>
            <height>{{ vscale(60) }}</height>
            <font>font13</font>
            <align>center</align>
            <aligny>center</aligny>
            <textcolor>99FFFFFF</textcolor>
            <label>$ADDON[script.plexmod 32478]</label>
        </control>
    </control>
</control>
{% endblock content %}
