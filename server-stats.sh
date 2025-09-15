#!/bin/bash

echo "=================================="
echo "      SERVER PERFORMANCE STATS    "
echo "=================================="

# CPU Usage
echo -e "\n*CPU Usage*"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " $2 + $4 "%"}'

# Memory Usage
echo -e "\n*MEMORY USAGE*"
free -m | awk 'NR==2{printf "Used: %s MB (%.2f%%), Free: %s MB\n", $3, $3*100/$2, $4}'