#include <iostream>
#include <math.h>
#include <thread>
#include <mutex>  
using namespace std;
using namespace std::chrono;

const long long FIXED_ITERATIONS_QUANTITY = 1e9; //good enough to be near 1 sec

void iterate( long long iterations = FIXED_ITERATIONS_QUANTITY){
    long long c = 0;
    for( long long  i = 0; i < iterations; i++){
        c++;
    }
}

void  threaderedBenchmark(uint threadID){
    //mulththread code
    //inside the lock, there is only one thread running  this code
    iterate();
}

double getSecondsToIterateManyThreads(int threadCount, int iterations = FIXED_ITERATIONS_QUANTITY){
    auto start = high_resolution_clock::now();

    thread threads  [threadCount];//initialize the threads array
    for(long long i = 0;i < threadCount; i++){
        threads[i] = thread(threaderedBenchmark, i); //start every thread
    }
    for (auto& th : threads){
        th.join(); //	wait for each thread to finish
    }

    return (double)duration_cast<milliseconds> (high_resolution_clock::now()-start).count() / 1000;
}

int main(){
    cout << "-----------Multi Thread---------"<< endl ;
    long long iterations = FIXED_ITERATIONS_QUANTITY;
    const auto processor_count = std::thread::hardware_concurrency();

    uint threadCount = processor_count;
    double timeElapsedInSeconds = getSecondsToIterateManyThreads(threadCount, iterations);

    cout << threadCount << " threads available" << endl;
    cout <<"This PC runs " << (double)iterations * processor_count << " operations in " << timeElapsedInSeconds <<" sec." << endl ;
    cout <<"Then, it runs " << (double)iterations * processor_count / timeElapsedInSeconds << " operations in 1 sec." << endl ;
    cout << endl; 
}


