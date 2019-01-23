#!/bin/bash
#cria aliases
unalias py
alias py=python3

unalias zcpp
alias zcpp='g++ z.cpp -std=c++17 -Wfatal-errors -O3 -o z'

unalias Desktop
alias Desktop='cd && cd Desktop/'


unalias remaper
alias remaper='bash ~/remaper.sh'

unalias undoremaper
alias undoremaper='bash ~/undo.sh'

echo "you now have new aliases"
echo
alias

