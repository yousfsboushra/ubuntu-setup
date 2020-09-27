#!/bin/sh

apt install curl -y

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

apt-get install -y nodejs
node --version

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm install 10
nvm use 10
nvm alias default 10.19.0

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

apt-get update && sudo apt-get install yarn -y
yarn --version

echo "Node has been installed and configured..."
