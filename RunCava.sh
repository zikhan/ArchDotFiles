#!/bin/bash
tilda -g /home/zovin/.config/tilda/config_cava t 100 &
sleep 0.3
wmctrl -r tilda -b add,below,sticky
wmctrl -r tilda -b add,skip_taskbar,skip_page
wmctrl -r tilda -b add,maximized_horz,maximized_vert
