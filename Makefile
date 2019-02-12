a.out: x.cpp
	g++ x.cpp -std=c++17 -o a.out 

1: x.cpp
	g++ x.cpp -std=c++17 -Wfatal-errors -o a.out 

clean:
	rm a.out

