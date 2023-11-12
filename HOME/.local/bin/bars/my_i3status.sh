#!/bin/bash

# shell script to prepend i3status with more stuff

i3status -c ~/.config/i3status/i3status.conf | while :
do
        read line
        echo "mystuff | $line" || exit 1
done
