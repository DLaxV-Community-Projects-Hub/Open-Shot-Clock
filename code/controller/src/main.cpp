#include <Arduino.h>

#include "channel.h"
#include "version.h"

#include <JC_Button.h>

#include <WiFi.h>
#include <WiFiClient.h>

#include <AsyncTCP.h>
#include <ESPAsyncWebServer.h>
#include <ElegantOTA.h>

#include <SPIFFS.h>

#include "ShotClockLogic.h"
#include "ShotClockUI.h"
#include "config.h"
#include <SCLink.h>
#include "ControllerLink.h"

#include <Preferences.h>
#include <RadioLib.h>


#define BUFF_LEN 32

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels
#define SCREEN_ADDRESS 0x3C

//===============================================================
// variables, constants, objects
//===============================================================
uint32_t lastTime=0, timeTelemetry=0;
uint16_t voltageRaw=0, currentRaw=0;
float voltage=0.0f;

int channel;
int defaultChannel = 1;

uint8_t syncwordSelect[5]={
  0x12,   //  not needed
  0x12,   //  Kanal 1
  0x23,   //  Kanal 2  
  0x34,   //  Kanal 3  
  0x45    //  Kanal 4
};

uint8_t syncword = syncwordSelect[defaultChannel];

float frequencySelect[5]={
  433.0F,   //  not needed
  433.0F,   //  Kanal 1
  433.5F,   //  Kanal 2  
  434.0F,   //  Kanal 3  
  434.5F   //  Kanal 4
};
float frequency = frequencySelect[defaultChannel];

String resetString = "restarting...reset your wifi connection";
String timeCommand = "T";
const char* preferenceName = "shot-clock";
const char* startTimePreferenceName = "start-time";
const char* honkVolumePreferenceName = "honk-volume";
const char* channelPreferenceName = "channel";

int _timeToDisplay; // Start Zahl
String clockStr = "30";

unsigned long timeNow;              // current time from millis()

const unsigned long LONG_PRESS(400);  // we define a "long press" to be 400 milliseconds.
const unsigned long EXTRA_LONG_PRESS(5000);
bool wasLongPress = false;

enum buttonStates_t
{
  B4_AND_B5_PRESSED,
  B5_PRESSED,
  B5_PRESSED_LONG,
  B6_PRESSED,
  B6_PRESSED_LONG,
  B4_PRESSED,
  B4_PRESSED_LONG,
  B1_PRESSED,
  B1_PRESSED_LONG,
  B2_PRESSED,
  B2_PRESSED_LONG,
  B3_PRESSED,
  B3_PRESSED_LONG,
  B1_AND_B2_PRESSED,
  NONE
};

buttonStates_t buttonState = NONE;

Button btn1(PIN_B1), // define the button
    btn2(PIN_B2),
    btn3(PIN_B3),
    btn4(PIN_B4),
    btn5(PIN_B5),
    btn6(PIN_B6);

struct ButtonConfig {
    Button* btn; 
    buttonStates_t stateShort;
    buttonStates_t stateLong;
    uint32_t pressTime;
};

static ButtonConfig configs[] = {
        {&btn1, B1_PRESSED, B1_PRESSED_LONG, LONG_PRESS},
        {&btn2, B2_PRESSED, B2_PRESSED_LONG, LONG_PRESS},
        {&btn3, B3_PRESSED, B3_PRESSED_LONG, EXTRA_LONG_PRESS},
        {&btn4, B4_PRESSED, B4_PRESSED_LONG, LONG_PRESS},
        {&btn5, B5_PRESSED, B5_PRESSED_LONG, LONG_PRESS},
        {&btn6, B6_PRESSED, B6_PRESSED_LONG, LONG_PRESS}
    };

#if defined(WIFI_LoRa_32_V2)
  SX1276 radio = new Module(SS, DIO0, RST_LoRa, DIO0);
ControllerLink protocol = ControllerLink(new Module(SS, DIO0, RST_LoRa, DIO0));
#endif

#if defined(WIFI_LoRa_32_V3)
  //SX1262 radio = new Module(SS, DIO0, RST_LoRa, BUSY_LoRa);
ControllerLink protocol = ControllerLink(new Module(SS, DIO0, RST_LoRa, BUSY_LoRa));
#endif
#if defined(OSC_CONTROLLER_R0) | defined(OSC_CONTROLLER_R1)
  SPIClass spi(HSPI);
  SPISettings spiSettings(2000000, MSBFIRST, SPI_MODE0);
  LLCC68 radio = new Module(LoRa_NSS, DIO0, RST_LoRa, BUSY_LoRa, spi, spiSettings);
