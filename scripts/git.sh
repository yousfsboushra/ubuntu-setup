#!/bin/sh

apt install git -y;

echo "Git Configuration: What is your name?"
read name
git config --global user.name "$name";

echo "Git Configuration: What is your email?"
read email
git config --global user.email "$email";

echo "ssh-keygen;"
ssh-keygen;

echo "Git has been installed and configured..."
