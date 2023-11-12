#!/bin/bash

# Function to get current RAM usage percentage
get_ram_usage() {
    ram_percentage=$(free | awk '/Mem/{printf("%.2f", $3/$2*100)}')
    echo "$ram_percentage"
}

# Function to draw the animated progress bar
draw_progress_bar() {
    local percentage=$1
    local bar_width=50
    local filled_blocks=$(awk -v p="$percentage" 'BEGIN {print int(p * 50 / 100)}')
    local empty_blocks=$((bar_width - filled_blocks))

    local bar="["
    for ((i = 1; i <= filled_blocks; i++)); do
        bar+="█"
    done
    for ((i = 1; i <= empty_blocks; i++)); do
        bar+=" "
    done
    bar+="]"

    echo -ne "Ram: $bar ${percentage}%\r"
}

# Main loop
while true; do
    ram_percentage=$(get_ram_usage)
    draw_progress_bar "$ram_percentage"
    sleep 1
done

