CXX=g++
CXX=clang++
PYTHON3=python3

.PHONY: all yield variant pydbus

all: yield variant pydbus

yield: yield.bin
	./yield.bin

yield.bin: yield.cpp
	$(CXX) -std=c++14 yield.cpp yieldxx/coroutine_thread.cpp -pthread -o yield.bin

variant: variant.bin
	./variant.bin

variant.bin: variant.cpp
	$(CXX) -std=c++14 variant.cpp -o variant.bin

pydbus:
	$(PYTHON3) pydbus-ex.py
