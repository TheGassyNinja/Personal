#!/usr/bin/env sh
# _____ _           ____                     _   _ _        _       
#|_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#  | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#  | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#  |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                      |___/             |__/       
#  Spawned: Wed Jan 25 2023 - 07:47
#  Last Mod: Wed Jan 25 2023 - 08:05
#  Script:
#  Depends:
#  Note:
ARTIST=$(mpc current | cut -d "-" -f 1 | sed 's/^[ \t]*//;s/[ \t]*$//')
TITLE=$(mpc current | cut -d "-" -f 2 | sed 's/^[ \t]*//;s/[ \t]*$//')

echo "$ARTIST - $TITLE" && songLyrics "$ARTIST" "$TITLE" | grep -v "(ht"
