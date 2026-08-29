#!/bin/bash

ENVIRONMENT="$1"

if [ -z "$ENVIRONMENT" ]; then
    echo "ERROR: No environment supplied."
    echo "Usage: $0 <production|test|development>"
    exit 1
fi

if [ "$ENVIRONMENT" = "production" ]; then
    echo "Production environment selected."
elif [ "$ENVIRONMENT" = "test" ]; then
    echo "Test environment selected."
elif [ "$ENVIRONMENT" = "development" ]; then
    echo "Development environment selected."
else
    echo "ERROR: Unknown environment: $ENVIRONMENT"
    exit 1
fi
