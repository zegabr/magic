#!/bin/bash
#m de magic(or main)
mkdir training/
cd training/

rm -rf cp/
git clone https://github.com/zegabr/cp.git


:'
git clone https://github.com/zegabr/remaper.git
mv ./remaper/remaper.sh ~/
mv ./remaper/undo.sh ~/
rm -f -r ./remaper
echo "
-----to remap keys or undo remapping, use remaper and undoremaper aliases-----
"
'

clear

source ../m/n.sh #rascunho + template + aliases
echo 
echo "cp folder has:"
ls cp/
