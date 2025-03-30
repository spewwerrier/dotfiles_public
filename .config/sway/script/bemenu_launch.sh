#!/bin/sh

SELECTION_TEXT="#000000"
SELECTION_BG="#ffffff"
TITLE_FG="#ffffff"
BG="#000000"
SCROLLBAR="#3cd42f"

bemenu-run --list 20 --fn "Iosevka Term" --center --ignorecase \
 --hf $SELECTION_TEXT --hb $SELECTION_BG \
 --nb $BG --ab $BG --tb $BG --fbb $BG --fb $BG --sb $BG \
 --scf $SCROLLBAR --scb $BG \
 --tf $TITLE_FG \
 -M 700 -H 25 --prompt "§" --scrollbar always
