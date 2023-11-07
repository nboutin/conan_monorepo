# Use for project development
# Entry point for IDEs (visual studio)

cmake_minimum_required(VERSION 3.10)
project(Mylibrary)

add_subdirectory(source)

enable_testing()
add_subdirectory(test)
