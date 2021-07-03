#!/bin/sh
# v for vim

#install ripgrep
#curl -LO https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep_12.1.1_amd64.deb
#sudo dpkg -i ripgrep_12.1.1_amd64.deb
#rm ripgrep_12.1.1_amd64.deb

cp ./stuff/coc-settings.json ~/.vim/coc-settings.json
cp ./stuff/.ccls ~/.ccls
cp ./stuff/.vimrc ~/.vimrc
echo
echo "========my vim setup overrided yours======="
echo

#cd ~/Downloads
#git clone https://github.com/https://github.com/ryanoasis/nerd-fonts
#cd nerd-font/
#./install.sh DroidSansMono
#echo "setup this DroidSansMono font on your terminal"

