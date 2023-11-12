#!/usr/bin/env sh
# _____ _           ____                     _   _ _        _       
#|_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#  | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#  | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#  |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                      |___/             |__/       
#  Spawned: Wed Jan 25 2023 - 07:47
#  Last Mod: Thu Jan 26 2023 - 08:18
#  Script:
#  Depends:
#  Note:
LYRICS=$HOME/.local/tmp/lyrics.txt
ARTIST=$(mpc current | cut -d "-" -f 1 | sed 's/^[ \t]*//;s/[ \t]*$//')
TITLE=$(mpc current | cut -d "-" -f 2 | sed 's/^[ \t]*//;s/[ \t]*$//')
prev_status=$(cat $HOME/.local/tmp/mpc-current.txt)
check_mpc_status() {
    status=$(mpc current)

    if [ -z "$status" ]; then
        echo "MPC is not running"
    else
        if [ "$status" != "$prev_status" ]; then
            echo $status > $HOME/.local/tmp/mpc-current.txt
              echo $status > $LYRICS && songLyrics "$ARTIST" "$TITLE" | grep -v "(ht" >> $LYRICS
        else
            cat $LYRICS
        fi
    fi
}

check_mpc_status






