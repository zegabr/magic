#!/bin/sh
# Z-Shell installation (with oh-my-zsh)
if ! [ -x "$(command -v zsh)" ]; then
    rm -rf ~/.oh-my-zsh
    sudo apt install zsh -y
    chsh -s $(which zsh) #change default terminal to be zsh
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

#clone plugins as such
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/supercrabtree/k ~/.oh-my-zsh/custom/plugins/k

cp stuff/.zshrc ~/.zshrc
source ~/.zshrc
source a.sh
echo "PLS OPEN ANOTHER TERMINAL FOR CHANGES TAKE EFFECT "
