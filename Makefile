a.out: x.cpp
	g++ x.cpp -std=c++14 -o a.out 

1: x.cpp
	g++ x.cpp -std=c++14 -Wfatal-errors -o a.out 

clean:
	rm a.out

