#!/bin/sh

apt-get remove docker docker-engine docker.io containerd runc -y
apt-get update

apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt-get update
apt-get install docker-ce docker-ce-cli containerd.io -y

groupadd docker
usermod -aG docker ${USER}

gcloud auth configure-docker

docker run hello-world

apt install docker-compose -y

echo "Docker has been installed and configured..."
