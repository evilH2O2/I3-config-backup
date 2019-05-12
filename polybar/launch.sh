#!/usr/bin/env bash

# 自动切换壁纸
# source ~/.config/polybar/script/killWallpaper.sh
command=$(ps aux | grep 'wallpapers.go' | grep -Eo "[0-9][0-9]|[0-9][0-9][0-9]|[0-9][0-9][0-9][0-9]|[0-9][0-9][0-9][0-9][0-9]" | head -1)
kill -9 $command;

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
polybar -c ~/.config/polybar/top-config.ini top &
polybar -c ~/.config/polybar/bottom-config.ini bottom &


echo "Bars launched..."


