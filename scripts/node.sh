#!/bin/sh

apt install curl -y

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

apt-get install -y nodejs npm
node --version

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm install 12
nvm use 12
nvm alias default 12

apt-get update && $ apt install yarnpkg -y
apt install yarn -y
yarn --version

echo "Node has been installed and configured..."
