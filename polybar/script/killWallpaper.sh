#!/bin/bash
# grep只返回第一个匹配: https://cloud.tencent.com/developer/ask/32477

command=$(ps aux | grep 'wallpapers.go' | grep -Eo "[0-9][0-9]|[0-9][0-9][0-9]|[0-9][0-9][0-9][0-9]|[0-9][0-9][0-9][0-9][0-9]" | head -1)
# kill -9 $command
if [ $command ]; then
    kill -15 $command;
fi

# wallpaper每 15秒一次切换，即使收到了退出信号，也会在完成当前任务后才退出
sleep 15s

cmd=$(ps aux | grep 'wallpapers.go' | grep -Eo "[0-9][0-9]|[0-9][0-9][0-9]|[0-9][0-9][0-9][0-9]|[0-9][0-9][0-9][0-9][0-9]" | head -1)

if [ $command == $cmd ]; then
    kill -9 $command;
fi