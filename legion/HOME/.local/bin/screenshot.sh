#!/usr/bin/env bash
set -euo pipefail

FILENAME="$(date +%Y-%m-%d_%H:%M:%S).png"
FILE="$HOME/Pictures/Screenshot/$FILENAME"


function ns() {
    notify-send \
        -a "screenshot" \
        -i "/usr/share/icons/Adwaita/symbolic/legacy/applets-screenshooter-symbolic.svg" \
        "Screenshot" \
        "$@"
}


if [[ $# -gt 0 ]]; then
   case "$1" in
       --active)
           maim --window="$(xdotool getactivewindow)" "$FILENAME"
           ns "$FILENAME"
           ;;

       --interactive)
           maim --select "$FILENAME"
           ns "$FILENAME"
           ;;

       --clipboard)
           maim --select | xclip -selection clipboard -t image/png
           ns
           ;;

       *)
           echo "Option ‘$1’ does not exist"
           ;;
   esac
else
    maim "$FILENAME"
    ns "$FILENAME"
fi
