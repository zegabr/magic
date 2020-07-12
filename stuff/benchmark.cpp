#include <iostream>
#include <math.h>
#include <thread>
using namespace std;
using namespace std::chrono;

const long long FIXED_ITERATIONS_QUANTITY = 1e9; //good enough to be near 1 sec

double getSecondsToIterate(long long iterations = FIXED_ITERATIONS_QUANTITY){
    long long c = 0;

    auto start = high_resolution_clock::now();
    for(long long i = 0; i < iterations; i++){
        c++;
    }
    return (double)duration_cast<milliseconds> (high_resolution_clock::now()-start).count() / 1000;
    
}

int main(){
    cout << "-------------Single Thread--------------"<< endl ;
    long long iterations = FIXED_ITERATIONS_QUANTITY;
    
    double timeElapsedInSeconds = getSecondsToIterate(iterations);
    
    cout << "This PC runs "<< (double)iterations << " operations in " << timeElapsedInSeconds <<" sec." << endl;
    cout << "Then, it runs "<< (double)iterations/timeElapsedInSeconds << " operations in 1 sec." << endl;
    cout << endl; 

}

