#!/usr/bin/env sh

alias batstat='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "state\|percentage\|time to full\|time to empty"'
a=$(batstat | grep percentage)
b=$(batstat | grep state)
c=$(batstat | grep time)
notify-send "battery life" "$a\n$c\n$b"

