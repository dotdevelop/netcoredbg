#!/bin/sh
BINDIR="$PWD/../../build/AddIns/Samsung.Netcoredbg"
if [ ! -d "build" ]; then mkdir build; fi
if [ ! -d "$BINDIR" ]; then mkdir $BINDIR; fi
cd build
CC=clang CXX=clang++ cmake .. -DCMAKE_INSTALL_PREFIX=$BINDIR
cmake --build . --target install
echo done
