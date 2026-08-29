#!/bin/bash

check_disk() {
    echo "=== Disk Usage ==="
    df -h /
}

check_memory() {
    echo "=== Memory Usage ==="
    free -h
}

check_uptime() {
    echo "=== System Uptime ==="
    uptime -p
}

echo "=== DevOps Lab Health Check ==="
echo

check_disk
echo

check_memory
echo

check_uptime
