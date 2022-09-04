#!/bin/bash

mkdir "${XDG_CONFIG_HOME}/npm-packages"

npm config set prefix "${XDG_CONFIG_HOME}/npm-packages"
npm install -g yarn
npm install -g typescript