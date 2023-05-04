#!/bin/bash

filename=$(date +%Y%m%d-%H%M%S.mkv)


if [ -z $(pgrep wf-recorder) ];
then choice=$(zenity --entry --text "Pick a monitor: 1(Main) or 2(External)")
    if [ $choice == 1 ]
    then
        monitor="eDP-1"
        sleep 2
    elif [ $choice == 2 ]
    then
        monitor="HDMI-A-1"
        sleep 2
    fi

    if [ -z $choice ]
    then
        notify-send "Recording Canceled"
    else
        notify-send "Recording Started"; wf-recorder -o $monitor -f $HOME/Videos/Recordings/$filename >/dev/null
    fi


else
    killall -s SIGINT wf-recorder
    notify-send "Recording Complete"
    while [ ! -z $(pgrep -x wf-recorder) ]; do wait; done
fi

