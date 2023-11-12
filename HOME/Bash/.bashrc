# ______ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Sat Jan 21 2023 - 11:52
#  Last Mod: Sun Nov 12 2023 - 05:27
#  Config: Bashrc
#  Depends: bash_aliases - bash_functions
#  Note:


[[ $- != *i* ]] && return
export TERM=xterm-256color
EDITOR="/usr/bin/vim"
export CLIPS="$HOME/.local/tmp/clip.txt"
alias ccp="cat $CLIPS"
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
shopt -s autocd
export EDITOR
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/in-terms:$PATH"
export PATH="$HOME/.emacs/bin:$PATH"
export FZF_DEFAULT_COMMAND='fd -H --type f'
export FZF_DEFAULT_OPTS="--height 80% --layout=reverse --border=rounded"
alias fbat="fzf --preview 'bat --color=always {}' --preview-window '~3'"
export HISTCONTROL=ignoreboth:erasedups
shopt -s histappend
export HISTSIZE=10000

source $HOME/.bash_aliases
source $HOME/.bash_functions

PROMPT_COMMAND='EXIT=$(EXIT_CODE)'
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

#PS1s
# export PS1="[ \h ] - [ \W ]\n \$ --> " # Use on vbox..etc

# PS1 with old functions and playerctl in right corner
#PS1='\[$(tput sc; rightprompt; tput rc)\][\A] [\w]   `UPDATES``GIT_TEST``RAM_USE``CPU_USE``BG_JOBS`\n$EXIT-->'

# Works...
# PS1='\e[38;5;163m[\e[0m\e[38;5;51m\A\e[0m\e[38;5;163m]\e[0m \e[1;91m[ \e[0m\e[1;36m\w\e[0m\e[1;31m ]\e[0m   \e[1;32m`UPDATES`\e[0m`git-cb``GIT_TEST``RAM_USE``CPU_USE``BG_JOBS`\n$EXIT --> '

#--{ Gold and Purple W/dark Green (Current Fav) # Issue with time  ??? #
YELLOW='\[\033[38;2;250;156;6m'
MAGENTA='\[\033[38;2;162;0;255m'
GREEN='\[\033[38;2;12;84;97m'
RESET='\[\033[0m\]'

 PS1="${GREEN} ┌${RESET}${YELLOW}[${RESET}${MAGENTA} $(date +%R)${RESET}${YELLOW} ]${RESET}${MAGENTA}  [${RESET}${YELLOW} \w${RESET}${MAGENTA} ]${RESET} `GIT_TEST``CPU_USE``RAM_USE`  \n${GREEN} └───${RESET}${YELLOW} 󰣇 ${RESET}${GREEN} -->${RESET}"
# ---}




[ -f ~/.fzf.bash ] && source ~/.fzf.bash

