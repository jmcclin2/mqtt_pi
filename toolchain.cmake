set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

# THIS MUST BE CORRECTLY CONFIGURED FOR RASPBERRY PI TOOLCHAIN
set(sysroot_target C:/SysGCC/raspberry/arm-linux-gnueabihf/sysroot)
set(tools C:/SysGCC/raspberry/bin)

set(CMAKE_C_COMPILER ${tools}/arm-linux-gnueabihf-gcc.exe)
set(CMAKE_CXX_COMPILER ${tools}/arm-linux-gnueabihf-g++.exe)
set(CMAKE_SYSROOT ${sysroot_target})

# COMPILER SETTINGS FOR RASPBERRY PI 4
#SET(CMAKE_CXX_FLAGS "-v -O2 -mfpu=crypto-neon-fp-armv8 -mfloat-abi=hard -march=armv8-a+crc -mcpu=cortex-a72 --sysroot=${sysroot_target}")
SET(CMAKE_CXX_FLAGS "-v -mfpu=crypto-neon-fp-armv8 -mfloat-abi=hard -march=armv8-a+crc -mcpu=cortex-a72 --sysroot=${sysroot_target}")
SET(CMAKE_C_FLAGS ${CMAKE_CXX_FLAGS})
SET(CMAKE_EXE_LINKER_FLAGS "--sysroot=${sysroot_target}")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
