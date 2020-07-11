#b for benchmark

g++ -std=c++11 ./m/stuff/benchmark.cpp -o b
time ./b
rm ./b

echo ""

g++ -std=c++11 -pthread ./m/stuff/benchmarkThread.cpp -o b
time ./b
rm ./b

