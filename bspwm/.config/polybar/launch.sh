#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

polybar example &

if [[ $(xrandr -q | grep 'DisplayPort-0 connected') ]]; then
    polybar external &
    xrandr --addmode DisplayPort-0 1366x768
    xrandr --output DisplayPort-0 --mode 1366x768 --below HDMI-A-0 &
fi

