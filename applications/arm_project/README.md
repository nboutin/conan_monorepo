# Conan Project Template

## Add Conan remote repository

    conan remote add libhal-trunk https://libhal.jfrog.io/artifactory/api/conan/trunk-conan

## Configuration

    conan config install conan/settings_user.yml
    conan config install -sf conan/profiles -tf profiles .

## Build with Conan

    conan build . -pr stm32f -s build_type=MinSizeRel

## Build with CMake

    cmake --build build/MinSizeRel

## Flash stm32f401-disco board

Settings:

Update board and driver with STM32CubeProgrammer

Use:

    openocd -f board/stm32f4discovery.cfg -c "program build/MinSizeRel/arm_project.elf" -c reset -c shutdown
