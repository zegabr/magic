##EXTRA BASHRC
alias atualiza='sudo apt update && sudo apt -u upgrade -y && sudo apt autoclean -y && sudo apt clean -y && sudo apt autoremove -y'

#chore
alias lag='alias | grep'
alias gclone='source ~/clonegithub.sh'

#competitive
alias py=python3
alias m='make && make t'
alias g='g++ -std=c++17 -O2 -Wshadow -Wall -Wno-unused-result'
alias tg='time g++ -std=c++17 -O2'
alias gw='g++ -std=c++17 -O2 -Wfatal-errors'

#remaper
alias remap-keys='bash ~/remaper/remaper.sh'
alias undo-remap-keys='bash ~/remaper/undo.sh'

##aliases for moto
alias pushmaster='git push origin HEAD:refs/for/master'
alias pushdev='git push origin HEAD:refs/for/experiences_adx'
alias start-env='source ~/env/bin/activate'

##EXTRA BASHRC
