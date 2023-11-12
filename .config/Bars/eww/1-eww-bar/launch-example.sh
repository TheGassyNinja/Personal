
#!/bin/bash

EWW=`which eww`
CFG="$HOME/.config/eww/1-eww-bar"

## Run eww daemon if not running already
if [[ ! `pidof eww` ]]; then
	${EWW} daemon
	sleep 1
fi

## Open widgets 
run_eww() {
	${EWW} --config "$CFG" open volume
	${EWW} --config "$CFG" open time
 }

## Launch or close widgets accordingly
run_eww
