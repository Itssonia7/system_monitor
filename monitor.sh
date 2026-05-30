#!/bin/bash

# 1. Gather hardware utilization metrics
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
AVAILABLE_RAM=$(free -m | awk 'NR==2 {print $7}')

# 2. Define safety thresholds
DISK_THRESHOLD=80
RAM_THRESHOLD=1024  # Alert if available memory drops below 1024 MB (1 GB)

# 3. Disk Utilization Health Check
if [ "$DISK_USAGE" -ge "$DISK_THRESHOLD" ]; then
    echo "⚠️ ALERT: Root disk utilization is dangerously high at ${DISK_USAGE}%!"
else
    echo "✅ System health check passed: Disk utilization is stable at ${DISK_USAGE}%."
fi

# 4. Memory Availability Health Check
if [ "$AVAILABLE_RAM" -lt "$RAM_THRESHOLD" ]; then
    echo "⚠️ ALERT: Running critically low on memory! Only ${AVAILABLE_RAM} MB available."
else
    echo "✅ System health check passed: Available memory is stable at ${AVAILABLE_RAM} MB."
fi