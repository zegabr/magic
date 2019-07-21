#! /bin/bash
#r de reset


val=$1

if [ $val = 42 ]
then
	cp ymp.cpp x.cpp
	echo "real competitive"
else
	cp tmp.cpp x.cpp
	echo "competitive"
fi

touch i1 i2 i3 i4
