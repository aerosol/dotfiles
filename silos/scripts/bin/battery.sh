#!/usr/bin/env bash

if [ "$(cat /sys/class/power_supply/BAT0/status)" = "Discharging" ]; then
    echo " 🔋 $(cat /sys/class/power_supply/BAT0/capacity)% "
else
    echo " 💫 $(cat /sys/class/power_supply/BAT0/capacity)% "
fi

echo "battery"

if [ "$(cat /sys/class/power_supply/BAT0/status)" = "Discharging" ] && [ "$(cat /sys/class/power_supply/BAT0/capacity)" -lt "25" ]; then
    echo "#ff0000"
fi
