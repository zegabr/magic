#!/bin/bash
## draft creation
cp  ./m/tmp.cpp ./x.cpp
cp ./x.cpp ./tmp.cpp

##gedit settings
bash ./m/geditsetup.sh 

##vim settings
cat m/vimsetup > ./.vimrc
echo ".vimrc created at current directory"
vim --version | grep +clipboard
vim --version | grep +autocmd
echo "if it has +clipboard, you can use ^A, ^C and ^V"




