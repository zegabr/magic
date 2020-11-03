#!/bin/bash
# a for aliases
# add aliases for bash terminal


python3 stuff/a.py ~/.bashrc ./stuff/extra-bashrc.sh "##EXTRA BASHRC"

FILE=~/.oh-my-zsh/oh-my-zsh.sh
if [ -f "$FILE" ]; then
    echo "============you have new aliases for zsh==========="
    python3 stuff/a.py ~/.oh-my-zsh/oh-my-zsh.sh ./stuff/extra-bashrc.sh "##EXTRA BASHRC"
    source ~/.oh-my-zsh/oh-my-zsh.sh
else 
    echo "$FILE does not exist."
    echo "============you have new aliases for bash==========="
    source ~/.bashrc
fi

