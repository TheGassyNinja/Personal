#!/bin/bash

wallpaper_file=~/Wallpapers/feh-favorites.txt

# Get a random line (wallpaper path) from the text file
random_wallpaper=$(shuf -n 1 "$wallpaper_file")

# Set the selected wallpaper using feh with the specified display
feh --bg-fill "$random_wallpaper"

