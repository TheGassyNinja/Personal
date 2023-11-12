#!/bin/bash
#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Tue Feb 07 2023 - 16:20
#  Last Mod: Wed Feb 08 2023 - 01:55
#  Config:
#  Depends:
#  Note:
#
DIR1="$HOME/.config"
DIR2="$HOME/Suckless"

declare -A CONFS 
CONFS[Xinitrc]=$HOME/.xinitrc
CONFS[Xresources]=$HOME/.Xresources
CONFS[Bashrc]=$HOME/.bashrc
CONFS[Vimrc]=$HOME/.vimrc
CONFS[Picom]=$DIR1/picom.conf
CONFS[Kitty]=$DIR1/kitty/kitty.conf
CONFS[Alacritty]=$DIR1/alacritty/alacritty.yml
CONFS[DWM]=$DIR2/dwm/dwm/config.h
CONFS[SlStatus]=$DIR2/dwm/slstatus/config.h
CONFS[Dmenu]=$DIR2/dmenu/config.h
CONFS[ST]=$DIR2/st/config.h

choice=$(printf '%s\n' "${!CONFS[@]}" | fzf --prompt='Config :' --border=rounded --margin=5% --color=dark --height=100% --reverse --header='Config List' --info=hidden --header-first)
	if [ "$choice" ]; then
             CFG=$(printf '%s\n' "${CONFS["${choice}"]}")
            vim $CFG
    	else
        	exit 0
	fi

