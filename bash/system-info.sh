#!/bin/bash

# Collect system information
SERVER_NAME=$(hostname)
CURRENT_USER=$(whoami)
CURRENT_DATE=$(date)
UPTIME=$(uptime -p)

echo "=== DevOps Lab System Information ==="
echo

echo "Server: $SERVER_NAME"
echo "User: $CURRENT_USER"
echo "Date: $CURRENT_DATE"
echo "Uptime: $UPTIME"

echo
echo "Disk Usage:"
df -h /

echo
echo "Memory Usage:"
free -h
