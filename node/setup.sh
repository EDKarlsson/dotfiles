#!/bin/bash

# TODO: Add step for downloading node

mkdir "${HOME}/.npm-packages"

npm config set prefix "${HOME}/.npm-packages"
npm install -g yarn
