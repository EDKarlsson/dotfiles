#!/bin/bash

# Terminate already running bar instances
# killall -q polybar
# If all your bars have ipc enabled, you can also use
polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
# echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar top 2>&1 | tee -a /tmp/polybar.top.log & disown
polybar bottom 2>&1 | tee -a /tmp/polybar.bottom.log & disown

## Launch bar1 and bar2
# polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Polybar launched..."