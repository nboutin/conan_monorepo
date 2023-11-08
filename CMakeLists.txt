# Use for project development
# Entry point for IDEs (visual studio)

cmake_minimum_required(VERSION 3.10)
project(Mylibrary)

# Parallel build
include(ProcessorCount)
ProcessorCount(N)
if(NOT N EQUAL 0)
    set(CMAKE_BUILD_PARALLEL_LEVEL ${N})
endif()

add_subdirectory(source)

enable_testing()
add_subdirectory(test)
