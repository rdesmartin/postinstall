#! /bin/bash

# imandra & ocaml
sudo apt install opam -y
sudo apt install curl -y
sh <(curl -s "https://storage.googleapis.com/imandra-do/install.sh")
imandra auth login
imandra core install

# terminal & shell
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install fonts-powerline -y
# TODO: replace theme with agnoster with sed 
sudo snap install gnome-terminator --beta

# ssh key
read -e -p "Github username:" USER
read -e -p "Github password:" PASS
read -e -p "Key name:" KEY
ssh-keygen
curl -u "$USER:$PASS" --data '{"title":"test-key","key":"'"$(cat ~/.ssh/id_rsa.pub)"'"}' https://api.github.com/user/keys
sudo apt install gnome-tweaks -y

# snaps & software

sudo snap install slack --classic
sudo snap install pycharm-professional --classic
sudo snap install code --classic
sudo apt install redshift redshift-gtk
# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/chrome.deb
dpkg -i /tmp/chrome.deb
rm /tmp/chrome.deb

# theme
mkdir ~/.themes && cd ~/.themes
wget https://github.com/EliverLara/Nordic/archive/refs/heads/darker-standard-buttons.zip
unzip darker-standard-buttons.zip && mv Nordic-darker-standard-buttons Nordic && rm rm darker-standard-buttons.zip

sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme


# TODO: - install i3, configure it using command line
# - install and configure vim/nvim
# - copy gitconfig, oh-my-zsh config etc from some repo

