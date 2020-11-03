##EXTRA BASHRC

#chore
alias atualiza='sudo apt update && sudo apt -u upgrade -y && sudo apt autoclean -y && sudo apt clean -y && sudo apt autoremove -y'
alias lag='alias | grep'
alias gclone='source ~/clonegithub.sh'

#competitive
alias m='make && make t'
alias c='g++ -std=c++17 -O2 -Wshadow -Wall -Wno-unused-result'
alias tc='time g++ -std=c++17 -O2'
alias cw='g++ -std=c++17 -O2 -Wfatal-errors'

#remaper
alias remap-keys='bash ~/remaper/remaper.sh'
alias undo-remap-keys='bash ~/remaper/undo.sh'

##aliases for moto
alias pushmaster='git push origin HEAD:refs/for/master'
alias pushexpadx='git push origin HEAD:refs/for/experiences_adx'
alias start-env='source ~/env/bin/activate'

##EXTRA BASHRC
