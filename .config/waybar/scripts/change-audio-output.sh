#! /bin/bash

export OUTDEV=$(pactl list short sinks | awk '{print $1, $2}')

choice=$(zenity --entry --text="$OUTDEV")

pactl set-default-sink $choice
