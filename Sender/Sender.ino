/*
  This is a simple example show the Heltec.LoRa sended data in OLED.

  The onboard OLED display is SSD1306 driver and I2C interface. In order to make the
  OLED correctly operation, you should output a high-low-high(1-0-1) signal by soft-
  ware to OLED's reset pin, the low-level signal at least 5ms.

  OLED pins to ESP32 GPIOs via this connecthin:
  OLED_SDA -- GPIO4
  OLED_SCL -- GPIO15
  OLED_RST -- GPIO16
  
  by Aaron.Lee from HelTec AutoMation, ChengDu, China
  成都惠利特自动化科技有限公司
  https://heltec.org
  
  this project also realess in GitHub:
  https://github.com/Heltec-Aaron-Lee/WiFi_Kit_series
*/

#include <heltec.h>
#include "images.h"

#include <JC_Button.h>

#include <WiFi.h>
#include <WiFiClient.h>

#include <AsyncTCP.h>
#include <ESPAsyncWebServer.h>

#include <SPIFFS.h>

//#define BAND    433E6  //you can set band here directly,e.g. 868E6,915E6  BLUE
//#define BAND    433125000  //you can set band here directly,e.g. 868E6,915E6
#define BAND    434755000  //you can set band here directly,e.g. 868E6,915E6   RED



// Create AsyncWebServer object on port 80
AsyncWebServer server(80);
AsyncWebSocket ws("/ws");

//Enter your SSID and PASSWORD
//const char* ssid = "ShotClockBlau";
const char* ssid = "ShotClockRot";
const char* password = "12345678";

//int counter = 30;
String rssi = "RSSI --";
String packSize = "--";
String packet ;


const unsigned long
    LONG_PRESS(500),           // we define a "long press" to be 1000 milliseconds.    
    BLINK_INTERVAL_LONG(950),   // the LED just Blinks for 50ms when a Second counted full down 
    BLINK_INTERVAL_SHORT(50),
    REPEAT_INCR(2500);
    
unsigned long FLEX_INTERVAL(1000);

bool ledState = false;                     // current LED status
bool playState = false;           // count on/off, starts off
bool resetState = true;         // damit der Reset nur ein mal Erfolgt bis der Button released ist
bool startState = true;
bool intervalState = true;
int ClockStart = 30;
int Clock = ClockStart;               // Start Zahl
int colorpicker = 1;

unsigned long ms;                 // current time from millis()
unsigned long msLastStop;           // last time Button Pause
unsigned long msLastPlay;        // last time Button Play
unsigned long msLastCount;           // last time count down
unsigned long msLastStopCount;     // last time count/send in stop mode
unsigned long abweichung = 0;  // zählt die gesamte Abweichung

const byte
    BUTTON_PIN_T(12),              // connect a button switch from this pin to ground
    BUTTON_PIN_C(13),    //tbc          // connect a button switch from this pin to ground    
    LED_PIN(25);                // heltec specific pin 25


    
Button myBtn_T(BUTTON_PIN_T),  myBtn_C(BUTTON_PIN_C);      // define the button

void setStart ()
{
  msLastCount = ms;
  msLastStop = ms;
  msLastPlay = ms;  
}



void Count()
{
    unsigned long t = (msLastStop - msLastCount) + (ms - msLastPlay);

    if (Clock > 0)
    {

       if (t >= BLINK_INTERVAL_SHORT && ledState == false) {
          ledState = true;
          //digitalWrite(LED_PIN, ledState);
          //Serial.println("LED aus");
       }
    
       if (t >= FLEX_INTERVAL) {

          abweichung = (t - FLEX_INTERVAL);
          Serial.print("Abweichung: ");
          Serial.print(abweichung);
          Serial.println("ms");

          //FLEX_INTERVAL = FLEX_INTERVAL + t;
          //Serial.print("Ausgleichendes Interval: ");
          //Serial.print(FLEX_INTERVAL);
          //Serial.println("ms");

          if (intervalState == false)
          {
            FLEX_INTERVAL += LONG_PRESS;
            intervalState = true;
          }
          
          Clock--;

          if (Clock < ClockStart){
            FLEX_INTERVAL = 1000;
          }
                    
          String Command_T = "T";
          String ClockMsg = Command_T + Clock;
          //ledStateMsg += ledState;
          lorasend(ClockMsg);
          notifyClients(String(Clock));
          ws.cleanupClients();
          //TelnetMsg(ClockMsg);
          Serial.println(ClockMsg);
         
          ledState = false;
          //digitalWrite(LED_PIN, ledState);
          //Serial.println("LED an");
       
          msLastCount = ms;
          msLastStop = ms;
          msLastPlay = ms;       }
    }
    else
    {
      playState = !playState;
      Serial.println("DÖÖÖÖÖÖÖÖÖHHD!!!");  
    }
}

