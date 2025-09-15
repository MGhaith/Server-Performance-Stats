#!/bin/bash

echo "=================================="
echo "      SERVER PERFORMANCE STATS    "
echo "=================================="

# CPU Usage
echo -e "\n*CPU Usage*"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " $2 + $4 "%"}'
