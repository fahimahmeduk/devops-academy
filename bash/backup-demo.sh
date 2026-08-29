#!/bin/bash

SOURCE="$HOME/devops-academy/README.md"
BACKUP_DIR="/tmp/devops-backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

if [ ! -f "$SOURCE" ]; then
    echo "ERROR: Source file does not exist."
    exit 1
fi

if [ ! -d "$BACKUP_DIR" ]; then
    echo "Creating backup directory..."
    mkdir -p "$BACKUP_DIR"
fi

BACKUP_FILE="$BACKUP_DIR/README_$DATE.md"

cp "$SOURCE" "$BACKUP_FILE"

echo "Backup created:"
echo "$BACKUP_FILE"
