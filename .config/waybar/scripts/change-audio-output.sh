#! /bin/bash

choice=$(zenity --entry --text "Audio devices: 1(Laptop), 2(USB DAC), 3(Bluetooth)")
    if [ $choice == 1 ]
    then
        device="alsa_output.pci-0000_00_1f.3.analog-stereo"
    elif [ $choice == 2 ]
    then
        device="alsa_output.usb-Synaptics_KM-HIFI-384KHZ-00.analog-stereo"
    elif [ $choice == 3 ]
    then
        device="bluez_output.57_9E_93_5E_AE_3C.1"
    fi

pactl set-default-sink $device
