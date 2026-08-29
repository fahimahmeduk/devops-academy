#!/bin/bash

SERVICES="ssh cron systemd-resolved"

check_service() {
    SERVICE="$1"
    STATUS=$(systemctl is-active "$SERVICE")

    if [ "$STATUS" = "active" ]; then
        echo "$SERVICE: HEALTHY"
    else
        echo "$SERVICE: UNHEALTHY ($STATUS)"
    fi
}

echo "=== DevOps Service Health Check ==="
echo

for SERVICE in $SERVICES; do
    check_service "$SERVICE"
done
