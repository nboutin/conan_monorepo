cmake_minimum_required(VERSION 3.23)
# cmake_policy(SET CMP0123 NEW)

project(arm_project
    LANGUAGES CXX C
    VERSION 0.1.0)

add_executable(${PROJECT_NAME} source/main.c)

set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ".axf")
