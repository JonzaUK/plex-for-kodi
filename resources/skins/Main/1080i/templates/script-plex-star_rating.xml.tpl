{% extends "base.xml.tpl" %}
{% block headers %}<defaultcontrol>200</defaultcontrol>{% endblock %}
{% block backgroundcolor %}{% endblock %}
{% block controls %}
<control type="image">
    <posx>0</posx>
    <posy>0</posy>
    <width>1920</width>
    <height>1080</height>
    <texture colordiffuse="99606060" border="10">script.plex/white-square.png</texture>
</control>
<control type="group">
    <visible>!String.IsEmpty(Window.Property(star.rating))</visible>
    <posx>660</posx>
    <posy>{{ vperc(vscale(380)) }}</posy>

    <!-- Drop shadow -->
    <control type="image">
        <posx>-40</posx>
        <posy>{{ vscale(-40) }}</posy>
        <width>680</width>
        <height>{{ vscale(460) }}</height>
        <texture border="42">script.plex/drop-shadow.png</texture>
    </control>

    <!-- Dialog background -->
    <control type="image">
        <posx>0</posx>
        <posy>0</posy>
        <width>600</width>
        <height>{{ vscale(380) }}</height>
        <texture colordiffuse="EE323232" border="10">script.plex/white-square-rounded.png</texture>
    </control>

    <!-- Header bar -->
    <control type="image">
        <posx>0</posx>
        <posy>0</posy>
        <width>600</width>
        <height>{{ vscale(80) }}</height>
        <texture colordiffuse="99000000" border="10">script.plex/white-square-top-rounded.png</texture>
    </control>

    <!-- Header indicator -->
    <control type="image">
        <posx>48</posx>
        <posy>{{ vscale(31) }}</posy>
        <width>19</width>
        <height>{{ vscale(19) }}</height>
        <texture colordiffuse="FFE5A00D">script.plex/indicators/circle-19.png</texture>
    </control>

    <!-- Header label -->
    <control type="label">
        <posx>115</posx>
        <posy>0</posy>
        <width>430</width>
        <height>{{ vscale(80) }}</height>
        <font>font12</font>
        <align>left</align>
        <aligny>center</aligny>
        <textcolor>FFE5A00D</textcolor>
        <label>$ADDON[script.plexmod 35004]</label>
    </control>

    <!-- Stars display - single image that switches based on rating -->
    <control type="group">
        <posx>155</posx>
        <posy>{{ vscale(100) }}</posy>

        <control type="image">
            <posx>0</posx>
            <posy>0</posy>
            <width>290</width>
            <height>{{ vscale(50) }}</height>
            <texture>script.plex/star-rating/$INFO[Window.Property(star.rating)].png</texture>
        </control>

        <!-- Transparent focusable button overlaid on stars -->
        <control type="button" id="200">
            <posx>-20</posx>
            <posy>{{ vscale(-10) }}</posy>
            <width>330</width>
            <height>{{ vscale(70) }}</height>
            <texturefocus colordiffuse="30FFFFFF" border="10">script.plex/white-square-rounded.png</texturefocus>
            <texturenofocus>-</texturenofocus>
            <label> </label>
            <ondown>201</ondown>
        </control>
    </control>

    <!-- Rating label -->
    <control type="label">
        <posx>0</posx>
        <posy>{{ vscale(165) }}</posy>
        <width>600</width>
        <height>{{ vscale(40) }}</height>
        <font>font12</font>
        <align>center</align>
        <aligny>center</aligny>
        <textcolor>FFFFFFFF</textcolor>
        <label>$INFO[Window.Property(star.label)]</label>
    </control>

    <!-- Buttons -->
    <control type="grouplist" id="100">
        <defaultcontrol always="true">201</defaultcontrol>
        <posx>-10</posx>
        <posy>{{ vscale(230) }}</posy>
        <width>620</width>
        <height>{{ vscale(155) }}</height>
        <align>center</align>
        <itemgap>-50</itemgap>
        <orientation>horizontal</orientation>
        <scrolltime>0</scrolltime>
        <onup>200</onup>
        <usecontrolcoords>true</usecontrolcoords>

        <!-- Clear Rating button -->
        <control type="button" id="202">
            <animation effect="zoom" start="100" end="110,120" time="100" center="auto" reversible="false">Focus</animation>
            <animation effect="zoom" start="110,120" end="100" time="100" center="auto" reversible="false">UnFocus</animation>
            <posx>0</posx>
            <posy>0</posy>
            <width min="120">auto</width>
            <height>{{ vscale(143, 1.1) }}</height>
            <font>font10</font>
            <texturefocus colordiffuse="FFE5A00D" border="50">script.plex/buttons/blank-focus.png</texturefocus>
            <texturenofocus colordiffuse="99FFFFFF" border="50">script.plex/buttons/blank.png</texturenofocus>
            <textoffsetx>70</textoffsetx>
            <textcolor>FF000000</textcolor>
            <focusedcolor>FF000000</focusedcolor>
            <label>$ADDON[script.plexmod 35003]</label>
        </control>

        <!-- OK button -->
        <control type="button" id="201">
            <animation effect="zoom" start="100" end="110,120" time="100" center="auto" reversible="false">Focus</animation>
            <animation effect="zoom" start="110,120" end="100" time="100" center="auto" reversible="false">UnFocus</animation>
            <posx>0</posx>
            <posy>0</posy>
            <width min="120">auto</width>
            <height>{{ vscale(143, 1.1) }}</height>
            <font>font10</font>
            <texturefocus colordiffuse="FFE5A00D" border="50">script.plex/buttons/blank-focus.png</texturefocus>
            <texturenofocus colordiffuse="99FFFFFF" border="50">script.plex/buttons/blank.png</texturenofocus>
            <textoffsetx>70</textoffsetx>
            <textcolor>FF000000</textcolor>
            <focusedcolor>FF000000</focusedcolor>
            <label>OK</label>
        </control>
    </control>

</control>
{% endblock controls %}
