#!/bin/zsh

if [[ "$1" = "test" ]]; then
        SESSION_NAME="test"
        PROJ_DIR="~/git/shell-env-config"
else
    if [[ -z "$2" ]]; then
        SESSION_NAME="dev"
        PROJ=$1
    else
        SESSION_NAME=$1
        PROJ=$2
    fi
fi


tmux new-session -s $SESSION_NAME -n main -d
tmux send-keys -t $SESSION_NAME "cd $PROJ" C-m
tmux split-window -v -t $SESSION_NAME

#if [[ "$1" = "test" ]]; then
#    tmux ls
#    tmux kill-session -t test
#fi