void stopCount()
{
    if (ledState == true)
    {
      ledState = false;
      //digitalWrite(LED_PIN, ledState);
      msLastStopCount = ms;
    }
    if (ms - msLastStopCount >= 1000)
    {
      String Command_T = "T";
      String ClockMsg = Command_T + Clock;
      //ledStateMsg += ledState;
      lorasend(ClockMsg);
      notifyClients(String(Clock));
      ws.cleanupClients();
      //TelnetMsg(ClockMsg);
      Serial.println(ClockMsg);
      msLastStopCount = ms;  
    }    
}


void resetClock(bool play)
{
    Clock = ClockStart;
    String Command_T = "T";
    String ClockMsg = Command_T + Clock;
    lorasend(ClockMsg);
    notifyClients(String(Clock));
    ws.cleanupClients();    
    //TelnetMsg(ClockMsg);
    Serial.println("RESET");
    Serial.println(ClockMsg);
    msLastCount = ms;
    msLastStop = ms;
    msLastPlay = ms;
    playState = play;
    if (play == true) {
      notifyClients("true");
    }
    else {
      notifyClients("false");
    }
}  
  
void resetClockByHWButton()
{
    resetClock(true);
    FLEX_INTERVAL -= LONG_PRESS; 
    intervalState = false;
}    

void changeColor()
{
  if (colorpicker == 1){
    colorpicker = 2;}
  else if (colorpicker == 2){
    colorpicker = 3;}
  else if (colorpicker == 3){
    colorpicker = 4;}
  else if (colorpicker == 4){
    colorpicker = 5;}
  else if (colorpicker == 5){
    colorpicker = 6;}    
  else {
    colorpicker = 1;}
  String Command_C = "C";
  String ColorMsg = Command_C + colorpicker;
  //ledStateMsg += ledState;
  lorasend(ColorMsg);
  //TelnetMsg(ColorMsg); //old - wifi/ethernet
  Serial.println(ColorMsg);
}

void playPause()
{
  if (startState == true){
    setStart();
    startState = false;
  }
    
  playState = !playState;       // ON > OFF oder OFF > ON // fängt OFF an
  if (playState == false)
  {
    notifyClients("false");
    msLastStop = ms;           // wenn auf Pause gewechselt, dann Zeit Letzter PAuse Speichern
  }
  else
  {
    notifyClients("true");
    msLastPlay = ms;           // wenn auf Play gewechselt, dann Zeit Letztes Play Speichern
  }
}
  
void setTime(int T) {
    ClockStart = T;
    if (ClockStart < 1){
      ClockStart = 1;
    }
    if (ClockStart > 99){
      ClockStart = 99;
    }
    resetClock(false);
    startState = true;
    sendStartTime(ClockStart);
}    

void sendStartTime(int T) {
    String SW = "SW";
    String SWM = SW + T;
    notifyClients(SWM); 
}


void notifyClients(String message) {
  ws.textAll(message);
}

void handleWebSocketMessage(void *arg, uint8_t *data, size_t len) {
  AwsFrameInfo *info = (AwsFrameInfo*)arg;
  if (info->final && info->index == 0 && info->len == len && info->opcode == WS_TEXT) {
    data[len] = 0;
    if (strcmp((char*)data, "reset") == 0) {
      resetClock(true);
    }
    if (strcmp((char*)data, "playpause") == 0) {
      playPause();
    }  
    if (strcmp((char*)data, "setTime24") == 0) {
      setTime(24);    
    }
    if (strcmp((char*)data, "setTime30") == 0) {
      setTime(30);    
    }
    if (strcmp((char*)data, "setTime60") == 0) {
      setTime(60);    
    }
    if (strcmp((char*)data, "setTimePlus10") == 0) {
      setTime(ClockStart+10);    
    }
    if (strcmp((char*)data, "setTimeMinus10") == 0) {
      setTime(ClockStart-10);    
    }
    if (strcmp((char*)data, "setTimePlus5") == 0) {
      setTime(ClockStart+5);    
    }
    if (strcmp((char*)data, "setTimeMinus5") == 0) {
      setTime(ClockStart-5);    
    }
    if (strcmp((char*)data, "setTimePlus1") == 0) {
      setTime(ClockStart+1);    
    }
    if (strcmp((char*)data, "setTimeMinus1") == 0) {
      setTime(ClockStart-1);    
    }            
    if (strcmp((char*)data, "SW") == 0) {
      sendStartTime(ClockStart);   
    }      
  }
}

