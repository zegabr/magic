#b for benchmark

echo "
============benchmark============="

g++ ./m/stuff/benchmark.cpp -o b
time ./b
rm ./b

echo "
============benchmark ended======="
