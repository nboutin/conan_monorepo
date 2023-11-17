cmake_minimum_required(VERSION 3.15)
cmake_policy(SET CMP0123 NEW)

project(PackageTest C)

find_package(uart CONFIG REQUIRED)

add_executable(example src/example.c)
target_link_libraries(example uart::uart)
