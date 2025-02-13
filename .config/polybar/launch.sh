#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar main -c ~/.config/polybar/config.ini &

# Replace DP1-1 with DP2-1 if two external monitors
if [[ $(xrandr -q | grep 'DP1-1 connected') ]]; then
	nm-applet &
	polybar external -c ~/.config/polybar/config.ini &
fi


if [[ $(xrandr -q | grep 'HDMI1 connected') ]]; then
	nm-applet &
	polybar third -c ~/.config/polybar/config.ini &
fi
#if [[ $(xrandr -q | grep 'DP1-2 connected') ]]; then
#	polybar third -c ~/.config/polybar/config.ini &
#fi
