#!/bin/sh
query=$(echo "" | bemenu -c --prompt "search" --fn "Iosevka_SPW 20" -M 40 )
BROWSER=brave

if [ -z "$query" ]
then echo "No args"
	exit 1
fi

arguments=$(printf "%s\n" "aur" "google" "github" "ddg" "unix stack" "stack overflow" "youtube" "books" | bemenu --fn "Iosevka SS11 20"  --list 10 -b --prompt "search" -c -M 500)

if [ "$arguments" = "github" ]
then
	$BROWSER "https://github.com/search?o=desc&q=$query&s=stars&type=Repositories" 2>/dev/null

elif [ "$arguments" = "google" ]
then
	$BROWSER "https://www.google.com/search?q=$query" 2>/dev/null

elif [ "$arguments" = "ddg" ]
then
	$BROWSER "https://duckduckgo.com/?q=$query" 2>/dev/null

elif [ "$arguments" = "unix stack" ]
then
	$BROWSER "https://unix.stackexchange.com/search?q=$query" 2>/dev/null

elif [ "$arguments" = "stack overflow" ]
then
	$BROWSER "https://stackoverflow.com/search?q=$query" 2>/dev/null

elif [ "$arguments" = "youtube" ]
then
	$BROWSER "https://www.youtube.com/results?search_query=$query" 2>/dev/null

elif [ "$arguments" = "books" ]
then
	$BROWSER "https://annas-archive.org/search?q=$query"
	# $BROWSER "http://libgen.rs/search.php?req=$query&lg_topic=libgen&open=0&view=simple&res=25&phrase=1&column=def"

elif [ "$arguments" = "aur" ]
then
		$BROWSER "https://aur.archlinux.org/packages?O=0&K=$query"

else
	echo "Not specified"
	exit 1
fi
