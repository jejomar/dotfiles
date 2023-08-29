#!/bin/bash

handle() {
	case $1 in monitoradded*)
		hyprctl dispatch moveworkspacetomonitor "6 1"
		hyprctl dispatch moveworkspacetomonitor "7 1"
		hyprctl dispatch moveworkspacetomonitor "8 1"
		hyprctl dispatch moveworkspacetomonitor "9 1"
		hyprctl dispatch moveworkspacetomonitor "10 1"
		hyprctl dispatch moveworkspacetomonitor "11 1"
	esac
}

socat - UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do handle "$line"; done
