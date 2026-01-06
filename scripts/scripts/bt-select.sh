#!/usr/bin/env bash

# Check if dialog is installed
if ! command -v dialog &> /dev/null; then
    echo "Error: 'dialog' is not installed. Please install it with: sudo pacman -S dialog" >&2
    exit 1
fi

# Check if bluetoothctl is installed
if ! command -v bluetoothctl &> /dev/null; then
    echo "Error: 'bluetoothctl' is not installed. Please install it with: sudo pacman -S bluez-utils" >&2
    exit 1
fi

devices=$(bluetoothctl devices Paired | cut -f 2- -d ' ')

options=()
while read -r n s; do
  options+=("$n" "$s")
done <<<"$devices"

device=$(dialog --clear \
  --backtitle "BT Select" \
  --title "Bluetooth" \
  --menu "Select the device to connect:" \
  15 50 4 \
  "${options[@]}" \
  2>&1 >/dev/tty)

bluetoothctl power on
bluetoothctl connect "$device"
