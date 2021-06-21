##ALIASES

alias atualiza='sudo apt update && sudo apt -u upgrade -y && sudo apt autoclean -y && sudo apt clean -y && sudo apt autoremove -y'
alias lag='alias | grep'

alias gs='git status'
alias guncommit='git reset HEAD~1 --soft'

alias ebash='vim ~/.bashrc'
alias ezsh='vim ~/.zshrc'
alias evim='vim ~/.vimrc'

alias dsa='docker stop $(docker ps -a -q)'
alias drma='docker rm $(docker ps -a -q)'
alias dlf='docker logs -f'
alias dl='docker logs'
alias dps='docker ps'
alias dpsa='docker ps -a'

alias gw='./gradlew' # lê-se: GRADILEU 

# global python
alias py='python3'

function gclssh(){
    # clone github repo via ssh
    git clone --recurse-submodules git@github.com:$1.git
}

function gclssh-by-id(){
    # clone github repo via ssh using ssh config id
    # ex: $ gclssh-by-id zegabr zegabr/m
    # use this when multiple ssh keys are added
    git clone --recurse-submodules git@github.com-$1:$2.git
}

function gconfiglocal(){
    # config local user and email
    # ex: $ gconfiglocal zegabr jgsp2@cin.ufpe.br
    git config user.name $1
    git config user.email $2
}

function gclhttps(){
    # clone github repo via https
    git clone --recurse-submodules https://github.com/$1
}

function remaper(){
    # change keyboard numerical row mappings to its symbols
    FLAG=~/REMAPER_ON_FLAG
    if [ ! -f "$FLAG" ]; then
        echo "activating remaper"
        #original mapping:		#new mapping
        #keycode 10 = 1			 exclam = '!'
        #keycode 11 = 2			 at = '@'
        #keycode 12 = 3			 numbersign = '#'
        #keycode 13 = 4			 dollar = '$'
        #keycode 14 = 5		     percent = '%'
        #keycode 15 = 6			 asciicircum = '^'
        #keycode 16 = 7			 ampersand = '&'
        #keycode 17 = 8			 asterisk = '*'
        #keycode 18 = 9			 parenleft = '('
        #keycode 19 = 0			 parenright = ')'
        #keycode 20 = minus		 underscore = '_'

        #commands to remap
        xmodmap -e "keycode 10 = exclam"
        xmodmap -e "keycode 11 = at"
        xmodmap -e "keycode 12 = numbersign"
        xmodmap -e "keycode 13 = dollar"
        xmodmap -e "keycode 14 = percent"
        xmodmap -e "keycode 15 = underscore"
        xmodmap -e "keycode 16 = ampersand"
        xmodmap -e "keycode 17 = asterisk"
        xmodmap -e "keycode 18 = parenleft"
        xmodmap -e "keycode 19 = parenright"
        xmodmap -e "keycode 20 = underscore"
        echo 1 > "$FLAG"
    else
        echo "deactivating remaper"
        setxkbmap -option
        rm "$FLAG"
    fi
    
}

##ALIASES
