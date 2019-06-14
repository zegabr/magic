#!/bin/bash
#m de main
mkdir training/

source /m/n.sh #rascunho + template + aliases

#copy other things here
mv Makefile training/
mv tmp.cpp training/
mv x.cpp training/



cd training/
rm -rf cp/
git clone https://github.com/zegabr/cp.git
echo 
echo "cp folder has:"
ls cp/
touch i1 i2 i3
