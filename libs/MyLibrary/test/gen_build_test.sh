#!/bin/bash

# On error, exit immediately
set -e

cmake -H. -Bbuild/gcc/debug -G Ninja -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=~/.local
cmake --build build/gcc/debug
(cd build/gcc/Debug && ctest -C Debug -VV)

# cmake --preset gcc -DCMAKE_INSTALL_PREFIX=../local
# cmake --build --preset gcc
# ctest --preset test -VV
