#!/usr/bin/env bash

mkdir "XDG_CONFIG_HOME/tmux"

#if [ ! -d "$XDG_CONFIG_HOME/tmux" ]; then
#   mkdir "XDG_CONFIG_HOME/tmux"
#fi

ln -sf "$DOTFILES/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux"
