#!/bin/bash

if [[ "$1" = "local" ]]; then
    echo "Copy remote (git) => local (~/.tmux.conf)"
    cp ~/.tmux.conf ~/.tmux.conf.bak
    cp ~/git/env-config/tmux/tmux.conf ~/.tmux.conf

elif [[ "$1" = "remote" ]]; then
    echo "Copy local (~/.tmux.conf) => remote (git)"
    cp ~/.tmux.conf ~/git/env-config/tmux/tmux.conf
    cd ~/git/env-config/
    if [[ "$1" = "commit" ]]; then
        echo "Commiting tmux.conf => remote (git)"
        git add tmux/tmux.conf
        commit_message="Updated tmux.conf on `whoami`@`hostname`"
        git commit -m "$commit_message"
        if [[ "$1" = "push" ]]; then
            git push
        fi
    fi
else
    echo
    echo "Usage: sync-tmux.sh location"
    echo "  - Specify local or remote [commit] [push]"
    echo
fi
    