void onEvent(AsyncWebSocket *server, AsyncWebSocketClient *client, AwsEventType type,
             void *arg, uint8_t *data, size_t len) {
    switch (type) {
      case WS_EVT_CONNECT:
        Serial.printf("WebSocket client #%u connected from %s\n", client->id(), client->remoteIP().toString().c_str());
        break;
      case WS_EVT_DISCONNECT:
        Serial.printf("WebSocket client #%u disconnected\n", client->id());
        break;
      case WS_EVT_DATA:
        handleWebSocketMessage(arg, data, len);
        break;
      case WS_EVT_PONG:
      case WS_EVT_ERROR:
        break;
  }
}

void initWebSocket() {
  ws.onEvent(onEvent);
  server.addHandler(&ws);
}


void lorasend (String Msg){
  
  Heltec.display->clear();
  Heltec.display->setTextAlignment(TEXT_ALIGN_LEFT);
  Heltec.display->setFont(ArialMT_Plain_10);
  
  Heltec.display->drawString(0, 0, "Sending packet: ");
  Heltec.display->drawString(90, 0, String(Msg));
  Heltec.display->display();
  Serial.print(Msg);
  Serial.print(" -- ");


  // send packet
  unsigned long ms2 = millis();
  LoRa.beginPacket();
  
/*
 * LoRa.setTxPower(txPower,RFOUT_pin);
 * txPower -- 0 ~ 20
 * RFOUT_pin could be RF_PACONFIG_PASELECT_PABOOST or RF_PACONFIG_PASELECT_RFO
 *   - RF_PACONFIG_PASELECT_PABOOST -- LoRa single output via PABOOST, maximum output 20dBm
 *   - RF_PACONFIG_PASELECT_RFO     -- LoRa single output via RFO_HF / RFO_LF, maximum output 14dBm
*/
  //LoRa.setTxPower(17,RF_PACONFIG_PASELECT_PABOOST);
  //LoRa.setSpreadingFactor(6);
  //LoRa.print("hello ");
  LoRa.print(Msg);
  LoRa.endPacket();
  unsigned long ms3 = millis();
  Serial.print("Dauer Senden: ");
  Serial.print(ms3-ms2);
  Serial.print(" -- ");
  }

  //counter++;
  /*digitalWrite(LED, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(1000);                       // wait for a second
  digitalWrite(LED, LOW);    // turn the LED off by making the voltage LOW
  delay(1000);  
                       // wait for a second   */

//===============================================================
// This routine shows the logo at start up (logo to be modified
//===============================================================

void logo()
{
  Heltec.display->clear();
  Heltec.display->drawXbm(0,5,logo_width,logo_height,logo_bits);
  Heltec.display->display();
}



//===============================================================
// Setup
//===============================================================

void setup()
{
   //WIFI Kit series V1 not support Vext control
  Heltec.begin(true /*DisplayEnable Enable*/, true /*Heltec.Heltec.Heltec.LoRa Disable*/, true /*Serial Enable*/, true /*PABOOST Enable*/, BAND /*long BAND*/);



  if(!SPIFFS.begin()){
    Serial.println("An Error has occurred while mounting SPIFFS");
    return;
  }
 
   
  Serial.println();
  Serial.print("MAC: ");
  Serial.println(WiFi.macAddress());
 
  Heltec.display->init();
  Heltec.display->flipScreenVertically();  
  Heltec.display->setFont(ArialMT_Plain_10);
  //logo();
  //delay(1500);
  //Heltec.display->clear();

  Serial.println("Heltec.LoRa started");
  
  Heltec.display->drawString(0, 0, "Heltec.LoRa Initial success!");
  Heltec.display->display();
  delay(1000);  

  //ESP32 As access point
  WiFi.mode(WIFI_AP); //Access Point mode
  WiFi.softAP(ssid, password);

  IPAddress myIP = WiFi.softAPIP(); //Get IP address
  Serial.print("HotSpt IP:");
  Serial.println(myIP);

  initWebSocket();

  // Route for root / web page
  server.on("/", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/index.html", String(), false);
  });

  server.on("/controller/", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/controller.html", String(), false);
  });

  server.on("/set_time/", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/set_time.html", String(), false);
    playPause();
  });
  
  // Route to load style.css file
  server.on("/style.css", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/style.css", "text/css");
  });
  
  server.on("/javascript.js", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/javascript.js", "application/javascript");
  });

  server.on("/piep.mp3", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/piep.mp3");
  });

  server.on("/longpiep.mp3", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/longpiep.mp3");
  });

  server.on("/digital-7-mono.ttf", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/digital-7-mono.ttf");
  });

  server.on("/digital-7-mono.woff", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/digital-7-mono.woff");
  });
  
  server.on("/digital-7-mono.woff2", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/digital-7-mono.woff2");
  });
  
  
 
  server.begin();                  //Start server
  Serial.println("HTTP Websocket Server started");
  
  Heltec.display->drawString(0, 10, "HTTP server Initial success!");
  Heltec.display->display();
  delay(1000);


  Heltec.display->clear();
  Heltec.display->setTextAlignment(TEXT_ALIGN_LEFT);
  Heltec.display->setFont(ArialMT_Plain_10);
  
  Heltec.display->drawString(0, 0, "Sending packet: ");
  Heltec.display->drawString(90, 0, String(Clock));
