#!/usr/bin/env bash

X11_FILES="$DOTFILES/X11/laptop"

mkdir -p "$XDG_CONFIG_HOME/X11"

ln -sf "$X11_FILES/xinitrc" "$XINITRC"
ln -sf "$X11_FILES/xresources" "$XDG_CONFIG_HOME/X11/xresources"
ln -sf "$X11_FILES/xserverrc" "$HOME/.xserverrc"
