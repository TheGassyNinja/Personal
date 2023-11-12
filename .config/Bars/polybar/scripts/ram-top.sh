#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Sun Oct 22 2023 - 15:03
#  Last Mod: Mon Oct 23 2023 - 07:31
#  Config:
#  Depends:
#  Note:
#!/bin/bash
notify-send "$(free -h | awk '/^Mem:/ {print $3 " / " $2}')"
#
notify-send "$(ps axch -o cmd:15,%mem --sort=-%mem | head)"

## Path to the alternative Dunst configuration
#alt_config="/home/thegassyninja/.config/dunst/second-dunstrc"
#
## Send a notification using the alternative configuration
#send_notification_with_alt_config() { 
#  dunst -config "$alt_config" &
#  sleep 1  # Wait for Dunst to start
#  notify-send "Test (Alternative Config)"
#  pkill dunst
#}
#
## Send a notification using the standard configuration
#send_notification_with_standard_config() {
#  notify-send "Another Test (Standard Config)"
#}
#
## Usage: ./switch_dunst_config.sh
#send_notification_with_alt_config
#send_notification_with_standard_config
#
#


