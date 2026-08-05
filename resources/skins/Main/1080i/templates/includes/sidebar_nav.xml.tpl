<!-- ========== SIDEBAR RAIL ========== -->
<!-- Renders last for z-order: paints on top of all content -->
<control type="group" id="9000">
    <posx>0</posx>
    <posy>0</posy>
    <width>300</width>
    <height>1080</height>

    <!-- User button at top (overlays avatar area) -->
    <control type="button" id="202">
        <posx>8</posx>
        <posy>{{ vscale(30) }}</posy>
        <width>284</width>
        <height>{{ vscale(64) }}</height>
        <font>font10</font>
        <textcolor>00000000</textcolor>
        <focusedcolor>00000000</focusedcolor>
        <align>left</align>
        <aligny>center</aligny>
        <ondown>9001</ondown>
        <onright>50</onright>
        <texturefocus colordiffuse="FFE5A00D" border="10">script.plex/white-square-rounded.png</texturefocus>
        <texturenofocus>-</texturenofocus>
        <label> </label>
    </control>
    <!-- User avatar area at top (visual overlay, not focusable) -->
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
        <onup>202</onup>
        <ondown>201</ondown>
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
        <posx>8</posx>
        <posy>{{ vscale(990) }}</posy>
        <width>284</width>
        <height>{{ vscale(50) }}</height>
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
    </control>
    <!-- Server icon + name overlay -->
    <control type="group">
        <posx>10</posx>
        <posy>{{ vscale(990) }}</posy>
        <width>280</width>
        <height>{{ vscale(50) }}</height>
        <control type="image">
            <posx>15</posx>
            <posy>{{ vscale(10) }}</posy>
            <width>30</width>
            <height>{{ vscale(30) }}</height>
            <texture>$INFO[Window.Property(server.icon)]</texture>
        </control>
        <!-- Server name (expanded only) -->
        <control type="label">
            <visible>ControlGroup(9000).HasFocus(0)</visible>
            <animation effect="fade" start="0" end="100" time="200">Visible</animation>
            <animation effect="fade" start="100" end="0" time="200">Hidden</animation>
            <posx>55</posx>
            <posy>0</posy>
            <width>210</width>
            <height>{{ vscale(50) }}</height>
            <font>font10</font>
            <align>left</align>
            <aligny>center</aligny>
            <textcolor>FFFFFFFF</textcolor>
            <label>$INFO[Window.Property(server.name)]</label>
        </control>
    </control>
</control>
