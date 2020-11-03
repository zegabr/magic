#!/bin/bash
# Z-Shell installation (with oh-my-zsh)
sudo apt install zsh -y
chsh -s $(which zsh) #change default terminal to be zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zegabr/pyutils

python3 pyutils/replace_line_with_content.py ~/.zshrc "ZSH_THEME" "ZSH_THEME=\"af-magic\""
python3 pyutils/replace_line_with_content.py ~/.zshrc "CASE_SENSITIVE" "CASE_SENSITIVE=\"true\""
python3 pyutils/replace_line_with_content.py ~/.zshrc "DISABLE_UPDATE_PROMPT" "DISABLE_UPDATE_PROMPT=\"true\""

echo "removing pyutils"
rm -rf pyutils/

source ~/.zshrc

source ./a.sh # add aliases

echo """
=================================================
PLS OPEN ANOTHER TERMINAL FOR CHANGES TAKE EFFECT
=================================================
"""
sleep 3
exit
