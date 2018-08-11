#!/bin/bash

configFiles=( .xinitrc
.Xmodmap
.xscreensaver
.zprofile
.zshrc
.zshrc.pre
.config/cava/config
.config/tilda/config_cava
.config/xfce4/terminal/terminalrc
.config/xfce4/whiskermenu-1.rc
.config/xfce4/xfconf/xfce-perchannel-xml/displays.xml
.config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml
.config/xfce4/xfconf/xfce-perchannel-xml/pointers.xml
.config/xfce4/xfconf/xfce-perchannel-xml/ristretto.xml
.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml
.config/xfce4/xfconf/xfce-perchannel-xml/thunar-volman.xml
.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-notifyd.xml
.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-session.xml
.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
.config/yay/config.json
.conky/conky-startup.sh
.stellarium/config.ini
".conky/4 & 2 core blue/conkyrc2core"
'.themes/Circela Mod/xfwm4/*' )

IFS=""

for f in ${configFiles[*]}
do
    printf "%s\n" "$f"
done

# Move RunCava.sh to usr/bin directory