#!/bin/bash

# Define your battery threshold
LOW_BATTERY=20

while true; do
    # Read the AC Adapter state (1 = Plugged in, 0 = Unplugged)
    AC_STATE=$(cat /sys/class/power_supply/AC*/online | head -n 1 2>/dev/null || echo 0)
    
    # Read the current battery percentage
    BATTERY_LEVEL=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null || echo 100)
    
    # Read the currently active power profile
    CURRENT_PROFILE=$(powerprofilesctl get)
    
    if [ "$AC_STATE" -eq 1 ]; then
        # If plugged in, force Performance
        if [ "$CURRENT_PROFILE" != "performance" ]; then
            powerprofilesctl set performance
        fi
    else
        # If unplugged, evaluate the battery percentage
        if [ "$BATTERY_LEVEL" -le "$LOW_BATTERY" ]; then
            if [ "$CURRENT_PROFILE" != "power-saver" ]; then
                powerprofilesctl set power-saver
            fi
        else
            if [ "$CURRENT_PROFILE" != "balanced" ]; then
                powerprofilesctl set balanced
            fi
        fi
    fi
    
    # Rest for 30 seconds before checking again (virtually 0 CPU usage)
    sleep 30
done
