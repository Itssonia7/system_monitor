#!/bin/bash

# 1. Extract the raw percentage and strip the '%' character
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

# 2. Set our warning limit threshold (e.g., alert if 80% or higher)
THRESHOLD=80

# 3. Check if the current usage is greater than or equal to the threshold
if [ "$DISK_USAGE" -ge "$THRESHOLD" ]; then
    echo "⚠️ ALERT: Root disk utilization is dangerously high at ${DISK_USAGE}%!"
else
    echo "✅ System health check passed: Disk utilization is stable at ${DISK_USAGE}%."
fi