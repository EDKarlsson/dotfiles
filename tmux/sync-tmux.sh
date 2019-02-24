#!/bin/bash

if [[ "$1" = "local" ]]; then
    cp ~/.tmux.conf ~/.tmux.conf.bak
    cp ~/git/env-config/tmux/tmux.conf ~/.tmux.conf

elif [[ "$1" = "remote" ]]; then
    cp ~/.tmux.conf ~/git/env-config/tmux/tmux.conf
    cd ~/git/env-config/
    if [[ "$1" = "commit" ]]; then
        git add tmux/tmux.conf
        commit_message="Updated tmux.conf on `whoami`@`hostname`"
        git commit -m "$commit_message"
    fi
else
    echo
    echo "Usage: sync-tmux.sh < local | remote >"
    echo "Specify local or remote"
    echo
fi
    