ControllerLink protocol = ControllerLink();

#endif

ShotClockLogic shotClockLogic = ShotClockLogic();

AsyncWebServer server(80);
AsyncWebSocket ws("/ws");

Preferences preferences;

ShotClockUI shotclockUI = ShotClockUI(Wire, RST_OLED, OLED_nEN);
//Protocol protocol = Protocol();

//===============================================================
// function prototypes
//===============================================================
void sendToClock(String);

//===============================================================
// functions
//===============================================================

void notifyClients(String message)
{
  ws.textAll(message);
  ws.cleanupClients();
}

void handleCMDTelemetry(const SCLink::telemetryResponse_t &data){
  static uint8_t id=0;
  ESP_LOGI("handleTelemetry","1: %d, 2: %d", data.batteryLevel, data.rssi);
  shotclockUI.updateTelemetryInfo(id++ % 3, data.batteryLevel, data.rssi);
}

void sendToClock(String Msg)
{

  String msgWithChannel = Msg + String(channel);

  ESP_LOGI("ClockMessage","Sending to clock: %s", msgWithChannel.c_str());
  // send serial for cabled clock over RS485
  Serial2.println(msgWithChannel);

  // send lora
  //radio.transmit(msgWithChannel);
  
}

void updateClock(uint8_t timeToDisplay, uint8_t brightnessLevel) {
  String clockMsg;
  if (timeToDisplay < 10)
  {
    clockMsg = timeCommand + 0 + timeToDisplay + brightnessLevel;
  }
  else
  {
    clockMsg = timeCommand + timeToDisplay + brightnessLevel;
  }
  _timeToDisplay = timeToDisplay;
  //sendToClock(clockMsg);
  
  uint8_t dummy[5] {_timeToDisplay, brightnessLevel};
  dummy[0] = _timeToDisplay; // send time in dummy data for RSSI display
  dummy[1] = brightnessLevel;
  ESP_LOGI("UpdateClock","t: %d, b: %d", _timeToDisplay, brightnessLevel);
  
  //protocol.updateTime(_timeToDisplay, brightnessLevel);

  shotclockUI.setDataDisplay(_timeToDisplay, channel, shotClockLogic.isClockRunning());
}

void honkClock(uint8_t honkVolumeLevel) {
  //String commandH = "H" + String(honkVolumeLevel);
  //sendToClock(commandH);

  protocol.sendHonk(honkVolumeLevel);
}

void sendStartTime(int T)
{
  notifyClients("SW" + T);
}

void handleWebSocketMessage(void *arg, uint8_t *data, size_t len)
{
  AwsFrameInfo *info = (AwsFrameInfo *)arg;
  if (info->final && info->index == 0 && info->len == len && info->opcode == WS_TEXT)
  {
    data[len] = 0;
    if (strcmp((char *)data, "reset") == 0)
    {
      shotClockLogic.resetClock(true);
    }
    if (strcmp((char *)data, "playpause") == 0)
    {
      shotClockLogic.playPause();
    }
    if (strcmp((char *)data, "setTime30") == 0)
    {
      shotClockLogic.resetClock(false, 30);
    }
    if (strcmp((char *)data, "setTimePlus10") == 0)
    {
      shotClockLogic.adjustTime(10);
    }
    if (strcmp((char *)data, "setTimeMinus10") == 0)
    {
      shotClockLogic.adjustTime(-10);
    }
    if (strcmp((char *)data, "setTimePlus5") == 0)
    {
      shotClockLogic.adjustTime(5);
    }
    if (strcmp((char *)data, "setTimeMinus5") == 0)
    {
      shotClockLogic.adjustTime(-5);
    }
    if (strcmp((char *)data, "setTimePlus1") == 0)
    {
      shotClockLogic.adjustTime(1);
    }
    if (strcmp((char *)data, "setTimeMinus1") == 0)
    {
      shotClockLogic.adjustTime(-1);
    }
    if (strcmp((char *)data, "SW") == 0)
    {
      sendStartTime(shotClockLogic.getResetTime());
    }
  }
}

