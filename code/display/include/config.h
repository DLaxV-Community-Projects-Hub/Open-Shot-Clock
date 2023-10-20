// WiFi config

 const char* ssid = "ShotClockBlue2";
// const char* ssid = "ShotClockBlue2";
// const char* ssid = "OSC_Blue";
// const char* ssid = "ShotClockRed1";
// const char* ssid = "ShotClockRed2";
//const char* ssid = "OSC_Hannover_Set1_No1";
// const char* ssid = "OSC_Hannover_Set1_No2";
const char* password = "12345678";



// Pin config

//RS-485
#if defined(WIFI_LoRa_32_V2)
    #define RXD2 13
    #define TXD2 14

    #define Vext 21
#endif

#if defined(WIFI_LoRa_32_V3)
    #define RXD2 6
    #define TXD2 5

    #define Vext 7
#endif