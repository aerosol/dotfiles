#!/usr/bin/env bash
# mic-switch.sh — toggle audio (mic + output) between internal laptop and Focusrite

FOCUSRITE_CARD="alsa_card.usb-Focusrite_Scarlett_2i2_USB-00"
FOCUSRITE_PROFILE="HiFi"

INTERNAL_CARD="alsa_card.pci-0000_c1_00.6"
INTERNAL_PROFILE="HiFi"
INTERNAL_SOURCE="alsa_input.pci-0000_c1_00.6.HiFi__Mic2__source"
INTERNAL_SINK="alsa_output.pci-0000_c1_00.6.HiFi__Speaker__sink"

notify() {
    local summary="$1"
    local body="$2"
    echo "$summary — $body"
    notify-send -i audio-card "$summary" "$body"
}

switch_to_internal() {
    # Disable Focusrite card
    pactl set-card-profile "$FOCUSRITE_CARD" off

    # Make sure internal card is active
    pactl set-card-profile "$INTERNAL_CARD" "$INTERNAL_PROFILE"

    # Set default source and sink
    pactl set-default-source "$INTERNAL_SOURCE"
    pactl set-default-sink "$INTERNAL_SINK"

    # Move any active recording streams
    pactl list source-outputs short | awk '{print $1}' | while read -r id; do
        pactl move-source-output "$id" "$INTERNAL_SOURCE" 2>/dev/null
    done

    # Move any active playback streams
    pactl list sink-inputs short | awk '{print $1}' | while read -r id; do
        pactl move-sink-input "$id" "$INTERNAL_SINK" 2>/dev/null
    done

    notify "Audio: Internal" "Ryzen HD Audio — speakers + mic"
}

switch_to_focusrite() {
    # Enable Focusrite card
    pactl set-card-profile "$FOCUSRITE_CARD" "$FOCUSRITE_PROFILE"

    # Small delay for sources/sinks to appear
    sleep 1

    # Detect Focusrite source and sink dynamically
    DETECTED_SOURCE=$(pactl list sources short | awk '{print $2}' | grep "usb-Focusrite" | grep -v monitor | grep "Mic1")
    DETECTED_SINK=$(pactl list sinks short | awk '{print $2}' | grep "usb-Focusrite" | head -1)

    if [[ -z "$DETECTED_SOURCE" ]]; then
        notify-send -i dialog-error "Audio switch failed" "Could not detect Focusrite source"
        echo "Error: Could not detect Focusrite source after enabling."
        exit 1
    fi
    if [[ -z "$DETECTED_SINK" ]]; then
        notify-send -i dialog-error "Audio switch failed" "Could not detect Focusrite sink"
        echo "Error: Could not detect Focusrite sink after enabling."
        exit 1
    fi

    # Set defaults
    pactl set-default-source "$DETECTED_SOURCE"
    pactl set-default-sink "$DETECTED_SINK"

    # Move any active recording streams
    pactl list source-outputs short | awk '{print $1}' | while read -r id; do
        pactl move-source-output "$id" "$DETECTED_SOURCE" 2>/dev/null
    done

    # Move any active playback streams
    pactl list sink-inputs short | awk '{print $1}' | while read -r id; do
        pactl move-sink-input "$id" "$DETECTED_SINK" 2>/dev/null
    done

    notify "Audio: Focusrite" "Scarlett 2i2 — line out + mic"
}

# Determine current state by checking if Focusrite card is active (not off)
CURRENT_PROFILE=$(pactl list cards | awk "/Name: $FOCUSRITE_CARD/{found=1} found && /Active Profile:/{print \$3; exit}")

if [[ "$CURRENT_PROFILE" == "off" ]]; then
    switch_to_focusrite
else
    switch_to_internal
fi
