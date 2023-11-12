#!/bin/bash

# Get the average CPU usage across all cores using mpstat and awk
average_cpu_percentage=$(mpstat 1 1 | awk '/Average:/ { printf("%.2f\n", 100 - $NF) }')

echo "Average CPU Percentage Across All Cores: $average_cpu_percentage%"

