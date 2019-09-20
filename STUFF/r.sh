#! /bin/bash
#r de reset


val=$1

if [ $val = 42 ]
then
	cp tmp.cpp x.cpp
	echo "competitive"
else
	cp ymp.cpp x.cpp
	echo "real competitive"
fi

touch i
