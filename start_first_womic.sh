#!/bin/bash

PHONE_BT="7C:F0:E5:7C:82:18"

sudo modprobe snd-aloop

bluetoothctl connect $PHONE_BT

sleep 3

cd ~/Downloads || exit 1

./micclient-x86_64.AppImage -t Bluetooth $PHONE_BT
