#!/usr/bin/env sh
if hyprctl getoption cursor:zoom_factor | grep "float: 3.0"; then
        hyprctl keyword cursor:zoom_factor 0
else
        hyprctl keyword cursor:zoom_factor 3
fi
