#include <iostream>
#include <math.h>
#include <thread>
using namespace std;
using namespace std::chrono;

const long long FIXED_ITERATIONS_QUANTITY = 1e8; //good enough to be near 1 sec

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
    int testSize = 10;
    double timeElapsedInSeconds, average = 0;

    cout << "iterations\tseconds" << endl;

    for(int i = 0; i < testSize; i++){
        timeElapsedInSeconds = getSecondsToIterate(iterations);
        average += (double)iterations / timeElapsedInSeconds;
        cout << (double)iterations << "\t\t" << timeElapsedInSeconds <<endl;

        iterations += FIXED_ITERATIONS_QUANTITY;//becomes 1e8, 2e8, 3e8 ... 1e9
    }

    cout << "Average iterations in 1 sec is: " << (double)average / testSize / timeElapsedInSeconds << endl;
}

