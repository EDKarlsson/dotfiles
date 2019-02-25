#!/bin/csh
# Script creates a basic tmux environment in the current directory

set session_name = "$1"
if ( $?TMUX ) then
   set current_session = "$TMUX"
   if ( "$current_session" != "") then
       set current_session = `tmux display-message -p '#S'`
   endif
else
   set attach_to_client = true
endif


if ( "$session_name" == "" ) then
    set session_name = "dev"
endif



set CUR_DIR="$PWD"
#echo "Current Directory: $CUR_DIR"

#echo "Starting TMUX Session:$session_name"
tmux new-session -s "$session_name" -n main -d
# Have to sleep or race condition when trying to access ~/.gitignore

#echo "Splitting window 1 => 3 panes"
# Window 1 Create 3 Panes
sleep .1
tmux split-window -h -p 70 -t "$session_name"
sleep .1
tmux split-window -h -p 50 -t "$session_name"

# Create a pane for running top
#echo "Create Process top pane"
sleep .1
tmux split-window -v -p 70 -t "$session_name":1.3

#echo "Move all panes into $CUR_DIR"
# Move all the panes into the same directory
tmux set-window-option -t "$session_name" synchronize-panes on
tmux send-keys -t "$session_name" "cd $CUR_DIR; clear" C-m
tmux set-window-option -t $session_name synchronize-panes off

# Start top in upper right most pane
#echo "Start top in pane 1.3"
tmux send-keys -t "$session_name":1.3 "top" C-m

if ( $?attach_to_client ) then
   #echo "Attaching to $session_name"
   tmux at -t "$session_name"
else
    #echo "Switch Clients to $session_name"
    tmux switch-client -t "$session_name"
endif

if ( "$session_name" == test) then
    sleep 5
    tmux switch-client -t "$current_session"
    tmux kill-session -t "$session_name"
endif
