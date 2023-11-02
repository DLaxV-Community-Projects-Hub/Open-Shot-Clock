// WiFi config

const char* ssid = "WiFiName";
// password must have at least 8 characters
const char* password = "12345678";


// Pin config

//RS-485
#if defined(WIFI_LoRa_32_V2)
    #define RXD2 13
    #define TXD2 14
#endif

#if defined(WIFI_LoRa_32_V3)
    #define RXD2 6
    #define TXD2 5
#endif