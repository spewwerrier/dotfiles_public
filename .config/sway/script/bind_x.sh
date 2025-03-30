#!/bin/sh
query=$(printf "%s\n" "logout" "reboot" "shutdown" | bemenu --list 10 -b --prompt "system" --ignorecase --fn "Iosevka_SPW" )

if [ "$query" = "logout" ];
then 
	swaymsg exit ; killall Hyprland
elif [ "$query" = "shutdown" ]
then
	poweroff
elif [ "$query" = "reboot" ]
then
	reboot
else
	echo "Not specified"
	exit 1
fi
