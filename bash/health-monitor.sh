#!/bin/bash

LOG_FILE="/tmp/devops-health.log"
SERVICES="ssh cron systemd-resolved"
ERRORS=0

echo "=== DevOps Lab Health Monitor ==="
echo "$(date): Health check started" >> "$LOG_FILE"

check_disk() {
    DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

    echo "Disk usage: $DISK_USAGE%"

    if [ "$DISK_USAGE" -ge 90 ]; then
        echo "$(date): WARNING - Disk usage is $DISK_USAGE%" >> "$LOG_FILE"
        ERRORS=1
    else
        echo "$(date): Disk usage OK - $DISK_USAGE%" >> "$LOG_FILE"
    fi
}

check_memory() {
    MEMORY_AVAILABLE=$(free -m | awk 'NR==2 {print $7}')

    echo "Available memory: ${MEMORY_AVAILABLE}MB"

    if [ "$MEMORY_AVAILABLE" -lt 500 ]; then
        echo "$(date): WARNING - Low available memory: ${MEMORY_AVAILABLE}MB" >> "$LOG_FILE"
        ERRORS=1
    else
        echo "$(date): Memory OK - ${MEMORY_AVAILABLE}MB available" >> "$LOG_FILE"
    fi
}

check_service() {
    SERVICE="$1"

    systemctl is-active "$SERVICE" > /dev/null

    if [ $? -eq 0 ]; then
        echo "$SERVICE: HEALTHY"
        echo "$(date): $SERVICE is HEALTHY" >> "$LOG_FILE"
    else
        echo "$SERVICE: UNHEALTHY"
        echo "$(date): $SERVICE is UNHEALTHY" >> "$LOG_FILE"
        ERRORS=1
    fi
}

echo
echo "--- Disk Check ---"
check_disk

echo
echo "--- Memory Check ---"
check_memory

echo
echo "--- Service Checks ---"

for SERVICE in $SERVICES; do
    check_service "$SERVICE"
done

echo

if [ "$ERRORS" -eq 0 ]; then
    echo "Overall status: HEALTHY"
    echo "$(date): Health check completed successfully" >> "$LOG_FILE"
    exit 0
else
    echo "Overall status: WARNING"
    echo "$(date): Health check completed with warnings" >> "$LOG_FILE"
    exit 1
fi
