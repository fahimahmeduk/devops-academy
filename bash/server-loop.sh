#!/bin/bash

SERVICES="ssh cron systemd-resolved"

echo "=== DevOps Service Health Check ==="
echo

for SERVICE in $SERVICES; do

    STATUS=$(systemctl is-active "$SERVICE")

    if [ "$STATUS" = "active" ]; then
        echo "$SERVICE: HEALTHY"
    else
        echo "$SERVICE: UNHEALTHY ($STATUS)"
    fi

done
