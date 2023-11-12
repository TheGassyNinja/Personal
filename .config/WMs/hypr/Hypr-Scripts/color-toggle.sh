#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Mon May 15 2023 - 19:31
#  Last Mod: Mon May 15 2023 - 19:57
#  Config:
#  Depends:
#  Note:
#
#!/bin/bash

function random_hex() {
    random_hex=("0x$(openssl rand -hex 3)ff")
    echo $random_hex
}

hyprctl keyword general:col.active_border $(random_hex)  $(random_hex) $(random_hex)  $(random_hex) $(random_hex)  $(random_hex) 180deg
hyprctl keyword general:col.inactive_border $(random_hex) $(random_hex) 45deg
