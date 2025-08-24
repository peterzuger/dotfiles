#!/usr/bin/env sh
set -euo pipefail

RES=$(xrandr --current | grep '\*' | uniq | head -n 1 | awk '{print $1}')
# RES_X=$(echo "$RES" | cut -d 'x' -f1)
RES_Y=$(echo "$RES" | cut -d 'x' -f2)

echo "locking at $(date +%Y-%m-%d_%H:%M:%S)"
i3lock --clock --blur=0\
       --ignore-empty-password\
       --show-failed-attempts\
       --date-str="%d %m %Y"\
       --insidever-color=808080FF\
       --insidewrong-color=FF0000FF\
       --inside-color=40404080\
       --ringver-color=7F9F7FFF\
       --ringwrong-color=FF0000FF\
       --ring-color=7F9F7FFF\
       --line-color=000000FF\
       --keyhl-color=000000FF\
       --bshl-color=000000FF\
       --separator-color=000000FF\
       --verif-color=F6F3E8FF\
       --wrong-color=FF0000FF\
       --time-color=F6F3E8FF\
       --date-color=F6F3E8FF\
       --indicator\
       --pass-media-keys\
       --pass-screen-keys\
       --pass-power-keys\
       --pass-volume-keys\
       --radius=$((RES_Y/10))\
       --nofork
echo "unlocked at $(date +%Y-%m-%d_%H:%M:%S)"
