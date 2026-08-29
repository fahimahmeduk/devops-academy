#!/bin/bash

SERVICE="$1"
LOG_FILE="/tmp/service-check.log"

echo "$(date): Checking $SERVICE" >> "$LOG_FILE"

systemctl is-active "$SERVICE" > /dev/null

if [ $? -eq 0 ]; then
    echo "$(date): $SERVICE is HEALTHY" >> "$LOG_FILE"
    echo "$SERVICE: HEALTHY"
else
    echo "$(date): $SERVICE is UNHEALTHY" >> "$LOG_FILE"
    echo "$SERVICE: UNHEALTHY"
    exit 1
fi
