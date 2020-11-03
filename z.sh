#!/bin/bash
# Z-Shell installation (with oh-my-zsh)
sudo apt install zsh -y
chsh -s $(which zsh) #change default terminal to be zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

python3 stuff/r.py ~/.zshrc "ZSH_THEME" "ZSH_THEME=\"af-magic\""
source ~/.zshrc

source ./a.sh # add aliases

echo """
==========================
PLS OPEN ANOTHER TERMINAL
==========================
"""
sleep 3
exit
