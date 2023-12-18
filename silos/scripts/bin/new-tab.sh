#!/usr/bin/env bash

send_key() {
    ydotool key 125:1 49:1 49:0 125:0
}

check_if_terminal() {
    focused_window=$(swaymsg -t get_tree | jq '.. | select(.focused?) | .app_id?')
    if [[ $focused_window == *"foot"* ]]; then
        layout=$(swaymsg -t get_tree | jq -r 'recurse(.nodes[];.nodes!=null)|select(.nodes[].focused?==true).layout')
        if [[ $layout == *"tabbed"* ]]; then
            send_key
        else
            swaymsg split toggle
            send_key
            swaymsg layout tabbed
        fi
    fi
}

check_if_terminal

