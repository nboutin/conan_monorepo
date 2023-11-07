# CONAN Monorepo sandbox

## Generate, Build, Test, Install with CMake

Use -DCMAKE_INSTALL_PREFIX=../local for local test

    cd source
    cmake --preset gcc -DCMAKE_INSTALL_PREFIX=~/.local
    cmake --build --preset gcc

    ctest -VV
    cmake --build --preset gcc --target install

## Package testing workflow

Verify package creation and export

    cd source
    cmake --preset gcc -DCMAKE_INSTALL_PREFIX=../local
    cmake --build --preset gcc --target install

    cd test
    cmake --preset gcc -DCMAKE_INSTALL_PREFIX=../local
    ctest -VV

## Setup GoogleTest with CMake

    git clone https://github.com/google/googletest.git -b v1.14.0
    cmake -H. -Bbuild -DCMAKE_INSTALL_PREFIX=../local
    cmake --build --preset gcc
    cmake --build --preset gcc --target install
