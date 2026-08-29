#!/bin/bash

COUNT=5

while [ "$COUNT" -gt 0 ]; do
    echo "Count: $COUNT"

    COUNT=$((COUNT - 1))

    sleep 1
done

echo "Finished!"
