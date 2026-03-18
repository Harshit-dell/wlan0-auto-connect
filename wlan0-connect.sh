#!/bin/bash
echo "network name"
read name
echo "working on $name"

iwctl station wlan0 scan
sleep 2
iwctl station wlan0 get-networks
sleep 1
iwctl station wlan0 connect "$name"
sleep 2
iwctl station wlan0 show
echo "___________________________________________________________________________________________"
