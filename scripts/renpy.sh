#!/bin/bash

renpy_home=/home/dank/git/renpy

function renpy-env() {
  echo "Setting renpy environment"
  echo " - source ${renpy_home}/renpy-venv/bin/activate"
  source ${renpy_home}/renpy-venv/bin/activate
}

function renpy-app() {
  echo "Starting renp app"
  echo " - python ${renpy_home}/renpy/renpy.py"
  python ${renpy_home}/renpy/renpy.py &
}
function renpy-pid() {
  pid=`ps aux | grep -v grep | grep -i renpy.py | awk '{print $2}'`
  echo "Ren'py pid is $pid"
}

function renpy-stop(){
  pid=`ps aux | grep -v grep | grep -i renpy.py | awk '{print $2}'`
  if [ -z "$pid"]; then
    echo "No renpy process found!"
  else
    echo "Stopping renpy pid=$pid..."
    kill $pid
  fi
}

function renpy-start() {
  renpy-env
  renpy-app
}