void onEvent(AsyncWebSocket *server, AsyncWebSocketClient *client, AwsEventType type, void *arg, uint8_t *data, size_t len)
{
  switch (type)
  {
  case WS_EVT_CONNECT:
    ESP_LOGI("WebSocket","client #%u connected from %s\n", client->id(), client->remoteIP().toString().c_str());
    break;
  case WS_EVT_DISCONNECT:
    ESP_LOGI("WebSocket","client #%u disconnected\n", client->id());
    break;
  case WS_EVT_DATA:
    handleWebSocketMessage(arg, data, len);
    break;
  case WS_EVT_PONG:
  case WS_EVT_ERROR:
    break;
  }
}

String channelProcessor(const String &var)
{
  String links = "";
  if (var == "LINKPLACEHOLDER")
  {
    for (int c = 1; c <= 4; c++)
    {
      links += "<a class=\"pp-button";
      links += channel == c ? " pp-is-active" : "";
      links += "\" href=\"/" + String(c) + "\">Channel " + String(c) + "</a>";
    }
  }
  return links;
}

String versionProcessor(const String& var)
{
  String val = "";
  if(var == "PCB_VERSION_PLACEHOLDER"){
    val = String(CONTROLLER_PCB_VERSION);
  }
  if(var == "BOARD_VERSION_PLACEHOLDER"){
    val = String(BOARD);
  }
  if(var == "BRANCH_PLACEHOLDER"){
    val = String(BRANCH);
  }
  if(var == "TAG_PLACEHOLDER"){
    val = String(TAG);
  }
  if(var == "COMMIT_PLACEHOLDER"){
    val = String(COMMIT);
  }
  return val;
}

void setChannel(int ch)
{
  channel = ch;
  preferences.begin(preferenceName, false);
  preferences.putInt(channelPreferenceName, channel);
  Serial.println("Channel " + String(channel));
  preferences.end();
  delay(1000);
  ESP.restart();
}

void loadChannelFromEEPROM()
{
  preferences.begin(preferenceName, false);
  channel = preferences.getInt(channelPreferenceName, defaultChannel);
  syncword = syncwordSelect[channel];
  frequency = frequencySelect[channel];
  preferences.end();
}

void updateButtonState()
{
  // Update all button states first
  for (auto& c : configs) {
      c.btn->read();
  }

  // First handle special combinations of buttons
  if (btn4.isPressed() && btn5.wasReleased()) {
      buttonState = B4_AND_B5_PRESSED;
      //wasLongPress = true;
      return;
  }
  if (btn1.isPressed() && btn2.wasReleased()) {
      buttonState = B1_AND_B2_PRESSED;
      return;
  }

  // Evaluate all other buttons and update state
  for (auto& c : configs) {
      if (c.btn->wasReleased()) {
          if (wasLongPress) {
              wasLongPress = false; 
          } else {
              buttonState = c.stateShort;
          }
          return; 
      }
      if (c.btn->pressedFor(c.pressTime) && !wasLongPress) {
          buttonState = c.stateLong;
          wasLongPress = true;
          return;
      }
  }

  buttonState = NONE;
}

void handleButtonClicks()
{
  switch (buttonState)
  {
    case B1_PRESSED:
    case B1_PRESSED_LONG:
    case B6_PRESSED:
    case B6_PRESSED_LONG:
      shotClockLogic.playPause();
      break;
    case B2_PRESSED:
    case B2_PRESSED_LONG:
      shotClockLogic.resetClock(true);
      break;
    case B3_PRESSED:
      shotClockLogic.resetClock(false);
      break;
    case B3_PRESSED_LONG:
      shotClockLogic.toggleResetTime();
      shotClockLogic.resetClock(false);
      break;

    case B4_PRESSED:      shotClockLogic.adjustTime(-1);  break;
    case B4_PRESSED_LONG: shotClockLogic.adjustTime(-10); break;
    case B5_PRESSED:      shotClockLogic.adjustTime(1);   break;
    case B5_PRESSED_LONG: shotClockLogic.adjustTime(10);  break;

    case B4_AND_B5_PRESSED:
      shotClockLogic.honk();
      shotclockUI.showHonk(channel);
      break;
      
    default:
      break;
  }
}

//===============================================================
// Setup
//===============================================================
void initOTA()
{
  ElegantOTA.begin(&server);  // Start ElegantOTA
  server.begin();
  ESP_LOGI("OTA","HTTP server started");
}

void initWebSocket()
{
  ws.onEvent(onEvent);
  server.addHandler(&ws);
}

