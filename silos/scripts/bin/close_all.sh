#!/usr/bin/env bash

really=$(echo -e "no\nyes\n$procs" | rofi -dmenu -p "ORLY?")
if [ "$really" == "yes" ]; then
    notify-send "Shutting down"
    wmctrl -l | awk '{print $1}' | while read -r wid
    do
        wmctrl -i -c $wid
    done
    while [[ $(wmctrl -l | wc -l) -gt 0 ]]; do
        sleep 0.5
    done
    bspc quit
fi
