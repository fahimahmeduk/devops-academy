#!/bin/bash

DIRECTORY="/tmp/devops-backups"

if [ -d "$DIRECTORY" ]; then
    echo "Directory already exists: $DIRECTORY"
else
    echo "Directory does not exist."
    echo "Creating: $DIRECTORY"

    mkdir -p "$DIRECTORY"
fi
