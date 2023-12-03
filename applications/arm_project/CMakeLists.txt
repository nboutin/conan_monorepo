cmake_minimum_required(VERSION 3.23)
# cmake_policy(SET CMP0123 NEW)

project(arm_project
    LANGUAGES CXX C
    VERSION 0.1.0)

set(CMAKE_EXPORT_COMPILE_COMMANDS true)

add_executable(${PROJECT_NAME} source/main.cpp)

set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ".elf")

target_link_options(${PROJECT_NAME} PRIVATE
  "SHELL:-T ${CMAKE_SOURCE_DIR}/source/stm32f401_disco.ld"
)

# add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
#     COMMAND ${CMAKE_OBJCOPY} -O binary "${PROJECT_NAME}.elf" ${PROJECT_NAME}.bin
#     COMMENT "Converting ELF to binary"
# )

# add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
#   COMMAND ${CMAKE_OBJCOPY} -O ihex "${PROJECT_NAME}.elf" ${target}.hex
#   COMMENT "Generate hex file"
#   BYPRODUCTS ${target}.hex
#   )
