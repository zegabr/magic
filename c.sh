#!/bin/sh
# competitive setup

bash v.sh

#creates competitive/ at parent of m/
cd ../
rm -rf competitive/
mkdir competitive/
cd competitive/

#copy my competitive code lib
git clone git@github.com:zegabr/cp.git
echo 
cd cp

pwd
source init.sh
pwd #init changes directory
