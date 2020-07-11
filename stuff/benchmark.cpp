#include <iostream>
#include <time.h>
#include <math.h>
using namespace std;

const long long FIXED_ITERATIONS_QUANTITY = 1e9; //good enough to be near 1 sec

double getSecondsToIterate(long long iterations = FIXED_ITERATIONS_QUANTITY){
    long long c = 0;
    clock_t t = clock();

    for(long long i = 0; i < iterations; i++){
        c++;
    }
    
    t = clock() - t;
    return (double)t / CLOCKS_PER_SEC;
}


int main(){
    cout << "-------------Single Thread--------------"<< endl ;
    long long iterations = FIXED_ITERATIONS_QUANTITY;
    
    double timeElapsedInSeconds = getSecondsToIterate(iterations);
    
    cout << "This PC runs "<< (double)iterations << " operations in " << timeElapsedInSeconds <<" seconds" << endl;
    cout << "Then, it runs "<< (double)iterations/timeElapsedInSeconds << " operations in 1 sec." << endl;
    cout << endl; 
}

