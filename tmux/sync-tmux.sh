#!/bin/bash

if [[ "$1" = "local" ]]; then
    cp ~/.tmux.conf ~/.tmux.conf.bak
    cp ~/git/env-config/tmux/tmux.conf ~/.tmux.conf
else
    cp ~/.tmux.conf ~/git/env-config/tmux/tmux.conf
    cd ~/git/env-config/
    if [[ "$1" = "commit" ]]; then
        git add tmux/tmux.conf
        commit_message="Updated tmux.conf on `whoami`@`hostname`"
        git commit -m "$commit_message"
    fi
fi
    