void initWebserver()
{
  // Route for root / web page
  server.on("/", HTTP_GET, [](AsyncWebServerRequest *request)
            { request->send(SPIFFS, "/index.html", String(), false); });

  server.on("/controller", HTTP_GET, [](AsyncWebServerRequest *request)
            { request->send(SPIFFS, "/controller.html", String(), false); });

  server.on("/settings", HTTP_GET, [](AsyncWebServerRequest *request)
            { request->send(SPIFFS, "/settings.html", String(), false, [](const String &var) -> String
                            { return shotClockLogic.settingsProcessor(var); }); });

  server.on("/version", HTTP_GET, [](AsyncWebServerRequest *request)
            { request->send(200, "text/html", version_html, versionProcessor); });

  server.on("/brightness", HTTP_GET, [](AsyncWebServerRequest *request)
            {
              if (request->hasParam("b")){
                int level = request->getParam("b")->value().toInt();
                shotClockLogic.setBrightness(level);
                request->send(200, "text/html", "brightness changed");
              }
              else{
                request->send(400, "text/plain", "missing parameters");
              } });

  server.on("/honkvolume", HTTP_GET, [](AsyncWebServerRequest *request)
            {
              if (request->hasParam("v")){
                int level = request->getParam("v")->value().toInt();
                shotClockLogic.setHonkVolumeLevel(level);
                request->send(200, "text/html", "honk volume changed");
              }
              else{
                request->send(400, "text/plain", "missing parameters");
              } });

  server.on("/starttime", HTTP_GET, [](AsyncWebServerRequest *request)
            {
              if (request->hasParam("t")){
                int time = request->getParam("t")->value().toInt();
                if (time >= 1 && time <= 99) {
                  shotClockLogic.setResetTime(time);
                  request->send(200, "text/html", "start time changed");
                } else {
                  request->send(400, "text/plain", "invalid time value: must be between 1 and 99");
                }
              }
              else{
                request->send(400, "text/plain", "missing parameters");
              } });

  // Route to load style.css file
  server.on("/style.css", HTTP_GET, [](AsyncWebServerRequest *request)
            { request->send(SPIFFS, "/style.css", "text/css"); });

  server.on("/javascript.js", HTTP_GET, [](AsyncWebServerRequest *request)
            { request->send(SPIFFS, "/javascript.js", "application/javascript"); });

  server.on("/piep.mp3", HTTP_GET, [](AsyncWebServerRequest *request)
            { request->send(SPIFFS, "/piep.mp3"); });

  server.on("/longpiep.mp3", HTTP_GET, [](AsyncWebServerRequest *request)
            { request->send(SPIFFS, "/longpiep.mp3"); });

  server.on("/digital-7-mono.ttf", HTTP_GET, [](AsyncWebServerRequest *request)
            { request->send(SPIFFS, "/digital-7-mono.ttf"); });

  server.on("/digital-7-mono.woff", HTTP_GET, [](AsyncWebServerRequest *request)
            { request->send(SPIFFS, "/digital-7-mono.woff"); });

  server.on("/digital-7-mono.woff2", HTTP_GET, [](AsyncWebServerRequest *request)
            { request->send(SPIFFS, "/digital-7-mono.woff2"); });

  server.on("/channel", HTTP_GET, [](AsyncWebServerRequest *request)
            {
            if (request->hasParam("c")) {
              int ch = request->getParam("c")->value().toInt();
              if (ch >= 1 && ch <= 4) {
                request->send(200, "text/plain", resetString);
                setChannel(ch);
              } else {
                request->send(400, "text/plain", "invalid channel");
              }
            } else {
              request->send(400, "text/plain", "missing parameters");
            } });
}

void initButtons() {
  // initialize the button objects
  btn1.begin();
  btn2.begin();
  btn3.begin();
  btn4.begin();
  btn5.begin();
  btn6.begin();
}

/*void initRadio() {
  // initialize SX12xx with default settings
  ESP_LOGI("RADIO","Initializing ... ");

  #if defined(OSC_CONTROLLER_R0) | defined(OSC_CONTROLLER_R1)
    spi.begin(LoRa_CLK, LoRa_MISO, LoRa_MOSI, LoRa_NSS); 
    int state = radio.begin();//(434.0, 125.0, 9, 7, RADIOLIB_SX126X_SYNC_WORD_PRIVATE, 10, 8, 0, false);
  #else
    int state = radio.begin();
  #endif

  if (state == RADIOLIB_ERR_NONE) {
    ESP_LOGI("RADIO","success!");
  } else {
    ESP_LOGE("RADIO","failed, code %d", state);
  }

  radio.setSyncWord(syncword);
  radio.setFrequency(frequency);
  
  ESP_LOGI("RADIO","Freq: %f, Sync: %i",frequency, syncword);
}*/

