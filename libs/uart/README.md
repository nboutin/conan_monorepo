# Conan package: UART demo

## Create Conan recipe

    conan new cmake_lib -d name=uart -d version=0.1.0

## Create package

    conan create . -pr cortex-m23 -s build_type=Debug
    conan list uart
    conan create . -o uart/0.1.0:shared=True # not useful in our case since shared library is not supported
    conan list uart/0.1.0#:*

## Test

    conan create . --build=missing --test-folder="" # -tf=""
    conan test test_package uart/0.1.0
