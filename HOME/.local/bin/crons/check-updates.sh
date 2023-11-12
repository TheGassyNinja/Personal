#!/usr/bin/env sh

UPD=$(checkupdates | wc -l)
echo $UPD > ~/.local/tmp/UPDATES.txt

