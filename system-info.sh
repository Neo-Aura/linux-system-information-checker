#!/bin/bash

LOG_FILE="$HOME/linux-system-info/logs/system-info.log"
mkdir -p "$(dirname "$LOG_FILE")"
exec > >(tee -a "$LOG_FILE") 2>&1

set -e

for cmd in hostname whoami date uptime free df; do
    if ! command -v "$cmd" >/dev/null 2>&1; then
        echo "Error: Required command '$cmd' is not installed."
        exit 1
    fi
done
echo "================================"
echo "   LINUX SYSTEM INFORMATION"
echo "================================"

echo
echo "Hostname:"
hostname

echo
echo "Current User:"
whoami

echo
echo "Current Date and Time:"
date

echo
echo "System Uptime:"
uptime -p

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h /

echo
echo "IP Address Information:"
hostname -I

echo
echo "================================"
echo "  System Check Completed"
echo "================================"
