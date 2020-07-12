#include <iostream>
#include <math.h>
#include <thread>
#include <mutex>  
using namespace std;
using namespace std::chrono;

const long long FIXED_ITERATIONS_QUANTITY = 1e8; //good enough to be near 1 sec
long long iterations = FIXED_ITERATIONS_QUANTITY; // will change on main loop

void iterate( long long iterations = FIXED_ITERATIONS_QUANTITY){
    long long c = 0;
    for( long long  i = 0; i < iterations; i++){
        c++;
    }
}

void  threaderedBenchmark(uint threadID){
    //mulththread code
    //inside the lock, there is only one thread running  this code
    iterate(iterations);
}

double getSecondsToIterateManyThreads(int processor_count, int iterations = FIXED_ITERATIONS_QUANTITY){
    auto start = high_resolution_clock::now();

    thread threads  [processor_count];//initialize the threads array
    for(long long i = 0;i < processor_count; i++)
        threads[i] = thread(threaderedBenchmark, i); //start every thread

    for (auto& th : threads)
        th.join(); //	wait for each thread to finish

    return (double)duration_cast<milliseconds> (high_resolution_clock::now()-start).count() / 1000;
}

int main(){
    cout << "-----------Multi Thread---------"<< endl ;
    int testSize = 10;
    double timeElapsedInSeconds, average = 0;
    const auto processor_count = std::thread::hardware_concurrency();

    cout << processor_count << " threads available" << endl << endl;
    cout << "iterations\tseconds" << endl;
    
    for(int i = 0; i < testSize; i++){
        timeElapsedInSeconds = getSecondsToIterateManyThreads(processor_count, iterations);
        average += (double)iterations * processor_count / timeElapsedInSeconds;
        cout << (double)iterations * processor_count << "\t\t" << timeElapsedInSeconds << endl;
        
        iterations += FIXED_ITERATIONS_QUANTITY;//becomes (1e9, 2e9, 3e9 ... 1e10) * processor_count
    }

    cout << "Average iterations in 1 sec is: " << (double)average / testSize / timeElapsedInSeconds << endl;
}


