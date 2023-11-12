#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Wed Oct 18 2023 - 18:29
#  Last Mod: Mon Oct 23 2023 - 01:42
#  Config:
#  Depends:
#  Note:
#
#!/bin/bash

if pgrep mpd > /dev/null; then
	pkill mpd && mpd &
      else
	mpd &
fi

if pgrep easyeffects > /dev/null; then
       pkill easyeffects && easyeffects --gapplication-service & 
     else
	  easyeffects --gapplication-service &
fi

if pgrep polybar > /dev/null; then
	pkill polybar && $HOME/.config/polybar/launch.sh &
      else
	      $HOME/.config/polybar/launch.sh &
fi

if pgrep nitrogen > /dev/null; then 
	pkill nitrogen && nitrogen -restore &
      else
	 nitrogen --restore &
fi  

if pgrep picom > /dev/null; then 
	pkill picom && sleep 1 && picom &
      else
	 picom & 
fi  

if pgrep --full "kitty --class kitkat" > /dev/null; then
		pkill -f "kitty --class kitkat"; sleep 1 && kitty --class kitkat sh -c "cava" &
	else 
		kitty --class kitkat sh -c "cava" &
fi

$HOME/.config/bspwm/Scripts/MNT-NFS.sh
alacritty & 
sleep 1
bspc node -p south
bspc node -o 0.85 
alacritty -e cava -p ~/.config/cava/right-config & 
sleep 1.5 
bspc node -p west
bspc node -o 0.75
alacritty -e cava -p ~/.config/cava/left-config & 

sleep 1
bspc node -o 0.34
alacritty -e cava &
sleep 1
bspc node -f north
alacritty &


exit








