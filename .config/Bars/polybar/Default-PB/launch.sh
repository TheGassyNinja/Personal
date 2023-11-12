

#!/usr/bin/env sh
DIR='$HOME/.config/polybar/Default-PB/config.ini'
    killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done
    polybar -c $DIR example &

    echo "done"
