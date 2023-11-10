# CONAN 2 Template

## Build

    conan install . # Add '--build=missing' if necessary
    .\build\Release\generators\conanbuild.bat # From Windows terminal
    cmake -G Ninja --preset conan-release
    cmake --build --preset conan-release
    ./build/Release/compressor.exe # From Git Bash
    .\build\Release\generators\deactivate_conanbuild.bat # From Windows terminal

## Build with conan only

    conan install .
    conan build .
