# ARM project

## Build with conan only

    conan config install settings_user.yml
    conan install . -pr:b=default -pr:h ./profiles/cortex-m23
    cmake -B build -G "MinGW Makefiles" -DCMAKE_TOOLCHAIN_FILE=Release/generators/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
