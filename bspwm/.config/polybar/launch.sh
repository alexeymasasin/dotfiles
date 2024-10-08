#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

polybar example &

if [[ $(xrandr -q | grep 'DisplayPort-2 connected') ]]; then
    polybar external &
fi

xrandr --addmode DisplayPort-2 1366x768 &
xrandr --output DisplayPort-2 --mode 1366x768 --left-of HDMI-A-0 &

if [[ $(xrandr -q | grep 'DisplayPort-2 disconnected 1366x768+0+0') ]] then
	polybar external &
fi
