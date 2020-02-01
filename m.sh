#!/bin/bash
#m for main

#copy STUFF to parent of m/
cp -r  ./m/STUFF/ ./

#cd
#rm -rf remaper/
#git clone https://github.com/zegabr/remaper
#cd - #go back to parent of m/

#creates competitive/ at parent of m/
rm -rf competitive/
mkdir competitive/


source ./m/n.sh #setups+aliases


#copy my competitive code lib
rm -rf cp/
git clone https://github.com/zegabr/cp.git
echo 
echo "cp folder has:"
ls cp/

#move STUFF from parent of m/ to inside of competitive/

cd competitive/

cp ./cp/STUFF/Makefile ./
cp ./cp/STUFF/tmp.cpp ./
cp ./cp/STUFF/pmp.py ./
cp ./cp/STUFF/r.sh ./
bash r.sh

