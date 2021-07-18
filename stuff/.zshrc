# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="juanghurtado"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-syntax-highlighting
    copydir
    copyfile
    extract
    zsh-autosuggestions
    k
    docker
    docker-compose
)
source /etc/zsh_command_not_found

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

##COMPETITIVE
alias m='make && make t'
alias c='g++ -std=c++17 -O2 -Wshadow -Wall -Wno-unused-result -g -fsanitize=address,undefined -D_GLIBCXX_DEBUG -Wno-unused-result -Wno-sign-compare -Wno-char-subscripts'
alias tc='time g++ -std=c++17 -O2'
alias cw='g++ -std=c++17 -O2 -Wfatal-errors'

##COMPETITIVE




##ALIASES

alias update='sudo apt update && sudo apt -u upgrade -y && sudo apt autoclean -y && sudo apt clean -y && sudo apt autoremove -y'
alias lag='alias | grep'

#-----------------------files
alias ebash='vim ~/.bashrc'
alias ezsh='vim ~/.zshrc'
alias evim='vim ~/.vimrc'
" open vim and search for file with fzf"
alias vimf='vim -o `fzf`'

# save vim configuration files to m/
function configsave(){
    cp ~/.zshrc ~/m/stuff/.zshrc
    cp ~/.vimrc ~/m/stuff/.vimrc
    cp ~/.ccls ~/m/stuff/.ccls
    cp ~/.vim/coc-settings.json ~/m/stuff/coc-settings.json
}

#Open current day note file
function note(){
    filename=$(date +'%a-%m-%d-%Y')
    vim ~/notes/${filename}.txt +
}

#--------------------containers
alias dps='docker ps'
alias dpsa='docker ps -a'
#stop all
alias dsa='docker stop $(docker ps -a -q)'
#remove all
alias drma='docker rm $(docker ps -a -q)'

#logs
alias dlf='docker logs -f'
alias dl='docker logs'

alias gw='./gradlew' # lê-se: GRADILEU 
alias getcppincludepaths='g++ -E -x c++ - -v < /dev/null'

# -----------------global python
alias py='python3'

#--------------------git utilities
alias gs='git status'
alias guncommit='git reset HEAD~1 --soft'

# clone github repo via ssh
function gclssh(){
    git clone --recurse-submodules git@github.com:$1.git
}

# clone github repo via ssh using ssh config id
# ex: $ gclssh-by-id zegabr zegabr/m
# use this when multiple ssh keys are added
function gclssh-by-id(){
    git clone --recurse-submodules git@github.com-$1:$2.git
}

# config local user and email
# ex: $ gconfiglocal zegabr jgsp2@cin.ufpe.br
function gconfiglocal(){
    git config user.name $1
    git config user.email $2
}

# clone github repo via https
function gclhttps(){
    git clone --recurse-submodules https://github.com/$1
}

# change keyboard numerical row mappings to its symbols
function remaper(){
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
