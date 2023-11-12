#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Sun Oct 29 2023 - 20:05
#  Last Mod: Sun Oct 29 2023 - 20:05
#  Config:
#  Depends:
#  Note:
#
#!/bin/bash

# Wallpaper list text file
wallpaper_list="$HOME/Wallpapers/feh-favorites.txt"

# Retrieve list of wallpaper paths
wallpapers=$(cat "$wallpaper_list")

# Use FZF to select a wallpaper path
selected_wallpaper=$(echo "$wallpapers" | fzf --prompt="Select a wallpaper: ")

# Set the selected wallpaper using feh
feh --bg-fill "$selected_wallpaper"

