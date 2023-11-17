# Conan package: UART demo

## Create Conan recipe

    conan new cmake_lib -d name=uart -d version=0.1.0

## Build

    conan create . -pr cortex-m23 -s build_type=Debug
    conan list uart
    conan create . -o uart/0.1.0:shared=True # not useful in our case since shared library is not supported
    conan list uart/0.1.0#:*
