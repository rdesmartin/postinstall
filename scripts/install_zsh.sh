#! /bin/bash

# terminal & shell
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install fonts-powerline -y
# TODO: replace theme with agnoster with sed 
sudo snap install gnome-terminator --beta
