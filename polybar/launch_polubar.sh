#!/usr/bin/env bash

killall -q polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar -c ~/.config/polybar/top-config.ini top &
    MONITOR=$m polybar -c ~/.config/polybar/bottom-config.ini bottom &
  done
else
    polybar -c ~/.config/polybar/top-config.ini top &
    polybar -c ~/.config/polybar/bottom-config.ini bottom &
fi