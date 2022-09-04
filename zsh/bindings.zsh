#!/usr/bin/env zsh

export TERM=xterm-256color

# Mimic linux console bindings
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line

# bindkey '^[[5~' beginning-of-buffer-or-history
# bindkey '^[[6~' end-of-buffer-or-history
bindkey '^[[7~' beginning-of-line
bindkey '^[[3~' delete-char
bindkey '^[[2~' quoted-insert
bindkey '^[[C' forward-char
bindkey '^[[D' backward-char
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word