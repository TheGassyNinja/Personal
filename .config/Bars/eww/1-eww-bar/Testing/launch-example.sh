
#!/bin/bash

EWW=`which eww`
CFG="$HOME/.config/eww/1-eww-bar/Testing"

## Run eww daemon if not running already
if [[ ! `pidof eww` ]]; then
	${EWW} daemon
	sleep 1
fi

## Open widgets 
run_eww() {
	${EWW} --config "$CFG" open-many \
	       	volume \
		clock \
		power
#	${EWW} --config "$CFG" open clock
#	${EWW} --config "$CFG" open power
 }

## Launch or close widgets accordingly
run_eww
