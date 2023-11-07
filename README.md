# CONAN Monorepo sandbox

## Generate, Build, Test, Install with CMake

Use -DCMAKE_INSTALL_PREFIX=../local for local test

    cd source
    cmake --preset gcc -DCMAKE_INSTALL_PREFIX=~/.local
    cmake --build --preset gcc

    ctest -VV
    cmake --build --preset gcc --target install
