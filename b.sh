#b de benchmark

echo "
============benchmark============="

g++ STUFF/benchmark.cpp -o b
time ./b
rm b

echo "
============benchmark ended======="
