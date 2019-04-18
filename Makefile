a.out: x.cpp
	g++ x.cpp -std=c++14 -Wfatal-errors -O2
t:
	./a.out < i1
	echo
	./a.out < i2
	echo
	./a.out < i3
	echo

