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

#find_library(PAHO_MQTT_C_LIB_PRO NAMES paho-mqtt3as PATHS ../build/paho.mqtt.c/src)
#find_library(PAHO_MQTT_CPP_LIB_PRO NAMES paho-mqttpp3 PATHS ../build/paho.mqtt.cpp/src)

target_link_directories(mqtt_pi_client PUBLIC ../build/paho.mqtt.c/src)
target_link_directories(mqtt_pi_client PUBLIC ../build/paho.mqtt.cpp/src)

#message("***PAHO_MQTT_C_LIB_PRO:${PAHO_MQTT_C_LIB_PRO}")
#message("***PAHO_MQTT_CPP_LIB_PRO:${PAHO_MQTT_CPP_LIB_PRO}")

target_link_libraries(mqtt_pi_client
    #${PAHO_MQTT_C_LIB_PRO}
    #${PAHO_MQTT_CPP_LIB_PRO}
    paho-mqtt3as
    paho-mqttpp3
    pthread
    ssl
    crypto
)
