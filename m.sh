#!/bin/bash
#m for main

#copy stuff to parent of m/
cp -r  ./m/stuff/ ./

#cd
#rm -rf remaper/
#git clone https://github.com/zegabr/remaper
#cd - #go back to parent of m/

#creates competitive/ at parent of m/
rm -rf competitive/
mkdir competitive/


source ./m/n.sh #setups+aliases

cd competitive/

#copy my competitive code lib
rm -rf cp/
git clone https://github.com/zegabr/cp.git
echo 

pwd
cp ./cp/stuff/r.sh ./r.sh
cp ./cp/stuff/cj.sh ./cj.sh
source r.sh

echo "cp folder has:"
ls cp/
