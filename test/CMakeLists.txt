cmake_minimum_required(VERSION 3.8)
project(MyLibraryTest VERSION 0.1.0)

# dependencies
enable_testing()
find_package(GTest MODULE REQUIRED)
if(NOT TARGET MyCompagny::MyLibrary)
  find_package(MyLibrary CONFIG REQUIRED)
endif()

add_executable(MyLibraryTest
  test_source.cpp
)

target_link_libraries(MyLibraryTest
  PRIVATE
    MyCompagny::MyLibrary
    GTest::Main
)

add_test(NAME MyLibraryTest COMMAND MyLibraryTest)
