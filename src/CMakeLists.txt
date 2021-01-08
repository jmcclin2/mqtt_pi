configure_file(../config.hpp.in project_config.hpp)

set(SOURCE_FILES
    "main.cpp"
)

add_executable(mqtt_pi_client ${SOURCE_FILES})

target_include_directories(mqtt_pi_client
    PUBLIC
    .
    ../paho.mqtt.c/src
    ../paho.mqtt.cpp/src
) 

target_link_directories(mqtt_pi_client PUBLIC ../build/paho.mqtt.c/src)
target_link_directories(mqtt_pi_client PUBLIC ../build/paho.mqtt.cpp/src)

# NOTE: toolchain.cmake ultimately supplies paths for pthread, ssl, and crypto which are supplied with toolchain distribution for our target

target_link_libraries(mqtt_pi_client
    paho-mqtt3as
    paho-mqttpp3
    pthread
    ssl
    crypto
)
