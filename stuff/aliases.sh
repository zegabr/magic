##ALIASES

alias atualiza='sudo apt update && sudo apt -u upgrade -y && sudo apt autoclean -y && sudo apt clean -y && sudo apt autoremove -y'
alias lag='alias | grep'
alias gs='git status'
alias bashrc='vim ~/.bashrc'
alias zshconfig='vim ~/.zshrc'
alias ohmyzshconfig='vim ~/.oh-my-zsh/oh-my-zsh.sh'
alias vimconfig='vim ~/.vimrc'

function gclssh(){ 
    # clone github repo via ssh
    git clone --recurse-submodules git@github.com:$@.git
}

function gclhttps(){ 
    # clone github repo via https
    git clone --recurse-submodules https://github.com/$@
}

function docker-stop-all(){
    # stop all containers
    docker stop $(docker ps -a -q) 
    # remove all containers
    docker rm $(docker ps -a -q) 
    # remove all volumes
    docker volume rm $(docker volume ls -q)
    # remove all images
    docker rmi -f $(docker images -f "dangling=true" -q)
}

function docker-delete-all(){
    docker image prune -a -f
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
