#!/usr/bin/env bash

mkdir -p "$HOME/.local/bin"

# includes
source ./zsh/zshenv

# installs
. "$DOTFILES/install/install-zsh.sh"
. "$DOTFILES/install/install-vim.sh"
. "$DOTFILES/install/install-polybar.sh"
. "$DOTFILES/install/install-gtk.sh"
. "$DOTFILES/install/install-i3.sh"
. "$DOTFILES/install/install-tmux.sh"
. "$DOTFILES/install/install-X11.sh"
. "$DOTFILES/install/install-node.sh"