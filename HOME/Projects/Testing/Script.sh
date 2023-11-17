#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Tue Nov 14 2023 - 07:49
#  Last Mod: Tue Nov 14 2023 - 09:39
#  Config:
#  Depends:
#  Note:
#

#!/bin/bash
clear
	if [[ ! playerctld ]]; then
		playerctld &
	fi

	if [[ $(playerctl status) = Stopped ]]; then
		exit 0
       else
		PLAYER=$(playerctl --player=spotify_player metadata -f {{playerName}})	
	fi	
		

# Player?
if 	[[ ! $PLAYER ]]; then 
		echo "No Player"
	elif
		[[ $PLAYER = spotify_player ]]; then
		set RECENTPLYR=Spot
		playerctl --player=spotify_player metadata -f '[Spot] {{trunc(artist, 20)}} - {{trunc(title, 20)}}'
	elif
		[[ $PLAYER = mpd ]]; then
		RECENTPLYR=Mpd
		playerctl metadata -f '[Mpd] {{artist}} - {{trunc(title, 20)}}'
				
fi


#
#
#
#

