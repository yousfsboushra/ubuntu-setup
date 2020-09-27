#!/bin/sh

# GIT
bash scripts/git.sh

# Apache SERVER && PHP
bash scripts/php.sh

# MYSQL, Mongo
bash scripts/database.sh

# COMPOSER
bash scripts/composer.sh

# NODE
bash scripts/node.sh

# GCLOUD, FIREBASE, KUBERNETES
bash scripts/gcloud.sh

# Hasura, Heroku
bash scripts/clouds.sh

# Pulumi
bash scripts/pulumi.sh

# Docker
bash scripts/docker.sh

sysctl fs.inotify.max_user_watches=524288

apt-get update -y
apt-get upgrade -y
apt autoremove -y

echo "******************************************************"
echo ""
echo ""
echo "Remember to install Slack, Visual Studio Code, Mysql workbench, Chrome, Postman and GParted"
echo ""
echo ""
echo "******************************************************"
