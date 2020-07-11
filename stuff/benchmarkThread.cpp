#include<iostream>
#include<time.h>
#include<math.h>
#include <thread>
#include <mutex>   
using namespace std;
using namespace std::chrono; 

//may return 0 when not able to detect
const auto processor_count =std::thread::hardware_concurrency();





typedef long long ll;
const int multiplier = 1000000;
const int range = 1000;



ll bs(int l){
    auto start = high_resolution_clock::now(); 
    ll operations = 0;

    while(duration_cast<milliseconds> (high_resolution_clock::now()-start).count()< l*1000){
        operations++;//+=8;
    }
    return operations;
}


std::mutex mtx; 
void updateAnswer(ll*answer, ll addValue,uint  threadID){
    mtx.lock();
    long double m2 = (long double)(addValue)/(range/10);
    cout<<"Thread "<<threadID<<" calulated "<<m2<< '\n' ; 

    *answer+=addValue;//add ra in the value stored in answer. ra is shared across threads
    mtx.unlock();

}

void  threaderedBenchmark(int l, ll* answer, uint threadID){
    //mulththread code
    ll ra = bs( l);
    //~mulththread code
    //inside the lock, there is only one thread running  this code
    updateAnswer(answer, ra, threadID);
    //~single thread code

}



int main(){
    ll answer = 0;
    uint threadCount = processor_count;
    cout<<threadCount<<" threads available \n";
    int seconds = 16;
    //initialize the threads array
    thread threads  [threadCount];
    //start every thread
    for(int i=0;i< threadCount;i++){

        threads[i] = thread(threaderedBenchmark, seconds, &answer, i);
    }
    //	wait for each thread to finish
    for (auto& th : threads) th.join();

    long double m2 = (long double)answer;
    cout<<"This PC runs "<< m2 /seconds<<" operations per secound \n";

}

