#!/usr/bin/env bash

if [ "$(cat /sys/class/power_supply/BAT0/status)" = "Discharging" ]; then
    echo " 🔋 $(cat /sys/class/power_supply/BAT0/capacity)% "
else
    echo " 💫 $(cat /sys/class/power_supply/BAT0/capacity)% "
fi

if [ "$(cat /sys/class/power_supply/BAT0/status)" = "Discharging" ] && [ "$(cat /sys/class/power_supply/BAT0/capacity)" -lt "25" ]; then
    dunstify -a "Battery" -u critical -t 10000 "Battery is low"
    echo "#ff0000"
fi
