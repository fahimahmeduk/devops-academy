#!/bin/bash

echo "=== DevOps User Input Demo ==="
echo

read -p "Enter your name: " USER_NAME
read -p "Enter an environment (dev/test/prod): " ENVIRONMENT

echo
echo "Hello $USER_NAME"
echo "Selected environment: $ENVIRONMENT"
