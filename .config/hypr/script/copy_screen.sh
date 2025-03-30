#!/usr/bin/env sh
grim -g "$(slurp)" - | wl-copy --type image/png
