#include "board_definitions.h"

/**************************************/ 
/********* user config ****************/
/**************************************/

// WiFi config
// Enter your SSID and PASSWORD
const char *ssid = "Controller";
// password must have at least 8 characters
const char* password = "12345678";

// Screen
// uncomment to flip screen
// #define FLIPSCREEN

// PCB config 
// see board_definitions.h for available configs

#define CONTROLLER_PCB_VERSION V2_1


/**************************************/ 
/********* auto config ****************/
/**************************************/

#if CONTROLLER_PCB_VERSION == NO_BOARD
    #ifdef WIFI_LoRa_32_V2
        static const uint8_t PIN_B1 = 17;
        static const uint8_t PIN_B2 = 2;
        static const uint8_t PIN_B3 = 13;
        static const uint8_t PIN_B4 = 22;
        static const uint8_t PIN_B5 = 32;
        static const uint8_t PIN_B6 = 100;
        static const uint8_t PIN_LED = 25;
    #elif defined(WIFI_LoRa_32_V3)
        static const uint8_t PIN_B1 = 6;
        static const uint8_t PIN_B2 = 5;
        static const uint8_t PIN_B3 = 4;
        static const uint8_t PIN_B4 = 7;
        static const uint8_t PIN_B5 = 2;
        static const uint8_t PIN_B6 = 3;
        static const uint8_t PIN_LED = 35;
    #endif
    #define OLED_nEN Vext
#elif CONTROLLER_PCB_VERSION == V0_1
    #ifdef WIFI_LoRa_32_V2
        static const uint8_t PIN_B1 = 33;
        static const uint8_t PIN_B2 = 2;
        static const uint8_t PIN_B3 = 23;
        static const uint8_t PIN_B4 = 22;
        static const uint8_t PIN_B5 = 32;
        static const uint8_t PIN_B6 = 17;
        static const uint8_t PIN_LED = 25;
    #elif defined(WIFI_LoRa_32_V3)
        static const uint8_t PIN_B1 = 38;
        static const uint8_t PIN_B2 = 26;
        static const uint8_t PIN_B3 = 34;
        static const uint8_t PIN_B4 = 39;
        static const uint8_t PIN_B5 = 45;
        static const uint8_t PIN_B6 = 46;
        static const uint8_t PIN_LED = 35;
    #endif
    #define OLED_nEN Vext
#elif CONTROLLER_PCB_VERSION == V2_1
    #ifdef WIFI_LoRa_32_V2
        static const uint8_t PIN_B1 = 39;
        static const uint8_t PIN_B2 = 32;
        static const uint8_t PIN_B3 = 33;
        static const uint8_t PIN_B4 = 23;
        static const uint8_t PIN_B5 = 2;
        static const uint8_t PIN_B6 = 17;
        static const uint8_t PIN_LED = 25;
    #elif defined(WIFI_LoRa_32_V3)
        static const uint8_t PIN_B1 = 42;  //J1
        static const uint8_t PIN_B2 = 39;  //J2
        static const uint8_t PIN_B3 = 38;  //J3
        static const uint8_t PIN_B4 = 34;    //J4
        static const uint8_t PIN_B5 = 26;    //J5
        static const uint8_t PIN_B6 = 20;    //J6
        static const uint8_t PIN_LED = 35;
    #endif
    #define OLED_nEN Vext
#endif

#if defined(OSC_CONTROLLER_R0)
    #define RXD2 13
    #define TXD2 12
    #define DIO0 36
    #define RST_LoRa 48
    #define BUSY_LoRa 35
    #define LED 38
    #define LED_ERR 16
    #define LoRa_CLK 47
    #define LoRa_MISO 34
    #define LoRa_MOSI 33
    #define LoRa_NSS 21

    #undef OLED_nEN
    #define OLED_nEN 11
    
    #define V_SENSE 1
    #define I_SENSE 2

    #define PIN_B1 3
    #define PIN_B2 4
    #define PIN_B3 5
    #define PIN_B4 6
    #define PIN_B5 7
    #define PIN_B6 10
    #define PIN_LED 38

    #define PIN_PWR 17

    #define PIN_HORN 15

    #define V_GAIN (3.3f * 11.0f / 4096.0f)
    #define I_GAIN (3.3f / 4096.0f * 1/(0.102f))
#endif


#if defined(OSC_CONTROLLER_R1)
    #define RXD2 13
    #define TXD2 12
    #define DIO0 36
    #define RST_LoRa 48
    #define BUSY_LoRa 35
    #define LED 38
    #define LED_ERR 16
    #define LoRa_CLK 47
    #define LoRa_MISO 34
    #define LoRa_MOSI 33
    #define LoRa_NSS 21
    
    #undef OLED_nEN
    #define OLED_nEN 11
    
    #define V_SENSE 1
    #define I_SENSE 2

    #define PIN_B1 3
    #define PIN_B2 4
    #define PIN_B3 5
    #define PIN_B4 6
    #define PIN_B5 7
    #define PIN_B6 45
    
    #define PIN_LED 38

    #define PIN_HORN 15

    #define V_GAIN (3.3f * 11.0f / 4096.0f)
    #define I_GAIN (3.3f / 4096.0f * 1/(0.102f))
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