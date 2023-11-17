
#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Wed Nov 15 2023 - 07:02
#  Last Mod: Fri Nov 17 2023 - 01:46
#  Config:
#  Depends:
#  Note:
#
#		playerctl --player=spotify_player metadata -f '[Spot] {{trunc(artist, 20)}} - {{trunc(title, 20)}}'
#!/bin/bash
set -x


	if [[ ! playerctld ]]; then
		playerctld &
	fi

album_art="$HOME/.cache/spotify-player/image/"
metadata_file="$HOME/.local/tmp/spotify_player.txt"


clear 
inotifywait -m -e access "$album_art" | while read changed_file; do
sleep 3.5
echo "Artist=$(playerctl -p spotify_player metadata artist)" > $metadata_file
echo "Title=$(playerctl -p spotify_player metadata title)" >> $metadata_file
echo "Album=$(playerctl -p spotify_player metadata album)" >> $metadata_file
done











##############################








