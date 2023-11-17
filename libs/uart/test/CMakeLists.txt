cmake_minimum_required(VERSION 3.15)
project(UartTest CXX)

find_package(GTest REQUIRED CONFIG)

add_executable(test_uart test_uart.cpp)
target_link_libraries(test_uart PRIVATE GTest::gtest GTest::gtest_main uart)

add_test(NAME UartTest COMMAND test_uart)
