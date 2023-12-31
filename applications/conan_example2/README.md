# CONAN Example2 : simple CMake project

## Install and create default profile

    pip install --user --upgrade conan
    conan profile detect --force

## Build

    conan install . --output-folder=build --build=missing
    cmake -H. -Bbuild -G Ninja -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake
    cmake --build build
    ./build/compressor.exe

## Build CMakePreset

    conan install . --output-folder=build --build=missing
    cmake -G Ninja --preset conan-release
    cmake --build --preset conan-release

## Use another profile

    conan install . --output-folder=build --build=missing -pr gcc_13

## Select build type

    conan install . --output-folder=build --build=missing -s build_type=Debug
    cmake -H. -Bbuild -G "Ninja Multi-Config" -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake
    cmake --build build --config Debug
    ./build/Debug/compressor.exe

## Shared library

    conan install . --output-folder=build --build=missing --options=zlib/1.3:shared=True

## Profile

[settings]
arch=x86_64
build_type=Release
compiler=gcc
compiler.cppstd=gnu17
compiler.libcxx=libstdc++11
compiler.version=12
os=Windows

[buildenv]
CC=D:\program\winlibs-x86_64-mcf-seh-gcc-13.2.0-mingw-w64ucrt-11.0.1-r2\mingw64\bin\gcc
CXX=D:\program\winlibs-x86_64-mcf-seh-gcc-13.2.0-mingw-w64ucrt-11.0.1-r2\mingw64\bin\g++
