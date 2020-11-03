#!/bin/bash
# Z-Shell installation (with oh-my-zsh)
sudo apt install zsh -y
chsh -s $(which zsh) #change default terminal to be zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

python3 stuff/r.py ~/.zshrc "ZSH_THEME" "ZSH_THEME=\"af-magic\""
python3 stuff/r.py ~/.zshrc "CASE_SENSITIVE" "CASE_SENSITIVE=\"true\""
python3 stuff/r.py ~/.zshrc "DISABLE_UPDATE_PROMPT" "DISABLE_UPDATE_PROMPT=\"true\""

source ~/.zshrc

source ./a.sh # add aliases

echo """
=================================================
PLS OPEN ANOTHER TERMINAL FOR CHANGES TAKE EFFECT
=================================================
"""
sleep 3
exit
