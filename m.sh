#!/bin/bash
#m de main

cd
rm -rf remaper/
git clone https://github.com/zegabr/remaper
cd -

rm -rf training/
mkdir training/

source ./m/n.sh #rascunho + template + aliases

#copy other things here
mv ./STUFF ./training/

cd training/

cp ./STUFF/Makefile ./
cp ./STUFF/tmp.cpp ./
cp ./STUFF/ymp.cpp ./
cp ./STUFF/pmp.py ./
cp ./STUFF/r.sh ./
bash r.sh

rm -rf cp/
git clone https://github.com/zegabr/cp.git
echo 
echo "cp folder has:"
ls cp/
