# ______ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Sat Jan 21 2023 - 11:52
#  Last Mod: Fri Nov 17 2023 - 01:17
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
source $HOME/.local/tmp/MasterStorage.txt

# Import the path to the temporary file
cpu_file="$HOME/.local/tmp/CPU.txt"


PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
PROMPT_COMMAND='EXIT=$(EXIT_CODE); update_ps1'


#	#FA9C06 (250,156,6)
#	#A200FF (162,0,255)
#	#0C5461 (12,84,97)
#	#5f9ea0	(95,158,160)
#	#49796b	(73,121,107)


YELLOW='\[\033[38;2;250;156;6m'
MAGENTA='\[\033[38;2;162;0;255m'
GREEN='\[\033[38;2;12;84;97m'
BLUE='\[\033[38;2;95;158;160m'
CYAN='\[\033[38;2;73;121;107m'
RESET='\[\033[0m\]'


update_ps1() {
    CPU=$(cat $cpu_file)
	PS1="${YELLOW}[${RESET} ${MAGENTA}\A${RESET}${YELLOW} ]${RESET}${MAGENTA} [${RESET}${YELLOW} \w${RESET}${MAGENTA} ]${RESET} `GIT_TEST``RAM_USE`${BLUE}[${RESET}${CYAN}CPU:$CPU%${RESET}${BLUE}]${RESET}`BG_JOBS`\n$EXIT --> "
}

update_ps1

## Set PROMPT_COMMAND to call the update_ps1 function before each prompt
#PROMPT_COMMAND='update_ps1'







#PS1s
# export PS1="[ \h ] - [ \W ]\n \$ --> " # Use on vbox..etc

# PS1 with old functions and playerctl in right corner
#PS1='\[$(tput sc; rightprompt; tput rc)\][\A] [\w]   `UPDATES``GIT_TEST``RAM_USE``CPU_USE``BG_JOBS`\n$EXIT-->'


## Works...
#PS1="${YELLOW}[${RESET} ${MAGENTA}\A${RESET}${YELLOW} ]${RESET}${MAGENTA} [${RESET}${YELLOW} \w${RESET}${MAGENTA} ]${RESET} `GIT_TEST``RAM_USE`[ CPU: $CPU ]`BG_JOBS`\n$EXIT --> "

##--{ Gold and Purple W/dark Green (Current Fav) # Issue with time  ??? #
#YELLOW='\[\033[38;2;250;156;6m'
#MAGENTA='\[\033[38;2;162;0;255m'
#GREEN='\[\033[38;2;12;84;97m'
#RESET='\[\033[0m\]'

# PS1="${GREEN} ┌${RESET}${YELLOW}[${RESET}${MAGENTA} $(date +%R)${RESET}${YELLOW} ]${RESET}${MAGENTA}  [${RESET}${YELLOW} \w${RESET}${MAGENTA} ]${RESET} `GIT_TEST``CPU_USE``RAM_USE`  \n${GREEN} └───${RESET}${YELLOW} 󰣇 ${RESET}${GREEN} -->${RESET}"
# ---}




[ -f ~/.fzf.bash ] && source ~/.fzf.bash

