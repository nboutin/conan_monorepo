#!/bin/bash

# On error, exit immediately
set -e

cmake --preset gcc -DCMAKE_INSTALL_PREFIX=../local
cmake --build --preset gcc
cmake --build --preset gcc --target install
