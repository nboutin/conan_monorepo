# Set this policy in main CMakeLists.txt
# cmake_policy(SET CMP0123 NEW)

# The name of the operating system for which CMake is to build
# Generic for bare metal system
set(CMAKE_SYSTEM_NAME Generic)
# The version of the operating system for which CMake is to build.
# Not meaningful for Generic but required by CMake
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR cortex-m23)
set(CMAKE_SYSTEM_ARCH armv8-m.base)

set(CMAKE_C_COMPILER armclang CACHE STRING "")
set(CMAKE_CXX_COMPILER armclang CACHE STRING "")
set(CMAKE_ASM_COMPILER armclang CACHE STRING "")
set(CMAKE_LINKER armlink CACHE STRING "")

set(triple arm-arm-none-eabi)
set(CMAKE_C_COMPILER_TARGET ${triple})
set(CMAKE_CXX_COMPILER_TARGET ${triple})

set(mcpu cortex-m23)

set(CMAKE_ASM_FLAGS "-mcpu=${mcpu} -masm=auto -c")
set(CMAKE_C_FLAGS "-mcpu=${mcpu} -c")
set(CMAKE_EXE_LINKER_FLAGS "--cpu=${mcpu}")
