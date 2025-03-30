#!/usr/bin/env sh

if [ $(hyprctl getoption decoration:screen_shader -j | jq '.["str"]') = "\"[[EMPTY]]\"" ]; then
        hyprctl keyword decoration:screen_shader "$HOME/.config/hypr/shader.frag"
 else
        hyprctl keyword decoration:screen_shader "[[EMPTY]]"
fi
