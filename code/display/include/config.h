#include "board_definitions.h"

/**************************************/ 
/********* user config ****************/
/**************************************/

// WiFi config
// Enter your SSID and PASSWORD
const char* ssid = "ShotClockDisplay";
// password must have at least 8 characters
const char* password = "12345678";

// PCB config 
// see board_definitions.h for available configs

// #define DISPLAY_PCB_VERSION V0_2
#define DISPLAY_PCB_VERSION V0_2_HACK


/**************************************/ 
/********* auto config ****************/
/**************************************/

#define SCREEN_ADDRESS 0x3C

//Pin config

//RS-485
#if defined(WIFI_LoRa_32_V2)
    #define RXD2            13
    #define TXD2            14
    #define HELTEC_VERSION  2
    #define SCL             SCL_OLED
    #define SDA             SDA_OLED
    #define HORN_CH         7
#endif

#if defined(WIFI_LoRa_32_V3)
    #define RXD2            6
    #define TXD2            5
    #define HELTEC_VERSION  3
    #define SCL             SCL_OLED
    #define SDA             SDA_OLED
    #define HORN_CH         7
#endif

//I2C
#if DISPLAY_PCB_VERSION >= V0_2_HACK
    #ifdef WIFI_LoRa_32_V3
        static const uint8_t SDA_LED = 38;
        static const uint8_t SCL_LED = 39;
    #elif defined(WIFI_LoRa_32_V2)
        static const uint8_t SDA_LED = 33;
        static const uint8_t SCL_LED = 32;
    #endif
#endif

//Open Shot Clock Display R0
#if defined(OSC_DISPLAY_R0)
    #define RXD2        RX
    #define TXD2        TX
    #define UART_TXEN   46

    #define DIO0        18
    #define RST_LoRa    7 
    #define BUSY_LoRa   17
    #define LED         38
    #define LED_ERR     48
    #define FAN_PWM     3
    #define PWM_OE      47
    #define GPIO_X      4
    #define GPIO_Y      5
    #define GPIO_Z      6
    #define BTN1        15
    #define BTN2        16

    #define I_SENSE     1
    #define V_SENSE     2

    #define HORN_CH     15
#endif

//Open Shot Clock Display R0
#if defined(OSC_DISPLAY_R1)
    #define RXD2        RX
    #define TXD2        TX
    #define UART_TXEN   46

    #define DIO0        18
    #define RST_LoRa    7 
    #define BUSY_LoRa   17
    #define LED         38
    #define LED_ERR     48
    #define FAN_PWM     3
    #define PWM_OE      47
    #define GPIO_X      4
    #define GPIO_Y      5
    #define GPIO_Z      6
    #define BTN1        15
    #define BTN2        16

    #define I_SENSE     1
    #define V_SENSE     2

    #define LED_STATUS  36
    #define PWR_GOOD    37

    #define HORN_CH     15
#endif
