##ALIASES
alias atualiza='sudo apt update && sudo apt -u upgrade -y && sudo apt autoclean -y && sudo apt clean -y && sudo apt autoremove -y'

#chore
alias desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'
alias lag='alias | grep'

#competitive
alias py=python3
alias m='make && make t'
alias g='g++ -std=c++14 -O2 -Wshadow -Wall -Wno-unused-result'
alias tg='time g++ -std=c++14 -O2'
alias gw='g++ -std=c++14 -O2 -Wfatal-errors'

#git
alias pull='git pull'
alias push='git push'
alias gs='git status'
alias ga='git add'  
alias gaa='git add --all'
alias gcm='git commit -m'
alias gclone='source ~/clonegithub.sh'

#remaper
alias remap='bash ~/remaper/remaper.sh'
alias unremap='bash ~/remaper/undo.sh'



#show git branch on terminal prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[01;34m\]\w\[\033[01;32m\]\$(parse_git_branch)\[\033[00m\] $ "

##ALIASES
