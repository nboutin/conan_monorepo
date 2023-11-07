#!/bin/bash

# On error, exit immediately
set -e

cmake --preset gcc -DCMAKE_INSTALL_PREFIX=../local
cmake --build --preset gcc
ctest --preset test -VV
