#!/bin/bash

if [ $1 -eq "simple" ]; then
    echo "Configure npm packages and npm prefix"
    mkdir "$XDG_DATA_HOME/npm-packages"
    npm config set prefix "$XDG_DATA_HOME/npm-packages"
else
    echo "Configuring nvm and installing npm using nvm"
    export NVM_DIR="$XDG_DATA_HOME/.nvm" && (
        git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
        cd "$NVM_DIR"
        git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
    ) && \. "$NVM_DIR/nvm.sh"
    nvm install node
    nvm use node
fi

npm install -g yarn
npm install -g typescript