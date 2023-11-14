# ARM project

## Configuration

    conan config install settings_user.yml
    conan config install -sf profiles -tf profiles .

## Build

    conan build . -pr cortex-m23 -s build_type=MinSizeRel


## (old) Build with conan only

    conan config install settings_user.yml
    conan install . -pr:b=./profiles/gcc_13 -pr:h ./profiles/cortex-m23

    # From Windows terminal
    .\build\Release\generators\conanbuild.bat
    cmake --preset conan-release

    cmake -B build -DCMAKE_TOOLCHAIN_FILE=Release/generators/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release

    cmake -B build -G "MinGW Makefiles" -DCMAKE_TOOLCHAIN_FILE=Release/generators/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
    conan build .
