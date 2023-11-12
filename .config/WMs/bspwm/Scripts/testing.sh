#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Sun Oct 22 2023 - 15:24
#  Last Mod: Sun Oct 22 2023 - 15:56
#  Config:
#  Depends:
#  Note:
#
#
#!/bin/bash
#

file_path="$HOME/mnt/DataT/MOUNTED.txt"

# Check if the file exists
if [ -e "$file_path" ]; then
    notify-send "DataT  -->  MOUNTED"
else
    sudo mount -t nfs -o vers=4 192.168.254.169:/srv/nfs/DataT ~/mnt/DataT & notify-send "DataT  -->  NOW-MOUNTING" & sleep 1
fi

if [ -e "$file_path" ]; then
    notify-send "DataT  -->  MOUNTED"
else
	notify-send "ERROR!!!!! (DataT)"
fi

file_path="$HOME/mnt/USB/MOUNTED.txt"

# Check if the file exists
if [ -e "$file_path" ]; then
    notify-send "USB    -->  MOUNTED"
else
    notify-send "USB    -->  NOT-MOUNTED"
fi

file_path="$HOME/mnt/Jenny/MOUNTED.txt"

# Check if the file exists
if [ -e "$file_path" ]; then
    notify-send "Jenny  -->  MOUNTED"
else
    sudo mount -t nfs -o vers=4 192.168.254.169:/srv/nfs/Jenny ~/mnt/Jenny & notify-send "Jenny  -->  NOW-MOUNTING" & sleep 1
fi

if [ -e "$file_path" ]; then
    notify-send "Jenny  -->  MOUNTED"
else
	notify-send "ERROR!!!!! (JENNY)"
fi

#  alias MNT-NFS="sudo mount -t nfs -o vers=4 192.168.254.169:/srv/nfs/DataT ~/mnt/DataT"
#  alias MNT-JEN="sudo mount -t nfs -o vers=4 192.168.254.169:/srv/nfs/Jenny ~/mnt/Jenny"
#  
#
#
#
#
#

