#!/usr/bin/env bash

if [ ! -d "$XDG_CONFIG_HOME/tmux" ]; then
    mkdir -p "$XDG_CONFIG_HOME/tmux"
    git clone https://github.com/tmux-plugins/tpm  "$XDG_CONFIG_HOME/tmux/plugins/tpm"
    # "$XDG_CONFIG_HOME/tmux/plugins/tpm/bin/install_plugins"
fi

ln -sf "$DOTFILES/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux"

if [ ! -d "$XDG_CONFIG_HOME/tmux/plugins/tpm" ]; then
    git clone https://github.com/tmux-plugins/tpm  "$XDG_CONFIG_HOME/tmux/plugins/tpm"
fi