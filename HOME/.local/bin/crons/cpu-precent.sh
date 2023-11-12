#!/bin/bash

# Get the average CPU usage across all cores using mpstat and awk
CPU=$(mpstat 1 1 | awk '/Average:/ { printf("%.2f\n", 100 - $NF) }')

echo $CPU > ~/.local/tmp/CPU.txt
