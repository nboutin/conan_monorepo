# ARM Project - journal

## picolibc settings

    --oslib=semihosting
    --crt0=minimal
    -Tstm.ld

## Conan conf

tools.build:cflags=["-mfloat-abi={{ float_abi }}", "-mcpu={{ cpu }}", "-mfpu={{ fpu }}"]
tools.build:cxxflags=["-mfloat-abi={{ float_abi }}", "-mcpu={{ cpu }}", "-mfpu={{ fpu }}"]
tools.build:exelinkflags=["-mfloat-abi={{ float_abi }}", "-mcpu={{ cpu }}", "-mfpu={{ fpu }}", "--specs=nano.specs", "--specs=nosys.specs", "--specs=picolibc.specs"]


## warning: _close is not implemented and will always fail

The warning message you're encountering indicates that the _close function is not implemented. This function is part of the system call interface,
which is typically provided by the operating system. In bare-metal or embedded systems without a full operating system, these system calls need
to be implemented manually if they are required by the application or libraries being used.

You can do this by adding "--specs=picolibc.specs" to your linker flags.

## undefined reference to `_exit'

Use Newlib Nano: If you're using Newlib or Newlib Nano, you might need to link against nosys.specs to provide default implementations of system calls like _exit. You can do this by adding --specs=nosys.specs to your linker flags.

undefined reference to `_exit'
undefined reference to `_close'
undefined reference to `_lseek'
undefined reference to `_lseek'
undefined reference to `_read'
undefined reference to `_write'
undefined reference to `_sbrk'


## Conan profile

[settings]
compiler=gcc
compiler.cppstd=20
compiler.libcxx=libstdc++
compiler.version=12.2
os=baremetal
arch=thumbv7
arch.float_abi={{ float_abi }}
arch.fpu={{ fpu }}
arch.processor={{ cpu }}

[tool_requires]
arm-gnu-toolchain/12.2.1

[conf]
tools.build:cflags=["-mfloat-abi={{ float_abi }}", "-mcpu={{ cpu }}", "-mfpu={{ fpu }}", "-mthumb", "-ffunction-sections", "-fdata-sections"]
tools.build:cxxflags=["-mfloat-abi={{ float_abi }}", "-mcpu={{ cpu }}", "-mfpu={{ fpu }}", "-fno-exceptions", "-fno-rtti", "-mthumb", "-ffunction-sections", "-fdata-sections"]
tools.build:exelinkflags=["--specs=nano.specs", "--specs=nosys.specs", "--specs=picolibc.specs", "-mfloat-abi={{ float_abi }}", "-mcpu={{ cpu }}", "-mfpu={{ fpu }}", "-fno-exceptions", "-fno-rtti", "-mthumb", "-ffunction-sections", "-fdata-sections"]


