#!/bin/bash
## draft creation
cp  ./m/tmp.cpp ./a.cpp
cp ./a.cpp ./tmp.cpp
echo "paste input here" > i
##gedit settings
bash ./m/geditsetup.sh 
#echo
##vim settings
#echo "cat m/vimsetup > ~/.vimrc for vimsetup"
#echo
#vim --version | grep +clipboard
#vim --version | grep +autocmd
#echo "if it has +clipboard, you can use ^A, ^C and ^V"
#echo

#gedit a.cpp i o &



