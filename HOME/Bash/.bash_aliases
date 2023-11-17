#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Sat Jan 21 2023 - 11:41
#  Last Mod: Thu Nov 16 2023 - 20:51
#  Config: Bash Aliases
#  Depends: Neofetch (Dir) - exa - expac - inxi - dunst - cava (Dir) - nfs 
# 
#

# Bash Aliases

alias c='clear'
alias cl='clear && neofetch --config ~/.config/neofetch/colorsonly.conf && la'
alias cb='neofetch --config ~/.config/neofetch/colorsonly.conf'

# Replace ls with exa
alias ls='cb && exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.="exa -a | egrep '^\.'"                                     # show only dotfiles
alias ip="ip -color"

alias grep='grep --color=auto'

alias br='source ~/.bashrc'

alias pac='sudo pacman -S'
alias pac-rm='sudo pacman -Rs'
alias pac-srch='sudo pacman -Ss'
alias pac-info='sudo pacman -Qi'
alias update='sudo pacman -Syu && echo "0" > ~/.local/tmp/UPDATES.txt'
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -500 | nl > ~/rip.txt"

alias ~='cd $HOME'
alias Scripts='cd $HOME/Scripts/'
alias Downloads='cd $HOME/Downloads'
alias Music='cd $HOME/Music'

alias Weather='notify-send "$(inxi -xxx -W 76226)"'
alias status='~/.local/bin/in-terms/stats.sh'

alias jctl="journalctl -p 3 -xb"

alias vup='pactl set-sink-volume 0 +10%'
alias vdn='pactl set-sink-volume 0 -10%'

alias MNT-NFS="sudo mount -t nfs -o vers=4 192.168.254.169:/srv/nfs/DataT ~/mnt/DataT"
alias MNT-JEN="sudo mount -t nfs -o vers=4 192.168.254.169:/srv/nfs/Jenny ~/mnt/Jenny"
# alias killani='ps -aux | grep back4.sh | kill $(awk "{print $2}")'
alias cac='cava -p ~/.config/cava/config'
alias cal='cava -p ~/.config/cava/left-config'
alias car='cava -p ~/.config/cava/right-config'

# Spotify_Player things
alias NP='cmd-playerctl'
alias sp='playerctl --player=spotify_player play-pause'
alias sl='spotify_player like'
alias sn='spotify_player playback next'

# Alactrity Themes (FZF)
alias AT='$HOME/.config/alacritty/Scripts/theme.sh'
alias chx='chmod +x'

# POWER-MENU (FZF)
alias FS='$HOME/.local/bin/in-terms/fzf/power-fzf.sh'

# Pick Wallpaper (FZF)
alias PW='$HOME/.local/bin/in-terms/fzf/feh-fzf.sh'

# Alias to store current wallpaper path to a text file
alias FW='$HOME/.local/bin/Fave-Feh.sh'

# Random Wallpaper from favorite list
alias RW='$HOME/.local/bin/crons/Feh-Random.sh'

# FZF demnu
alias menu='$(compgen -c | sort -u | fzf | xargs which &)'










###