void setup()
{
  ESP_LOGE("Init", "START"); 
  #if defined(OSC_CONTROLLER_R0) | defined(OSC_CONTROLLER_R1)
    pinMode(PIN_PWR, OUTPUT);
    digitalWrite(PIN_PWR, HIGH);
    ESP_LOGE("Init", "As OSC R1"); 
    pinMode(V_SENSE, ANALOG);
    pinMode(I_SENSE, ANALOG);
    pinMode(LED_ERR, OUTPUT);
    pinMode(PIN_HORN, OUTPUT);
    pinMode(UART_TXEN, OUTPUT);
    digitalWrite(UART_TXEN, HIGH);
  #endif

  #if defined(OSC_CONTROLLER_R1)
    pinMode(V_BAT_SENSE, ANALOG);
    pinMode(V_BAT_SENSE_EN, OUTPUT);
    digitalWrite(V_BAT_SENSE_EN, HIGH);
  #endif
  
  pinMode(LED_OK, OUTPUT);
  pinMode(PIN_B1, INPUT_PULLUP);
  pinMode(PIN_B2, INPUT_PULLUP);
  pinMode(PIN_B3, INPUT_PULLUP);
  pinMode(PIN_B4, INPUT_PULLUP);
  pinMode(PIN_B5, INPUT_PULLUP);

  pinMode(OLED_nEN, OUTPUT);
  digitalWrite(OLED_nEN, LOW);
  
  delay(100); 
  
  Wire.setPins(SDA, SCL);
  Wire.begin();

  #ifdef FLIPSCREEN
  shotclockUI.begin(true);
  #else
   shotclockUI.begin(false);  
   #endif
   
  loadChannelFromEEPROM();

  // RS-485
  Serial2.begin(9600, SERIAL_8N1, RXD2, TXD2);

  //initRadio();

  if (!SPIFFS.begin())
  {
    ESP_LOGE("SPIFFS","An Error has occurred while mounting SPIFFS");
    return;
  }
  ESP_LOGI("MAC","Address: %s", WiFi.macAddress().c_str());

  uint8_t mac[8];
  esp_efuse_mac_get_default(mac);
  ESP_LOGI("MAC","EDUSE: %s", mac);
  ESP_LOGI("MAC", "%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X", mac[0], mac[1], mac[2], mac[3], mac[4], mac[5], mac[6], mac[7]);

  // ESP32 As access point
  WiFi.mode(WIFI_AP); // Access Point mode
  WiFi.softAP(ssid, password);

  IPAddress myIP = WiFi.softAPIP(); // Get IP address
  ESP_LOGI("AP", "%s", myIP.toString());

  initWebSocket();
  initWebserver();

  initOTA();

  initButtons();


  shotClockLogic.begin(updateClock, honkClock, notifyClients);
  protocol.begin(shotClockLogic.getSyncWord(), shotClockLogic.getFrequency(), handleCMDTelemetry, nullptr, 1000); // Assuming device ID is 1
  //protocol.addCommandHandler((SCLink::command_t){SCLink::CMD_TELEMETRY, handleCMDTelemetry, false});

  timeNow = millis();
}

//===============================================================
// loop
//===============================================================
void loop()
{
  timeNow = millis();
  shotClockLogic.handle();
  shotclockUI.handle();
  protocol.handler();

  updateButtonState();
  handleButtonClicks();

  if(false)//(!shotClockLogic.isClockRunning() && timeNow - timeTelemetry > 8800)
  {
    timeTelemetry = timeNow;
    uint8_t tmp = 0;
    //protocol.transmit(SCLink::DISPLAY_1, SCLink::CMD_TELEMETRY, &tmp, 1);
    protocol.requestTelemetry(SCLink::DISPLAY_1);
  }

    if(timeNow - lastTime > 8800)
  {
    lastTime = timeNow;
    protocol.discover();
  }

  ElegantOTA.loop();

  #if defined(OSC_CONTROLLER_R0) | defined(OSC_CONTROLLER_R1)
  if(timeNow - lastTime > 4800)
  {
    lastTime = timeNow;
    voltageRaw = analogRead(V_BAT_SENSE);
    voltage = (voltageRaw * V_BAT_GAIN);
    ESP_LOGI("ADC","Voltage: %f",voltage);
    digitalWrite(LED_ERR, !digitalRead(LED_ERR));
  }  
  #endif
}
