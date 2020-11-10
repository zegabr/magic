#!/bin/sh
# a for aliases
# add aliases for bash terminal

git clone https://github.com/zegabr/pyutils

python3 pyutils/replace_content_in_tag.py ~/.bashrc ./stuff/aliases.sh "##ALIASES"


if [ -x "$(command -v zsh)" ]; then
    echo "============you have new aliases for zsh==========="
    python3 pyutils/replace_content_in_tag.py ~/.zshrc ./stuff/aliases.sh "##ALIASES"
    source ~/.zshrc
else 
    echo "zsh not installed."
    echo "============you have new aliases for bash==========="
    source ~/.bashrc
fi

echo "removing pyutils"
rm -rf pyutils

