#include "board_definitions.h"

// Enter your SSID and PASSWORD
// const char* ssid = "ControllerBlue";
// const char* ssid = "ControllerRed";
// const char* ssid = "Controller3Button";
const char *ssid = "Controller6Button";
const char* password = "12345678";
//const char *password = "EM2022LAX";

// Screen
// uncomment to flip screen
// #define FLIPSCREEN

// PCB config

#define CONTROLLER_PCB_VERSION NO_BOARD
// #define CONTROLLER_PCB_VERSION V0_1


// auto config

#if CONTROLLER_PCB_VERSION == NO_BOARD
    #ifdef WIFI_LoRa_32_V2
        static const uint8_t PIN_P_P = 33;
        static const uint8_t PIN_R_P = 15;
        static const uint8_t PIN_R_S = 23;
        static const uint8_t PIN_T = 22;
        static const uint8_t PIN_H = 32;
        static const uint8_t PIN_B = 4;
        static const uint8_t PIN_LED = 25;
    #elif defined(WIFI_LoRa_32_V3)
        static const uint8_t PIN_P_P = 6;
        static const uint8_t PIN_R_P = 5;
        static const uint8_t PIN_R_S = 4;
        static const uint8_t PIN_T = 7;
        static const uint8_t PIN_H = 2;
        static const uint8_t PIN_B = 3;
        static const uint8_t PIN_LED = 35;
    #endif
#elif CONTROLLER_PCB_VERSION == V0_1
    #ifdef WIFI_LoRa_32_V2
        static const uint8_t PIN_P_P = 33;
        static const uint8_t PIN_R_P = 2;
        static const uint8_t PIN_R_S = 23;
        static const uint8_t PIN_T = 22;
        static const uint8_t PIN_H = 32;
        static const uint8_t PIN_B = 17;
        static const uint8_t PIN_LED = 25;
    #elif defined(WIFI_LoRa_32_V3)
        static const uint8_t PIN_P_P = 38;
        static const uint8_t PIN_R_P = 26;
        static const uint8_t PIN_R_S = 34;
        static const uint8_t PIN_T = 39;
        static const uint8_t PIN_H = 39;
        static const uint8_t PIN_B = 100;
        static const uint8_t PIN_LED = 35;
    #endif
#endif

//RS-485
#if defined(WIFI_LoRa_32_V2)
    #define RXD2 13
    #define TXD2 12
#endif

#if defined(WIFI_LoRa_32_V3)
    #define RXD2 6
    #define TXD2 5
#endif