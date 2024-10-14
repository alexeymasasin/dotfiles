#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

polybar example &

if [[ $(xrandr -q | grep 'DisplayPort-0 connected') ]]; then
    polybar external &
    xrandr --output DisplayPort-0 --mode 1920x1080 --below HDMI-A-0 &
fi

