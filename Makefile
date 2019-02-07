a.out: x.cpp
	g++ x.cpp -std=c++17 -Wfatal-errors -O2 -o a.out 
clean:
	rm a.out

