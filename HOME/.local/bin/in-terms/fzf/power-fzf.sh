#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | _| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Sun Oct 29 2023 - 17:01
#  Last Mod: Sun Oct 29 2023 - 18:26
#  Config: fzf power-menu 
#  Depends: fzf
#  Note: ( Proper umount on reboot/shutdown?? )  -  
###  Syntax Used 
# fzf --prompt='Config :' --border=rounded --margin=5% --color=dark --height=100% --reverse --header='Config List' --info=hidden --header-first
# 
###


#!/bin/bash


# Define the options
options=("Reboot" "Kill X Server" "Shutdown")

# Run FZF to select an option
selected_option=$(printf '%s\n' "${options[@]}" | fzf --prompt='SET SYSTEM STATE :' --border=rounded --margin=5% --color=dark --height=100% --reverse --header='System Menu' --info=hidden --header-first)

# Perform the selected action
case $selected_option in
    "Reboot")
        sudo reboot
        ;;
    "Kill X Server")
        sudo pkill Xorg
        ;;
    "Shutdown")
        sudo shutdown now
        ;;
    *)
        echo "No action selected."
        ;;
esac






