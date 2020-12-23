cmake_minimum_required(VERSION 3.0.0)
project(mqtt_pi_client VERSION 0.1.0.0)

configure_file(config.hpp.in ${CMAKE_CURRENT_SOURCE_DIR}/project_config.hpp)

#include(CTest)
#enable_testing()

set(SOURCE_FILES
    "main.cpp"
)

add_executable(mqtt_pi_client ${SOURCE_FILES})

target_include_directories(mqtt_pi_client
    PUBLIC
    .
    #include
    #ports/posix
    #source/
)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
