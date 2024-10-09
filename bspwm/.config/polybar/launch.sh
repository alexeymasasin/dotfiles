#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

polybar example &

if [[ $(xrandr -q | grep 'DisplayPort-2 connected') ]]; then
    polybar external &
fi

