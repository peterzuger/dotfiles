#!/usr/bin/env bash

MONITORS=($(xrandr | grep " connected " | awk '{ print$1 }'))
LID_STATE=$(awk '{ print$2 }' /proc/acpi/button/lid/LID/state)

if [ $LID_STATE = "closed" ]; then
    XRANDR_CMD="xrandr --output ${MONITORS[0]} --off --auto --output ${MONITORS[1]} --primary --auto"
    MONITORS=("${MONITORS[@]:1}")
else
    XRANDR_CMD="xrandr --output ${MONITORS[0]} --primary --auto"
fi

for (( i = 1; i < ${#MONITORS[@]}; ++i ))
do
    XRANDR_CMD+=" --output ${MONITORS[$i]} --left-of ${MONITORS[$i-1]} --auto"
done

if [ $# -ne 0 ]; then
    echo $XRANDR_CMD
fi

eval $XRANDR_CMD
feh --bg-fill /usr/share/Backgrounds/Background.png
