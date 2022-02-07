#! /bin/bash

# theme
mkdir ~/.themes && cd ~/.themes
wget https://github.com/EliverLara/Nordic/archive/refs/heads/darker-standard-buttons.zip
unzip darker-standard-buttons.zip && mv Nordic-darker-standard-buttons Nordic && rm rm darker-standard-buttons.zip

sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme

