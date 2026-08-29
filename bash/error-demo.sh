#!/bin/bash

echo "Checking SSH service..."

systemctl is-active fake-service > /dev/null

if [ $? -eq 0 ]; then
    echo "SSH check successful."
else
    echo "ERROR: SSH is not active."
    exit 1
fi

echo "Script completed successfully."
