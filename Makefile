a.out: x.cpp
	g++ x.cpp -std=c++17 -Wfatal-errors -o a.out -O3
clean:
	rm a.out

