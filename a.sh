#!/bin/bash
# a for aliases
# add aliases for bash terminal

git clone https://github.com/zegabr/pyutils

python3 pyutils/replace_content_in_tag.py ~/.bashrc ./stuff/aliases.sh "##ALIASES"

FILE=~/.oh-my-zsh/oh-my-zsh.sh

if [ -f "$FILE" ]; then
    echo "============you have new aliases for zsh==========="
    python3 pyutils/replace_content_in_tag.py ~/.oh-my-zsh/oh-my-zsh.sh ./stuff/aliases.sh "##ALIASES"
    source ~/.oh-my-zsh/oh-my-zsh.sh
else 
    echo "$FILE does not exist."
    echo "============you have new aliases for bash==========="
    source ~/.bashrc
fi

echo "removing pyutils"
rm -rf pyutils

