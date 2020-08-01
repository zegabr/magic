##EXTRA BASHRC
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



#show git stuff on terminal prompt
COLOR_RED="\033[0;31m"
COLOR_YELLOW="\033[0;33m"
COLOR_GREEN="\033[01;32m"
COLOR_OCHRE="\033[38;5;37m"
COLOR_BLUE="\033[01;34m"
COLOR_WHITE="\033[0;37m"
COLOR_RESET="\033[0m"

function git_color {
  local git_status="$(git status 2> /dev/null)"

  if [[ $git_status =~ "Changes not staged" ]]; then
    echo -e $COLOR_RED
  elif [[ $git_status =~ "Changes to be committed" ]]; then
    echo -e $COLOR_OCHRE
  else
     echo -e $COLOR_GREEN
  fi
}

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\[$COLOR_BLUE\]\w" #working directory
PS1+="\[\$(git_color)\]"
PS1+="\$(parse_git_branch)"
PS1+="\[$COLOR_RESET\] $ "   # '#' for root, else '$'
export PS1

##EXTRA BASHRC
