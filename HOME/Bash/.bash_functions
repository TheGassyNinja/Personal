# Bash Functions

cmd-new () {
	if [ -n "$1" ]; then
		CMDTXT="$1" FILE="$HOME/Hotkeys/$CMDTXT.txt"
	else 
		printf "Must provide command\n" ; return 1
			fi

			if [ ! -e $FILE ]; then
				tldr $1 > $HOME/.local/tmp/tl.txt 
					cp ~/skels/cmd.txt $FILE;
	tldr $1 >> $FILE;
	sed -i "s/<command>/$CMDTXT/g" $FILE;
			else
				printf "file exsits\n" ; return 1
					fi
}

cmd-edit () {
	if [ -n "$1" ]; then
		FILE="$1.txt"
			vim $HOME/Hotkeys/$FILE
	else
		echo "Must supply command to edit" ; return 1
			fi
}

cd () {
	if [ -n "$1" ]; then
		builtin	cd "$@" && exa -a --color=always --group-directories-first --icons && br 
	else
		builtin cd ~ && la
			fi
}


############ PS1 Functions #############
function UPDATES { 
	if [[ $(cat ~/.local/tmp/UPDATES.txt) < 5 ]]; then
		sleep 0
	else
		echo -e "[UpDates: $(cat ~/.local/tmp/UPDATES.txt)]"
			fi
}


## Check if mpc is playing music and report. (for PS1)
#
#function mpc_current {
#   if [[ $(mpc current) ]]; then
#      echo -e "[ $(mpc current) ]"
#    else
#      sleep 0
#   fi
#}

# TEst CPU FUN
function CPU_USE {
	if [[ $(cat ~/.local/tmp/CPU.txt) < 10 ]]; then
		echo -e "${YELLOW}[${RESET}${MAGENTA} CPU: $(cat ~/.local/tmp/CPU.txt)%${RESET}${YELLOW} ]${RESET}"
	else
		sleep 0
			fi
}

# RAM Usage
function RAM_USE {
	if [[  $(free | grep Mem | awk '{print $3/$2 * 100.0}' | cut -d . -f 1) -gt 25 ]]; then
		echo -e "${MAGENTA}[${RESET}${YELLOW} RAM: $(free | grep Mem | awk '{print $3/$2 * 100.0}' | cut -d . -f 1)%${RESET}${MAGENTA} ]${RESET} "
			fi
}


function EXIT_CODE {
	if [[ $? = 0 ]]; then
		sleep 0
	else
		echo "[$?]" ; PROMPT_COMMAND=""
			fi
}

function BG_JOBS {
	if [[ $(jobs -r | wc -l) = 0 ]]; then
		sleep 0
	else
		echo " <$(jobs -r | wc -l)>"
			fi
}



## Right Prompt
#function rightprompt()
#{
#    printf "%*s" $COLUMNS "`cmd-playerctl`"
#}

#-----#Git Test#---#

GIT_YES () {
	if [[ $(git status --porcelain | wc -l) > 0 ]]; then
		echo -en "${YELLOW}[${RESET}${MAGENTA} $(git status --porcelain | wc -l) ${RESET}${YELLOW}]${RESET}${MAGENTA} [${RESET}${YELLOW} $(git branch --show-current)${RESET}${MAGENTA} ]${RESET} "
	else
		echo "[Git:0] "
			fi
}

function GIT_TEST {
	if [[ -d .git ]]; then
		GIT_YES
		  
 fi
}

# FZF
function B-Search () {
	if [[ -n "$1" ]]; then
		SELECT=$(kjv /$1 | fzf); echo $SELECT | awk '{print $1" "$2" "$3}'
	else
		echo "needs input"	
			fi	

}


##### Testing ###
#
#
# CLIPfunction (pipe output of command into clip.txt)

