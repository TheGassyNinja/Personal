#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Thu Sep 21 2023 - 01:10
#  Last Mod: Thu Sep 21 2023 - 02:01
#  Config: BSPWM
#  Depends: packages-list.txt
#  Note:
#
#!/bin/bash
LIST=~/.config/bspwm/Scripts/packages-list.txt
YAY=~/.config/bspwm/Scripts/yay-list.txt
sudo pacman -S $(cat $LIST | grep -v "#")

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

yay -S $(cat $YAY | grep -v "#")
