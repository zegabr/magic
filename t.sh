#terminal setup here
#part1
sudo apt install zsh
chsh -s $(which zsh)

#oh my zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

source ~/zsha.sh

cat "ZSH_THEME="af-magic" " >> ~/.zshrc
cat "CASE_SENSITIVE="true" " >> ~/.zshrc


echo "unlog and relog on terminal"
