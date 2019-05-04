#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
polybar -c ~/.config/polybar/top-config.ini top &
polybar -c ~/.config/polybar/bottom-config.ini bottom &


echo "Bars launched..."


