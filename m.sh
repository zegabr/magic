#!/bin/sh
# m for main

bash setup.sh #install apps and docker
bash v.sh # updates vimrc
bash ssh.sh # setup ssh
source a.sh # add aliases to bashrc
source z.sh # add updates zshrc and add aliases to it


