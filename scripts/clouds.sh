#!/bin/sh

curl -L https://github.com/hasura/graphql-engine/raw/stable/cli/get.sh | bash

npm install -g heroku -y
heroku --version
heroku login

echo "Cloud tools have been installed and configured..."
