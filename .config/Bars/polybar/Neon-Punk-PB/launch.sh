#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Sat Oct 21 2023 - 08:49
#  Last Mod: Sat Oct 21 2023 - 20:21
#  Config:
#  Depends:
#  Note:
#  TODO: Set-colors - Pick Modules - Make Bars - Scripts
#  Pallet: https://www.color-hex.com/color-palette/61235
#
#
#
#############################################################


#!/usr/bin/env sh
DIR='$HOME/.config/polybar/Neon-Punk-PB/config.ini'
    killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done
    polybar -c $DIR example &
    # polybar -c $DIR bg-base &

    echo "done"
