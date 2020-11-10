#!/bin/sh
# Z-Shell installation (with oh-my-zsh)
if ! [ -x "$(command -v zsh)" ]; then
    sudo apt install zsh -y
    chsh -s $(which zsh) #change default terminal to be zsh
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi


git clone https://github.com/zegabr/pyutils

#===================== Change settings here for future instalations
ZSH_THEME=af-magic
CASE_SENSITIVE="true"
DISABLE_UPDATE_PROMPT="true" # updates zsh without asking


python3 pyutils/add_attribution.py ~/.zshrc "ZSH_THEME=$ZSH_THEME"
python3 pyutils/add_attribution.py ~/.zshrc "CASE_SENSITIVE=\"$CASE_SENSITIVE\""
python3 pyutils/add_attribution.py ~/.zshrc "DISABLE_UPDATE_PROMPT=\"$DISABLE_UPDATE_PROMPT\""
python3 pyutils/add_attribution.py ~/.zshrc "source /etc/zsh_command_not_found" # this makes zsh suggest uninstalled apt packages when command not found
#==================================================================


#============================================================================= Add plugins below
# Clone extra plugins here
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/supercrabtree/k ~/.oh-my-zsh/custom/plugins/k
git clone git://github.com/gradle/gradle-completion ~/.oh-my-zsh/plugins/gradle-completion

# Add wanted plugins here
PLUGINS="plugins=(git zsh-syntax-highlighting copydir copyfile extract zsh-autosuggestions k)"

python3 pyutils/add_attribution.py ~/.zshrc $PLUGINS
#=============================================================================================


source ~/.zshrc

echo "removing pyutils"
rm -rf pyutils/

echo "PLS OPEN ANOTHER TERMINAL FOR CHANGES TAKE EFFECT "
