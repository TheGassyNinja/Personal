#!/usr/bin/env bash

xset s off -dpms
xrandr --output eDP-1 --off --output HDMI-1 --auto --primary
#/usr/bin/emacs -daemon --with-x-toolkit=lucid &
bspc wm -r
#kitty &
#sleep 1
#$HOME/Scripts/layout1.sh
#sleep 3
#$HOME/Scripts/pywal-switcher.sh
