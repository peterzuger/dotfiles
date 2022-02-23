#!/usr/bin/env sh
set -euo pipefail

i3lock -k -B=0\
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
       --radius=100
