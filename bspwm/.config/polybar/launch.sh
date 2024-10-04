#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

polybar example &

if [[ $(xrandr -q | grep 'DP-1-0 connected') ]]; then
    polybar external &
fi