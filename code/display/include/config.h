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

//#define DISPLAY_PCB_VERSION V0_2
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
    #define LoRa_RST        RST_LoRa
    #define LoRa_BUSY       BUSY_LoRa
#endif

#if defined(WIFI_LoRa_32_V3)
    #define RXD2            6
    #define TXD2            5
    #define HELTEC_VERSION  3
    #define SCL             SCL_OLED
    #define SDA             SDA_OLED
    #define HORN_CH         7
    #define LoRa_RST        RST_LoRa
    #define LoRa_BUSY       BUSY_LoRa
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
    #define LoRa_RST    7 
    #define LoRa_BUSY   17
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

//Open Shot Clock Display R1
#if defined(OSC_DISPLAY_R1)
    #define RXD2        RX
    #define TXD2        TX
    #define UART_TXEN   46

    #define DIO0        18
    #define LoRa_RST    7 
    #define LoRa_BUSY   17
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

//Open Shot Clock Display R2
#if defined(OSC_DISPLAY_R2)
    #define RXD2        RX
    #define TXD2        TX
    #define UART_TXEN   46
    #define UART_RXEN   45

    #define DIO0        18
    #define LoRa_RST    37
    #define LoRa_BUSY   48
    #define LoRa_NSS    36
    #define LoRa_CLK    34
    #define LoRa_MISO   33
    #define LoRa_MOSI   35
    #define LED         38
    #define LED_ERR     39
    #define FAN_PWM     3       // FAN_PWM is not actually used in R2, but we need to define it for the code to compile
    #define PWM_OE      26
    #define GPIO_X      4
    #define GPIO_Y      5
    #define GPIO_Z      6
    #define BTN1        11
    #define BTN2        10

    #define I_SENSE     1
    #define V_SENSE     2

    #define LED_STATUS  40
    #define PWR_GOOD    41

    #define HORN_CH     15      // HORN_CH is not actually used in R2, but we need to define it for the code to compile
#endif
