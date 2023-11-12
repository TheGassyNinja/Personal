#  _____ _           ____                     _   _ _        _       
# |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
#   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
#   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
#   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
#                                       |___/             |__/       
#   Spawned: Sun Sep 24 2023 - 14:08
#  Last Mod: Tue Sep 26 2023 - 02:43
#  Script: Cat Current System Status
#  Depends: .local/tmp files () and running scripts
#  Note:
#
#!/bin/bash
# Vars


echo " "
echo "[RAM: $(free | grep Mem | awk '{print $3/$2 * 100.0}' | cut -d . -f 1)%]   [CPU: $(cat ~/.local/tmp/CPU.txt)%]"
echo " "
echo "Battery  -->  $(inxi -B | grep "BAT0" | awk '{print$6}')"
echo " "
echo ">>>  Speed  <<<"
cat ~/.local/tmp/NETSPEED.txt



# ---------------------->> SSH SECTION 
#
# Use ss to list all active SSH connections (both incoming and outgoing)
ssh_connections=$(ss -t -n | awk '$1 == "ESTAB" && ($NF ~ /:22$/ || $4 ~ /:22$/) {print $5}' | cut -d: -f1 | sort -u)

# Display the list of SSH connections
echo " "
echo "Active SSH Connections:"
for connection in $ssh_connections; do
    echo "$connection"
done

if [[ $connection = 192.168.254.122 ]]; then
	echo "  "
   else 
	   echo " "
	   echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"
	   echo ">>>>>  UNKNOWN SSH!! <<<<<<<"
	   echo "/\/\/\/\/\/\/\/\/\/\/\/\/\/\/"
	   echo " "
# Use ss to list all active SSH connections (both incoming and outgoing)
    ssh_connections=$(ss -t -n | awk '$1 == "ESTAB" && ($NF ~ /:22$/ || $4 ~ /:22$/) {print $5, $4}')
#    
#    # Display the list of SSH connections with labels
    for connection in $ssh_connections; do
        remote_ip=$(echo "$connection" | cut -d' ' -f1)
        local_ip=$(echo "$connection" | cut -d' ' -f2)
        
        if [[ "$local_ip" == *:22 ]]; then
            direction="Incoming"
        else
            direction="Outgoing"
        fi
        
        echo "$direction SSH Connection: $remote_ip"
	   echo " "
    done
fi

# 

echo ">>>  Mounts  <<<"

# Define the file path you want to check
file_path="$HOME/mnt/DataT/MOUNTED.txt"

# Check if the file exists
if [ -e "$file_path" ]; then
    echo "DataT  -->  MOUNTED"
else
    echo "DataT  -->  NOT-MOUNTED"
fi

file_path="$HOME/mnt/USB/MOUNTED.txt"

# Check if the file exists
if [ -e "$file_path" ]; then
    echo "USB    -->  MOUNTED"
else
    echo "USB    -->  NOT-MOUNTED"
fi

file_path="$HOME/mnt/Jenny/MOUNTED.txt"

# Check if the file exists
if [ -e "$file_path" ]; then
    echo "Jenny  -->  MOUNTED"
else
    echo "Jenny  -->  NOT-MOUNTED"
fi

#

if [[ ! tmux ]]; then
	echo "No session"
else
	echo " "
	echo " >>>> Tmux Sessions <<<< "
	echo "$(tmux ls | awk '{print $1, $2, $3, $10}')"
	echo " "
fi






