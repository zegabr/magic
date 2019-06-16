#!/bin/bash
#m de main
rm -rf training/
mkdir training/

source ./m/n.sh #rascunho + template + aliases

#copy other things here
mv ./STUFF ./training/

cd training/

cp ./STUFF/Makefile ./
cp ./STUFF/tmp.cpp ./
cp ./STUFF/Tmp.cpp ./
cp ./STUFF/r.sh ./
bash r.sh

rm -rf cp/
git clone https://github.com/zegabr/cp.git
echo 
echo "cp folder has:"
ls cp/
touch i1 i2 i3
