#! /bin/bash

# imandra & ocaml
sudo apt install opam -y
sudo apt install curl -y
sh <(curl -s "https://storage.googleapis.com/imandra-do/install.sh")
imandra auth login
imandra core install

