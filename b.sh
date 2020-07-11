#b for benchmark

echo "
============benchmark1============="

g++ -std=c++11 ./m/stuff/benchmark.cpp -o b
time ./b
rm ./b

echo "
============benchmark1 ended======="
g++ -std=c++11 -pthread ./m/stuff/benchmarkThread.cpp -o b
time ./b
rm ./b

echo ""

echo "
============benchmark ended======="
