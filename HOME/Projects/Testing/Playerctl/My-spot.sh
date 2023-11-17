#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Thu Nov 16 2023 - 08:11
#  Last Mod: Thu Nov 16 2023 - 21:21
#  Config:
#  Depends:
#  Note:
#
#!/bin/bash
#set -x
metadata_file="$HOME/.local/tmp/spotify_player.txt"

#


spot_info() {
Artist="$(grep Artist $metadata_file | cut -d= -f2)"
Title="$(grep Title $metadata_file | cut -d= -f2)"
Album="$(grep Album $metadata_file | cut -d= -f2)"
clear
{
echo ""
echo ""
figlet -c $Artist
columns=$(tput cols)
echo -e $(printf "%${columns}s" | tr ' ' '_')
echo ""
text="$Title"
other_text="$Album"
line_length=$(( ${#text} + ${#other_text} + 7 )) # 7 is for the two spaces and the hyphen
columns=$(tput cols)
center_position=$(( (columns   -   line_length) / 2 ))
printf "%*s%s - %s\n" $center_position "" "$text" "$other_text"
columns=$(tput cols)
echo -e $(printf "%${columns}s" | tr ' ' '_')
echo ""
} | lolcat -F 0.75 -a -d 6 -s 30 -t -p 125  
#$HOME/Git/Welcome/Stats.sh # This Works BUT is better indy

}


spot_info 
monitor_variable() {
    while true; do
	current_value="$(grep Title $metadata_file | cut -d= -f2)"
        sleep 1
        if [ "$Title" != "$current_value" ]; then
            spot_info
            current_value="$Title"
        fi
    done
}
monitor_variable &
wait











#