//  Heltec.display->display();

  LoRa.setTxPower(20,RF_PACONFIG_PASELECT_PABOOST);
  LoRa.setSpreadingFactor(7);

  //LoRa.setSyncWord(0x01);
  //LoRa.setSyncWord(0xF3);           // ranges from 0-0xFF, default 0x34, see API docs
  //LoRa.setSyncWord(0x31);           // ranges from 0-0xFF, default 0x34, see API docs



//BUTTON
    
  myBtn_T.begin();                    // initialize the button object
  myBtn_C.begin();
  pinMode(LED_PIN, OUTPUT);         // set the LED pin as an output
  //digitalWrite(LED_PIN, ledState);  // LED an, da zu Beginn Pause
  Serial.println(Clock);
  ms = millis();
  msLastStop = ms;
  msLastStopCount = ms;
}


// the list of possible states for the state machine. This state machine has a fixed
// sequence of states, i.e. ONOFF --> TO_RESET --> Reset --> TO_RESET --> ONOFF
// note that while the user perceives two "modes", i.e. ON/OFF mode and rapid blink mode,
// two extra states are needed in the state machine to transition between these modes.
enum states_t {ONOFF, RESET, SET_TIME24, SET_TIME30, SET_TIME60};


void loop()
{
 
    static states_t STATE;             // current state machine state
    static unsigned long
        rpt(REPEAT_INCR);
    ms = millis();                     // record the current time
    myBtn_T.read();                      // read the button    
    myBtn_C.read();                      // read the button
  
    switch (STATE)
    {
        // this state watches for short and long presses, switches ON/OFF for
        // short presses, and moves to the RESET state for long presses.
        
        case ONOFF:
            if (myBtn_T.wasPressed())
            {
                playPause();
            }

            else if (myBtn_C.wasReleased())
            {
                changeColor();        
            }
            
            else if (myBtn_T.pressedFor(LONG_PRESS))
                STATE = RESET;
            else
            {
                if (playState == false)
                {
                   stopCount();                 // aktuell: schaltet LED an als User Feedback für Pause
                }   
                else
                { 
                   Count();
                }
                //Telnet();  // old - wifi/ethernet // Handle telnet connections
                //server.handleClient(); // This routine is executed when you open its IP in browser   
                //delay(1);
                   
            }
            break;

        // this is the RESET state where we Reset the Clock as feedback to the user,
        // but we also need to wait for the user to release the button, i.e. end the
        // long press, before moving to the ON/OFF state again.
        
        case RESET:
            //ms = millis();
            if (myBtn_T.wasReleased())
            {
                resetState = true;
                STATE = ONOFF;
            }  
            else if (myBtn_T.pressedFor(rpt)) {
                rpt += REPEAT_INCR;
                setTime(60);
                STATE = SET_TIME24;
            }    
            else
            {
                if (resetState == true)
                {
                   resetClockByHWButton();
                   resetState = false;
                }
                Count();
            }    
            break;

        case SET_TIME24:
            if (myBtn_T.wasReleased())
            {
                rpt = REPEAT_INCR;
                STATE = ONOFF;
            }    
            else if (myBtn_T.pressedFor(rpt))
            {
                rpt += REPEAT_INCR;
                setTime(24);
                STATE = SET_TIME30;
            }    
            break;

        case SET_TIME30:
            if (myBtn_T.wasReleased())
            {
                rpt = REPEAT_INCR;
                STATE = ONOFF;
            }    
            else if (myBtn_T.pressedFor(rpt))
            {
                rpt += REPEAT_INCR;
                setTime(30);
                STATE = SET_TIME60;
            }    
            break;
             
        case SET_TIME60:
            //ms = millis();
            if (myBtn_T.wasReleased())
            {
                rpt = REPEAT_INCR;
                STATE = ONOFF;
            }
            else if (myBtn_T.pressedFor(rpt))
            {
                rpt += REPEAT_INCR;
                setTime(60);
                STATE = SET_TIME24;
            }    
            break;
    }
}

  
  
  
//OLD!!!  
  /*
  unsigned long ms = millis();

  myBtn.read();

  if (myBtn.wasReleased()){
    counter = 30;
    lorasend();
    lms = ms;
  }
  
  
  else if (ms >= lms + interval){
  counter--;
    if (counter < 0){
    counter = 30;
    }
  lms = ms;  
  lorasend(); 
  }
}*/
