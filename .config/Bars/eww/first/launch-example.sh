
#!/bin/bash

EWW=`which eww`
CFG="$HOME/mnt/DataT/Backups/.config/eww/first"

## Run eww daemon if not running already
if [[ ! `pidof eww` ]]; then
	${EWW} daemon
	sleep 1
fi

## Open widgets 
run_eww() {
	${EWW} --config "$CFG" open-many \
		   music \
		   playlist \
		   volume \
		   lyrics \
		   popper 
}

## Launch or close widgets accordingly
run_eww
