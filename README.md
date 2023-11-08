# CONAN Monorepo sandbox

## ToDo

- Use GCC12 and GCC13
- MyLibrary has dependencie on another lib name Foo

## Generate, Build, Test, Install with CMake

### From top level directory

    cmake -H. -Bbuild/gcc/release -G"MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=../local
    cmake --build build/gcc/release
    (cd build/gcc/release && ctest -C Release -VV)

ctest looks for a file named CTestTestfile.cmake

The parentheses ensure that the cd command only affects the ctest command, not any commands that follow.

### From source

    cmake -H. -Bbuild/gcc/release -G"MinGW Makefiles" -DCMAKE_INSTALL_PREFIX=../../local
    cmake --build build/gcc/release
    cmake --build build/gcc/release --target install

## Package testing workflow

Verify package creation and export

1. Build from source folder
2. Build and run test from test folder:

    cd test
    cmake --preset gcc -DCMAKE_INSTALL_PREFIX=../local
    ctest -VV

## Setup GoogleTest with CMake

    git clone https://github.com/google/googletest.git -b v1.14.0
    cd googletest

    cmake -H. -G"MinGW Makefiles" -Bbuild -DCMAKE_INSTALL_PREFIX=../local
    cmake --build build
    cmake --build build --target install

or

    # With CMakePreset
    cmake -H. -Bbuild -DCMAKE_INSTALL_PREFIX=../local
    cmake --build --preset gcc
    cmake --build --preset gcc --target install

