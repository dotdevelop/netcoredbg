#!/bin/sh
MDAddIns="$PWD/../../build/AddIns"
if [ -d "$MDAddIns" ]; then
  BINDIR="$MDAddIns/Samsung.Netcoredbg"
else
  BINDIR="$PWD/Samsung.Netcoredbg"
fi

if [ ! -d "build" ]; then mkdir build; fi
if [ ! -d "$BINDIR" ]; then mkdir $BINDIR; fi
cd build
CC=clang CXX=clang++ cmake .. -DCMAKE_INSTALL_PREFIX=$BINDIR
cmake --build . --target install
echo done
