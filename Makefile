

all: bin/run bin/run2

bin/run: build/common.o src/run.cpp
	g++ -o bin/run src/run.cpp build/common.o
bin/run2: build/common.o src/run2.cpp
	g++ -o bin/run2 src/run2.cpp build/common.o
build/common.o: src/common.cpp src/common.h
	g++ -c -o build/common.o src/common.cpp
