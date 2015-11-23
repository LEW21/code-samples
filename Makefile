CXX=g++
CXX=clang++
PYTHON3=python3

.PHONY: all yield variant pydbus submodules

all: yield variant pydbus

submodules:
	git submodule update --init

yield: yield.bin
	./yield.bin

yield.bin: yield.cpp submodules
	$(CXX) -std=c++14 yield.cpp yieldxx/coroutine_thread.cpp -pthread -o yield.bin

variant: variant.bin
	./variant.bin

variant.bin: variant.cpp submodules
	$(CXX) -std=c++14 variant.cpp -o variant.bin

pydbus: submodules
	$(PYTHON3) pydbus-ex.py
