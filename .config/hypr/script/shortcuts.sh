#!/usr/bin/env sh
BROWSER=xdg-open

topic=$(echo "" | bemenu -c --prompt "search ⌕   " --fn "Iosevka_SPW 30" -M 40 --tf "#00ff00")
if [ -z "$topic" ]; then
  exit 1
fi

lang=$(echo "" | bemenu -c --prompt "lang ⌕   " --fn "Iosevka_SPW 30" -M 40 --tf "#00ff00")
if [ -z "$lang" ]; then
  exit 1
fi

if [ "$lang" = "rs" ] || [ "$lang" = "rust" ]; then
  $BROWSER file:///home/owl/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/share/doc/rust/html/std/all.html?search=${topic}
  exit 1
fi

$BROWSER https://devdocs.io/#q=${lang}%20${topic}
