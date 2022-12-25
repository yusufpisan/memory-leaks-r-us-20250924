#!/bin/bash

# remove executable
echo "Removing previous executable: rm -f ./a.out"
rm -f ./a.out

# compile
echo "Compiling: clang++ -g -std=c++11 *.cpp"
clang++ -g -std=c++11 *.cpp

if [ ! -f "a.out" ]
then
    echo "*** Failed to create executable ***"
    exit
fi

# executing under valgrind
echo "Executing with valgrind: valgrind ./a.out"
valgrind ./a.out
