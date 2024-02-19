#!/usr/bin/env bash

read -r cpu a b c previdle rest < /proc/stat
prevtotal=$((a+b+c+previdle))
sleep 0.5
read -r cpu a b c idle rest < /proc/stat
total=$((a+b+c+idle))
cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))

if [[ "$HOSTNAME" == "carb" ]]; then
    temp=$(sensors | grep 'CPU' | awk '{print $2 " "}' | tr -d '\n')
fi
if [[ "$HOSTNAME" == "yharnam" ]]; then
    temp=$(sensors | grep 'Tdie' | awk '{print $2 " "}' | tr -d '\n')
fi
printf "%2d%% %s" "$cpu" "$temp"

