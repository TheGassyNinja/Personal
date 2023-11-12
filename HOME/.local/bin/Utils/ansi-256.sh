#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Mon Nov 06 2023 - 08:39
#  Last Mod: Mon Nov 06 2023 - 17:49
#  Config:
#  Depends:
#  Note:
#!/bin/bash



for ((i=0; i<256; i++)); do
    printf "\e[48;2;1;1;43m\e[38;5;%sm%3d   \e[0m" "$i" "$i"
    if (( (i + 1) % 8 == 0 )); then
        printf "\n\n"
    fi
done
# Loop through a portion of the RGB color range (0-255)
for r in {0..5}; do
    for g in {0..5}; do
        for b in {0..5}; do
            printf "\e[48;2;$(($r*51));$(($g*51));$(($b*51))m\e[38;2;$(($((5-r))*51));$(($((5-g))*51));$(($((5-b))*51))m▉\e[0m"
        done
    done
done


## ANSI COLORS
#for i in {0..255}; do
#    printf "\x1b[48;5;%sm%3d\e[0m " "$i" "$i"
#    if (( (i + 1) % 8 == 0 )); then
#        printf "\n"
#    fi
#done
