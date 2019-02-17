CC=clang-6.0
CXX=clang++-6.0


FOLLY=/root/proxygen/proxygen/folly

all: Fuzzer

clean:
        rm -rf Fuzzer

Fuzzer: fuzzer.cpp

        $(CXX) -o macfuzz -g fuzzer.cpp -I$(FOLLY)/include $(FOLLY)/_build/libfolly.so -fsanitize=fuzzer,undefined -lfolly -lglog -lboost_system