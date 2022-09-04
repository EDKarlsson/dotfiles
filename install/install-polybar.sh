#!/usr/bin/env bash

XDG_POLYBAR="$XDG_CONFIG_HOME/polybar"

mkdir -p "$XDG_POLYBAR"

ln -sf "$DOTFILES/polybar/config.ini" "$XDG_POLYBAR"
ln -sf "$DOTFILES/polybar/colors.ini" "$XDG_POLYBAR"
ln -sf "$DOTFILES/polybar/launch.sh" "$XDG_POLYBAR"