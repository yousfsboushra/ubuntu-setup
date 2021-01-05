#!/bin/sh

apt install curl -y

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

apt-get install -y nodejs npm
node --version

curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh -o install_nvm.sh

bash install_nvm.sh

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
