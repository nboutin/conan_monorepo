cmake_minimum_required(VERSION 3.8)
project(MyLibraryTest VERSION 0.1.0)

find_package(MyLibrary CONFIG REQUIRED)

target_link_libraries(MyLibraryTest
    PUBLIC
        MyCompagny::MyLibrary
        GTest::Main
)
