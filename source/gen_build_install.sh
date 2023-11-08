#!/bin/bash

# On error, exit immediately
set -e

cmake -H. -Bbuild/gcc/release -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../../local
cmake --build build/gcc/release
cmake --build build/gcc/release --target install

# cmake --preset gcc -DCMAKE_INSTALL_PREFIX=../local
# cmake --build --preset gcc
# cmake --build --preset gcc --target install
