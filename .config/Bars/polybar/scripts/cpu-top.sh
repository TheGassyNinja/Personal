#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Mon Oct 23 2023 - 07:34
#  Last Mod: Mon Oct 23 2023 - 17:56
#  Config:
#  Depends:
#  Note:
#


#!/bin/bash
#
#sensors | awk '/^temp1/ {print $2}'
#sensors | awk '/^temp2/ {print $2}'

notify-send "$(ps axch -o cmd:15,%cpu --sort=-%cpu | head)"
#notify-send "$(ps axch -o cmd:15,%mem --sort=-%mem | head)"

