#! /bin/bash

# ssh key
read -e -p "Github username:" USER
read -e -p "Github password:" PASS
read -e -p "Key name:" KEY
ssh-keygen
curl -u "$USER:$PASS" --data '{"title":"test-key","key":"'"$(cat ~/.ssh/id_rsa.pub)"'"}' https://api.github.com/user/keys
sudo apt install gnome-tweaks -y
