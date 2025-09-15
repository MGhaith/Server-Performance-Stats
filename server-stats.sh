#!/bin/bash

echo "=================================="
echo "      SERVER PERFORMANCE STATS    "
echo "=================================="

# OS Version
echo -e "\nOS VERSION:"
cat /etc/os-release | grep PRETTY_NAME

# CPU Usage
echo -e "\n*CPU Usage*"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " $2 + $4 "%"}'

# Memory Usage
echo -e "\n*MEMORY USAGE*"
free -m | awk 'NR==2{printf "Used: %s MB (%.2f%%), Free: %s MB\n", $3, $3*100/$2, $4}'

# Disk Usage
echo -e "\n*DISK USAGE*"
df -h | awk '$NF=="/"{printf "Used: %d, Free: %d, Use%%: %s\n", $3, $4, $5}'

# Top 5 CPU consuming processes
echo -e "\nTOP 5 PROCESSES BY CPU:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

# Top 5 Memory consuming processes
echo -e "\nTOP 5 PROCESSES BY MEMORY:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6

# Uptime
echo -e "\nUPTIME:"
uptime -p
echo -e "\n=================================="