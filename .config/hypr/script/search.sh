#!/usr/bin/env sh

query=$(echo "" | bemenu -c --prompt "search ⌕   " --fn "Iosevka_SPW 40" -M 40 --tf "#f3fa37")
BROWSER=xdg-open

if [ -z "$query" ]
then echo "No args"
	exit 1
fi

arguments=$(printf "%s\n" "aur" "google" "github" "ddg" "unix stack" "stack overflow" "youtube" "books" "raw" | bemenu --fn "Iosevka_SPW 20"  --list 10 -b --prompt "⌕" --tf "#f3fa37" --hf "#000000" --hb "#ffffff" -c -M 500)

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

elif [ "$arguments" = "raw" ]
then
	$BROWSER "$query" 2>/dev/null

elif [ "$arguments" = "books" ]
then
	# $BROWSER "https://libgen.rs/search.php?req=$query"
	$BROWSER "https://libgen.li/index.php?req=$query"
	# $BROWSER "http://libgen.rs/search.php?req=$query&lg_topic=libgen&open=0&view=simple&res=25&phrase=1&column=def"

elif [ "$arguments" = "aur" ]
then
		$BROWSER "https://aur.archlinux.org/packages?O=0&K=$query"

else
	echo "Not specified"
	exit 1
fi

