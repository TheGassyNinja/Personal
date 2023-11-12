#!/bin/bash
#
RAND=$(/bin/ls $HOME/.cache/tldr/pages/linux/ | shuf -n 1 | cut -d "." -f 1)

tldr $RAND
