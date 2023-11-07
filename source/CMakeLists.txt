cmake_minimum_required(VERSION 3.8)
project(MyLibrary VERSION 0.1.0)

# Parallel build
include(ProcessorCount)
ProcessorCount(N)
if(NOT N EQUAL 0)
    set(CMAKE_BUILD_PARALLEL_LEVEL ${N})
endif()

# dependencies
# find_package(Foo 1.0 REQUIRED)

# library definition (STATIC OR SHARED based on BUILD_SHARED_LIBS)
add_library(MyLibrary
    lib_source.cpp lib_source.h include/MyLibrary/lib_header.h)

target_include_directories(MyLibrary PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

# target_link_libraries(MyLibrary PRIVATE Foo::Foo)
add_library(MyCompangy::MyLibrary ALIAS MyLibrary)
