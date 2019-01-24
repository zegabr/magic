#!/bin/bash
## draft creation
cp  ./m/tmp.cpp ./x.cpp
cp ./x.cpp ./tmp.cpp


##gedit settings
bash ./m/geditsetup.sh 




##vim settings
echo "cat m/vimsetup > ~/.vimrc for vimsetup"
echo
vim --version | grep +clipboard
vim --version | grep +autocmd
echo "if it has +clipboard, you can use ^A, ^C and ^V"




