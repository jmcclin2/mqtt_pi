cmake_minimum_required(VERSION 3.0.0)
#project(mqtt_pi_client VERSION 0.1.0.0)
project(mqtt_pi_client C CXX)

#include(CTest)
#enable_testing()

# Build Paho MQTT C as lib to be used by Paho MQTT C++
set(PAHO_ENABLE_TESTING FALSE)
set(PAHO_BUILD_STATIC TRUE)
set(PAHO_BUILD_SHARED FALSE)
set(PAHO_BUILD_SAMPLES FALSE)
set(PAHO_WITH_SSL TRUE)
set(PAHO_HIGH_PERFORMANCE TRUE)
add_subdirectory(paho.mqtt.c)

# Specify where the MQTT C libs/headers can be found
set(PAHO_MQTT_C_LIBRARIES ${CMAKE_CURRENT_SOURCE_DIR}/build/paho.mqtt.c/src/libpaho-mqtt3as.a)
set(PAHO_MQTT_C_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}/paho.mqtt.c/src)

# Many of the above Paho MQTT C settings apply to C++ as well
#list(APPEND CMAKE_PREFIX_PATH "${CMAKE_CURRENT_SOURCE_DIR}/build/paho.mqtt.cpp/src")
add_subdirectory(paho.mqtt.cpp)

# Primary application
add_subdirectory(src)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
