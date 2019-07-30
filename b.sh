#b for benchmark

echo "
============benchmark============="

g++ ./m/STUFF/benchmark.cpp -o b
time ./b
rm ./b

echo "
============benchmark ended======="
