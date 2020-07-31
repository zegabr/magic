#!/bin/bash
#m for main

#copy stuff to parent of m/
cp -r  ./m/stuff/ ./

cd
rm -rf remaper/
git clone https://github.com/zegabr/remaper
cd - #go back to parent of m/

source ./m/n.sh #setups+aliases

source ./m/c.sh #competitive setup
