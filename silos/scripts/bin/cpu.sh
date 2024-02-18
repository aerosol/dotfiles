#!/usr/bin/env bash

read -r cpu a b c previdle rest < /proc/stat
prevtotal=$((a+b+c+previdle))
sleep 0.5
read -r cpu a b c idle rest < /proc/stat
total=$((a+b+c+idle))
cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
temp=$(sensors | grep -i '\(Tdie\|CPU\)' | awk '{print $2 " "}' | tr -d '\n')
printf "%2d%% %s" "$cpu" "$temp"

