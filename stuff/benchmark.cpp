#include<iostream>
#include<time.h>
#include<math.h>
using namespace std;

#define FIXED_ITERATIONS_QUANTITY 1e9 //good enough to be near 10 sec

double getSecondsToIterate(int iterations = FIXED_ITERATIONS_QUANTITY){
    int c = 0;
    clock_t t = clock();
    for(int i = 0; i < iterations; i++){
        c++;
    }
    t = clock() - t;
    return (double)t/CLOCKS_PER_SEC;
}


int main(){
    int iterations = FIXED_ITERATIONS_QUANTITY;
    double sec = getSecondsToIterate(iterations);
    cout<<"this PC runs "<< (double)iterations << " operations in " << sec <<" seconds" << endl ;
    cout<< "then, it runs "<< (double)iterations/sec << " operations in 1 sec." << endl ;
}

