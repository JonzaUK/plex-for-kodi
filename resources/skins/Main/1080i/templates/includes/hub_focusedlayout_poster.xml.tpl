<!-- Poster focused layout (300x444) - uses hub_id variable -->
<focusedlayout width="343" condition="String.IsEqual(Window.Property(hub.display.{{ hub_id }}),poster)">
    <control type="group">
        <posx>55</posx>
        <posy>{{ vscale(72) }}</posy>
        <control type="group">
            <animation effect="zoom" start="100" end="110" time="100" center="155,{{ vscale(222) }}" reversible="false">Focus</animation>
            <animation effect="zoom" start="110" end="100" time="100" center="155,{{ vscale(222) }}" reversible="false">UnFocus</animation>
            <posx>0</posx>
            <posy>0</posy>
            <control type="image">
                <visible>Control.HasFocus({{ hub_id }})</visible>
                <posx>-40</posx>
                <posy>{{ vscale(-40) }}</posy>
                <width>390</width>
                <height>{{ vscale(534) }}</height>
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
                        <width>300</width>
                        <height>{{ vscale(444) }}</height>
                        <texture colordiffuse="FF404040">script.plex/white-square.png</texture>
                    </control>
                    <control type="image">
                        <visible>String.IsEmpty(ListItem.Property(is.updating))</visible>
                        <posx>119.5</posx>
                        <posy>{{ vscale(172) }}</posy>
                        <width>61</width>
                        <height>{{ vscale(100) }}</height>
                        <texture colordiffuse="40000000">script.plex/indicators/chevron-white.png</texture>
                    </control>
                    <control type="image">
                        <visible>!String.IsEmpty(ListItem.Property(is.updating))</visible>
                        <posx>86</posx>
                        <posy>{{ vscale(158) }}</posy>
                        <width>128</width>
                        <height>{{ vscale(128) }}</height>
                        <texture>script.plex/home/busy.gif</texture>
                    </control>
                </control>
                <control type="image">
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>300</width>
                    <height>{{ vscale(444) }}</height>
                    <texture>$INFO[ListItem.Property(thumb.fallback)]</texture>
                </control>
                <control type="image">
                    <posx>0</posx>
                    <posy>0</posy>
                    <width>300</width>
                    <height>{{ vscale(444) }}</height>
                    <texture background="true">$INFO[ListItem.Thumb]</texture>
                    <aspectratio>scale</aspectratio>
                </control>
                <control type="group">
                    <visible>!String.IsEmpty(ListItem.Property(progress))</visible>
                    <posx>0</posx>
                    <posy>{{ vscale(434) }}</posy>
                    <control type="image">
                        <posx>0</posx>
                        <posy>0</posy>
                        <width>300</width>
                        <height>{{ vscale(10) }}</height>
                        <texture>script.plex/white-square.png</texture>
                        <colordiffuse>C0000000</colordiffuse>
                    </control>
                    <control type="image">
                        <posx>0</posx>
                        <posy>1</posy>
                        <width>300</width>
                        <height>{{ vscale(8) }}</height>
                        <texture>$INFO[ListItem.Property(progress)]</texture>
                        <colordiffuse>FFCC7B19</colordiffuse>
                    </control>
                </control>
                <control type="label">
                    <scroll>Control.HasFocus({{ hub_id }})</scroll>
                    <posx>0</posx>
                    <posy>{{ vscale(454) }}</posy>
                    <width>300</width>
                    <height>{{ vscale(35) }}</height>
                    <font>font10</font>
                    <align>center</align>
                    <textcolor>FFFFFFFF</textcolor>
                    <label>$INFO[ListItem.Label]</label>
                </control>
                <control type="label">
                    <scroll>Control.HasFocus({{ hub_id }})</scroll>
                    <visible>!String.IsEmpty(Window.Property(hub.text2lines.{{ hub_id }}))</visible>
                    <posx>0</posx>
                    <posy>{{ vscale(481) }}</posy>
                    <width>300</width>
                    <height>{{ vscale(35) }}</height>
                    <font>font10</font>
                    <align>center</align>
                    <textcolor>FFFFFFFF</textcolor>
                    <label>$INFO[ListItem.Label2]</label>
                </control>
                {% include "includes/watched_indicator.xml.tpl" with xoff=300 & uw_size=48 & with_count=True & scale="medium" %}
            </control>
            <control type="image">
                <visible>Control.HasFocus({{ hub_id }})</visible>
                <posx>0</posx>
                <posy>0</posy>
                <width>310</width>
                <height>{{ vscale(454) }}</height>
                <texture border="10">script.plex/home/selected.png</texture>
            </control>
        </control>
    </control>
</focusedlayout>
