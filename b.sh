#b for benchmark

echo "=============BENCHMARK 1=============="
g++ -std=c++11 stuff/benchmark.cpp -o b
time ./b
rm ./b

echo
echo

echo "=============BENCHMARK 2=============="

g++ -std=c++11 -pthread /stuff/benchmarkThread.cpp -o b
time ./b
rm ./b

