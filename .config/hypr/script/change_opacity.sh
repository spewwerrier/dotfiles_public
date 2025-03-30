#!/usr/bin/env sh

hyprctl setprop address:`hyprctl activewindow -j | jq '.["address"]' | sed 's/"//g'` opaque toggle
