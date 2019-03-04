#b de benchmark
echo "
============benchmark============="

echo "
#include <iostream>
using namespace std;
int main(){
	int c=0;
	for(int i=0;i<423000000;i++){
		c++;
	}

}

" > benchmark.cpp

g++ benchmark.cpp -o b
echo "this PC runs 4.23e8 operations in "
time ./b

rm benchmark.cpp b

echo "
============benchmark ended======="
