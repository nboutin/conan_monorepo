# ARM project

## Build with conan only

    cmake -S . -B build -G "MinGW Makefiles" --toolchain armclang.cmake -DCMAKE_BUILD_TYPE=Release
    cmake --build build
    cmake --install build --prefix ~/.local
