#!/bin/bash

options="Shutdown
Reboot
Lock
Logout"

selected=$(echo "$options" | wofi --dmenu -i -p "Power Menu")

case $selected in
    Shutdown) systemctl poweroff ;;
    Reboot) systemctl reboot ;;
    Lock) swaylock --clock --indicator;;
    Logout) hyprctl dispatch exit ;;
esac