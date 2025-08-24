#!/bin/bash
# Simple script to check Jenkins status and start if stopped

SERVICE="jenkins"

# Check status
if systemctl is-active --quiet $SERVICE
then
    echo "✅ Jenkins is already running."
else
    echo "⚠️ Jenkins is not running. Starting it now..."
    sudo systemctl start $SERVICE
    sleep 2
    systemctl status $SERVICE
