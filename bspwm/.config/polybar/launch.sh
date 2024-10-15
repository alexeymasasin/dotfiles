#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

polybar main &

if [[ $(xrandr -q | grep 'DisplayPort-0 connected') ]]; then
    polybar main-external &
    xrandr --addmode DisplayPort-0 1366x768
    xrandr --output DisplayPort-0 --mode 1366x768 --left-of HDMI-A-0 &
fi

