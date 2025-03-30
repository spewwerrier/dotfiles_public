#!/usr/bin/env sh

query=$(printf "%s\n" "logout" "reboot" "shutdown" "suspend" | bemenu --list 10 -b --prompt "system" --ignorecase --fn "Iosevka_SPW 50" --prompt "Bye! (ʘ‿ʘ)╯" --tf "#7e37fa" --hf "#000000" --hb "#ffffff")

if [ "$query" = "logout" ];
then 
	pkill -u $USER
elif [ "$query" = "shutdown" ]
then
	kill -9 $(pidof forgejo) ; systemctl poweroff
elif [ "$query" = "reboot" ]
then
	reboot
elif [ "$query" = "suspend" ]
then
	systemctl suspend
else
	echo "Not specified"
	exit 1
fi
