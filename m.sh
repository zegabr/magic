#!/bin/bash
#m de magic(or main)
mkdir training/
cd training/

rm -rf cp/
git clone https://github.com/zegabr/cp.git


source ../m/n.sh #rascunho + template + aliases
cp ../m/n.sh ./r.sh
echo 
echo "cp folder has:"
ls cp/
touch i1 i2 i3
