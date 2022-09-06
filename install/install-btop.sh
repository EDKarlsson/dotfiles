#!/usr/bin/env bash

mkdir -p "$XDG_CONFIG_HOME/btop"

ln -sf "$DOTFILES/btop/btop.conf" "$XDG_CONFIG_HOME/btop/btop.conf"
ln -sf "$DOTFILES/btop/themes" "$XDG_CONFIG_HOME/btop/themes"