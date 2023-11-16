cmake_minimum_required(VERSION 3.15)
project(uart CXX)




add_library(uart src/uart.cpp)
target_include_directories(uart PUBLIC include)



set_target_properties(uart PROPERTIES PUBLIC_HEADER "include/uart.h")
install(TARGETS uart)
