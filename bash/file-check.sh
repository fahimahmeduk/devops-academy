#!/bin/bash

FILE="/tmp/devops-demo.txt"

if [ -f "$FILE" ]; then
    echo "File exists: $FILE"
else
    echo "File does not exist: $FILE"
fi
