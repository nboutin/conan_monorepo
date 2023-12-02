cmake_minimum_required(VERSION 3.23)
# cmake_policy(SET CMP0123 NEW)

project(arm_project
    LANGUAGES CXX C
    VERSION 0.1.0)

add_executable(${PROJECT_NAME} source/main.cpp)

set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ".elf")

target_link_options(${PROJECT_NAME} PRIVATE
  "SHELL:-T ${CMAKE_SOURCE_DIR}/source/stm32f401_disco.ld"
)
