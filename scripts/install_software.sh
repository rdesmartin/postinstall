#! /bin/bash



# snaps & software

sudo snap install gnome-terminator --beta
sudo apt install gnome-tweaks -y
sudo snap install slack --classic
sudo snap install pycharm-professional --classic
sudo snap install code --classic
sudo apt install redshift redshift-gtk
# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/chrome.deb
dpkg -i /tmp/chrome.deb
rm /tmp/chrome.deb


