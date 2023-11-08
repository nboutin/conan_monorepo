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

target_compile_features(MyLibrary PRIVATE cxx_std_17)

target_include_directories(MyLibrary PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

# target_include_directories(Foo PUBLIC
#     $<BUILD_INTERFACE:${Foo_BINARY_DIR}/include>
#     $<BUILD_INTERFACE:${Foo_SOURCE_DIR}/include>
#     $<INSTALL_INTERFACE:include>
# )

# target_link_libraries(MyLibrary PRIVATE Foo::Foo)
add_library(MyCompagny::MyLibrary ALIAS MyLibrary)

install(TARGETS MyLibrary EXPORT MyLibraryTargets
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    RUNTIME DESTINATION bin
    INCLUDES DESTINATION include
)

install(EXPORT MyLibraryTargets
    DESTINATION lib/cmake/MyLibrary
    FILE MyLibraryTargets.cmake
    NAMESPACE MyCompagny::
)

install(DIRECTORY include/MyLibrary
    DESTINATION include
)

include(CMakePackageConfigHelpers)
write_basic_package_version_file(
    MyLibraryConfigVersion.cmake
    COMPATIBILITY SameMajorVersion
    # VERSION ${PACKAGE_VERSION}
)

install(FILES
    MyLibraryConfig.cmake
    ${CMAKE_CURRENT_BINARY_DIR}/MyLibraryConfigVersion.cmake
    DESTINATION lib/cmake/MyLibrary
)
