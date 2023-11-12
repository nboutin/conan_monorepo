cmake_minimum_required(VERSION 3.15)
cmake_policy(SET CMP0123 NEW)

project(arm_project LANGUAGES C VERSION 0.1.0)

add_executable(${PROJECT_NAME} source/main.c)

set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ".axf")

# --- install

include(GNUInstallDirs)
install(TARGETS arm_project EXPORT arm_project)
