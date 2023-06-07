#!/bin/bash

# Run the command and store the output in a variable
output=$(pactl list short sinks | awk '{sub("alsa_output.", "", $2); sub(".analog-stereo", "", $2); print $1, $2}')

# Create an array to store the options
options=()

# Read each line of the output and add it to the options array
while read -r id name; do
    options+=("$id" "$name")
done <<< "$output"

# Use Zenity to create the list dialog
selection=$(zenity --list --title "Select Sink" --column "ID" --column "Name" "${options[@]}")

# Print the selected option
echo "Selected option: $selection"

pactl set-default-sink $selection

AUDIODEV=$(wpctl inspect @DEFAULT_AUDIO_SINK@ | grep node.description | awk 'BEGIN{FS=OFS=" "}{$1="";$2="";$3="";print $0}')
echo $AUDIODEV
notify-send "Changed audio output to $(echo $AUDIODEV)"
