#!/bin/bash

LOG_FILE="/tmp/devops-demo.log"

echo "$(date): Script started" >> "$LOG_FILE"

echo "$(date): Checking system uptime..." >> "$LOG_FILE"
uptime >> "$LOG_FILE"

echo "$(date): Script finished" >> "$LOG_FILE"
