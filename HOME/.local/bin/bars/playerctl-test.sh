#!/usr/bin/env sh
# _____ _           ____                     _   _ _        _       
#|_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#  | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#  | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#  |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                      |___/             |__/       
#  Spawned: Wed Feb 01 2023 - 05:44
#  Last Mod: Wed Feb 01 2023 - 07:49
#  Script:
#  Depends:
#  Note:
#
	if [[ ! playerctld ]]; then
		playerctld &
	fi

PLAYER=$(playerctl metadata -f {{playerName}})

# Player?
if 	[[ ! $PLAYER ]]; then 
		echo "No Player"
	elif
		[[ $PLAYER = firefox ]]; then
		set RECENTPLYR=Fire
		playerctl metadata -f '[Fire] {{artist}} - {{trunc(title, 20)}}'
	elif 
		[[ $PLAYER = ncspot ]]; then
		RECENTPLYR=Spot
		playerctl metadata -f '[Spot] {{artist}} - {{trunc(title, 20)}}'
	elif
		[[ $PLAYER = mpd ]]; then
		RECENTPLYR=Mpd
		playerctl metadata -f '[Mpd] {{artist}} - {{trunc(title, 20)}}'
				
fi
# Control



