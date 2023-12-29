unset VARIABLE
echo "Without variable:"
SSFLAGS="-ptrace associativity-trace-without.trc :10000 -cache:dl1       dl1:128:32:4:l" ./run-wattch 2>&1 | tee associativity-out-without.txt
echo "With variable:"
VARIABLE=0 ; export VARIABLE
SSFLAGS="-ptrace associativity-trace-with.trc :10000 -cache:dl1       dl1:128:32:4:l" ./run-wattch 2>&1 | tee associativity-out-with.txt

