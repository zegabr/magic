#! /bin/bash
#r de reset


val=$1

if [ $val = 42 ]
then
	cp Tmp.cpp x.cpp
	echo "real competitive"
else
	cp tmp.cpp x.cpp
	echo "competitive"
fi

