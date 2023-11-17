cmake_minimum_required(VERSION 3.15)
cmake_policy(SET CMP0123 NEW)

project(uart LANGUAGES C VERSION 0.1.0)

add_library(uart src/uart.c)
target_include_directories(uart PUBLIC include)

set_target_properties(uart PROPERTIES PUBLIC_HEADER "include/uart.h")
install(TARGETS uart)
