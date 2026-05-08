#include <Arduino.h>

#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include "osc_logo.h"
#include "images.h"
#include "channel.h"
#include "version.h"
#include "font.h"

#include <JC_Button.h>

#include <WiFi.h>
#include <WiFiClient.h>

#include <AsyncTCP.h>
#include <ESPAsyncWebServer.h>
#include <ElegantOTA.h>

#include <SPIFFS.h>

#include "config.h"

#include <Preferences.h>
#include <RadioLib.h>


#define BUFF_LEN 32

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels
#define SCREEN_ADDRESS 0x3C

//===============================================================
// variables, constants, objects
//===============================================================
uint32_t lastTime=0;
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

bool isClockRunning = false; // count on/off, starts off
int defaultClockStart = 30;
int clockStartTime = defaultClockStart;
int timeToDisplay = clockStartTime; // Start Zahl
String clockStr = "30";
int brightnessLevel = 8;
int honkVolumeLevel = 5; // 0 = off, 1 = whisper, 2 = low, 3 = medium, 4 = high, 5 = max

unsigned long timeNow;              // current time from millis()
unsigned long timeOfLastPauseEvent;      // last time Button Pause
unsigned long timeOfLastPlayEvent;      // last time Button Play
unsigned long timeOfLastCountEvent;     // last time count down
unsigned long msLastStopCount; // last time count/send in stop mode

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

#if defined(WIFI_LoRa_32_V2)
  SX1276 radio = new Module(SS, DIO0, RST_LoRa, DIO0);
#endif

#if defined(WIFI_LoRa_32_V3)
  SX1262 radio = new Module(SS, DIO0, RST_LoRa, BUSY_LoRa);
#endif
#if defined(OSC_CONTROLLER_R0) | defined(OSC_CONTROLLER_R1)
  SPIClass spi(HSPI);
  SPISettings spiSettings(2000000, MSBFIRST, SPI_MODE0);
  LLCC68 radio = new Module(LoRa_NSS, DIO0, RST_LoRa, BUSY_LoRa, spi, spiSettings);
#endif

AsyncWebServer server(80);
AsyncWebSocket ws("/ws");

Preferences preferences;

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, RST_OLED);

//===============================================================
// function prototypes
//===============================================================
void sendToClock(String);
void playPause(void);
void startHonking(void);


//===============================================================
// functions
//===============================================================
void resetTimers()
{
  timeOfLastCountEvent = timeNow;
  timeOfLastPauseEvent = timeNow;
  timeOfLastPlayEvent = timeNow;
  msLastStopCount = timeNow;
}

void setPauseDisplay()
{
  display.fillRect(12, 16, 3, 16, SSD1306_WHITE);
  display.fillRect(18, 16, 3, 16, SSD1306_WHITE);
}

void setDataDisplay()
{
  static uint8_t level = 0, signalStrength = 0;
  clockStr = timeToDisplay < 10 ? "0" + String(timeToDisplay) : String(timeToDisplay);

  display.drawFastHLine(2, 50, 124, SSD1306_WHITE);
  display.setFont(&DSEG7_Classic_Mini_Regular_40);
  display.setCursor(32, 40);
  display.printf("%s", clockStr);
  
  display.setFont(NULL);
  display.setCursor(32, 57);
  display.printf("Channel %d",channel);
}

void notifyClients(String message)
{
  ws.textAll(message);
}

String getTimeSendMsg(String command, int time)
{
  String clockMsg;
  if (time < 10)
  {
    clockMsg = command + 0 + time + brightnessLevel;
  }
  else
  {
    clockMsg = command + time + brightnessLevel;
  }
  return clockMsg;
}

void sendToClock(String Msg)
{
  display.clearDisplay();
  setDataDisplay();
  if (!isClockRunning) setPauseDisplay();
  display.display();

  String msgWithChannel = Msg + String(channel);

  ESP_LOGI("ClockMessage","Sending to clock: %s", msgWithChannel.c_str());
  // send serial for cabled clock over RS485
  Serial2.println(msgWithChannel);

  // send lora
  radio.transmit(msgWithChannel);
}

void count()
{
  unsigned long msAlreadyPassedInCurrentSecond = (timeOfLastPauseEvent - timeOfLastCountEvent) + (timeNow - timeOfLastPlayEvent);

  if (timeToDisplay > 0)
  {
    if (msAlreadyPassedInCurrentSecond >= 1000)
    {
      timeToDisplay--;

      String clockMsg = getTimeSendMsg(timeCommand, timeToDisplay);
      sendToClock(clockMsg);
      if (timeToDisplay == 0) {
        startHonking();
      }

      notifyClients(String(timeToDisplay));
      ws.cleanupClients();

      resetTimers();
    }
  }
  else
  {
    isClockRunning = !isClockRunning;
    startHonking();
  }
}

void stopCount()
{
  // the displays need to be updated every second
  if (timeNow - msLastStopCount >= 1000)
  {
    String clockMsg = getTimeSendMsg(timeCommand, timeToDisplay);
    sendToClock(clockMsg);
    notifyClients(String(timeToDisplay));
    ws.cleanupClients();
    msLastStopCount = timeNow;
  }
}

void resetClock(bool runClock, int resetTime=defaultClockStart)
{
  if (resetTime < 1)
  {
    resetTime = 1;
  } else if (resetTime > 99)
  {
    resetTime = 99;
  }
  
  timeToDisplay = resetTime;
  String clockMsg = getTimeSendMsg(timeCommand, timeToDisplay);
  sendToClock(clockMsg);

  notifyClients(String(timeToDisplay));
  ws.cleanupClients();
  resetTimers();
  isClockRunning = runClock;
  runClock ? notifyClients("true") : notifyClients("false");
}

void sendStartTime(int T)
{
  notifyClients("SW" + T);
}

void startHonking()
{
  String commandH = "H" + String(honkVolumeLevel);
  sendToClock(commandH);
}

void sendBCommand()
{
  String commandB = "B";
  sendToClock(commandB);
}

void toggleResetTime()
{
  if (!isClockRunning){
    if (clockStartTime == 30) {
      clockStartTime = 80;
    } else {
      clockStartTime = 30;
    }
    preferences.begin(preferenceName, false);
    preferences.putInt(startTimePreferenceName, clockStartTime);
    preferences.end();
    sendStartTime(clockStartTime);
    resetClock(false, clockStartTime);
  }
}

void setNewStartTime(int startTime)
{
  clockStartTime = startTime;
  if (clockStartTime < 0)
  {
    clockStartTime = 0;
  }
  if (clockStartTime > 99)
  {
    clockStartTime = 99;
  }
  resetClock(false, clockStartTime);
  sendStartTime(clockStartTime);
}

void handleWebSocketMessage(void *arg, uint8_t *data, size_t len)
{
  AwsFrameInfo *info = (AwsFrameInfo *)arg;
  if (info->final && info->index == 0 && info->len == len && info->opcode == WS_TEXT)
  {
    data[len] = 0;
    if (strcmp((char *)data, "reset") == 0)
    {
      resetClock(true);
    }
    if (strcmp((char *)data, "playpause") == 0)
    {
      playPause();
    }
    if (strcmp((char *)data, "setTime30") == 0)
    {
      resetClock(false, 30);
    }
    if (strcmp((char *)data, "setTimePlus10") == 0)
    {
      resetClock(false, timeToDisplay + 10);
    }
    if (strcmp((char *)data, "setTimeMinus10") == 0)
    {
      resetClock(false, timeToDisplay - 10);
    }
    if (strcmp((char *)data, "setTimePlus5") == 0)
    {
      resetClock(false, timeToDisplay + 5);
    }
    if (strcmp((char *)data, "setTimeMinus5") == 0)
    {
      resetClock(false, timeToDisplay - 5);
    }
    if (strcmp((char *)data, "setTimePlus1") == 0)
    {
      resetClock(false, timeToDisplay + 1);
    }
    if (strcmp((char *)data, "setTimeMinus1") == 0)
    {
      resetClock(false, timeToDisplay - 1);
    }
    if (strcmp((char *)data, "SW") == 0)
    {
      sendStartTime(clockStartTime);
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

String settingsProcessor(const String &var)
{
  if (var == "CURRENT_START_TIME")
  {
    return String(clockStartTime);
  }
  else if (var == "SELECTED_START_TIME30" && clockStartTime == 30)
  {
    return "selected";
  }
  else if (var == "SELECTED_START_TIME80" && clockStartTime == 80)
  {
    return "selected";
  }
  else if (var == "SELECTED_START_TIME_CUSTOM" && clockStartTime != 30 && clockStartTime != 80)
  {
    return "selected";
  }
  else if (var == "SELECTED_CHANNEL1" && channel == 1)
  {
    return "selected";
  }
  else if (var == "SELECTED_CHANNEL2" && channel == 2)
  {
    return "selected";
  }
  else if (var == "SELECTED_CHANNEL3" && channel == 3)
  {
    return "selected";
  }
  else if (var == "SELECTED_CHANNEL4" && channel == 4)
  {
    return "selected";
  }
  else if (var == "SELECTED_HONK_VOLUME_LEVEL0" && honkVolumeLevel == 0)
  {
    return "selected";
  }
  else if (var == "SELECTED_HONK_VOLUME_LEVEL1" && honkVolumeLevel == 1)
  {
    return "selected";
  }
  else if (var == "SELECTED_HONK_VOLUME_LEVEL2" && honkVolumeLevel == 2)
  {
    return "selected";
  }
  else if (var == "SELECTED_HONK_VOLUME_LEVEL3" && honkVolumeLevel == 3)
  {
    return "selected";
  }
  else if (var == "SELECTED_HONK_VOLUME_LEVEL4" && honkVolumeLevel == 4)
  {
    return "selected";
  }
  else if (var == "SELECTED_HONK_VOLUME_LEVEL5" && honkVolumeLevel == 5)
  {
    return "selected";
  }
  else if (var == "SELECTED_BRIGHTNESS_LEVEL1" && brightnessLevel == 1)
  {
    return "selected";
  }
  else if (var == "SELECTED_BRIGHTNESS_LEVEL2" && brightnessLevel == 2)
  {
    return "selected";
  }
  else if (var == "SELECTED_BRIGHTNESS_LEVEL3" && brightnessLevel == 3)
  {
    return "selected";
  }
  else if (var == "SELECTED_BRIGHTNESS_LEVEL4" && brightnessLevel == 4)
  {
    return "selected";
  }
  else if (var == "SELECTED_BRIGHTNESS_LEVEL5" && brightnessLevel == 5)
  {
    return "selected";
  }
  else if (var == "SELECTED_BRIGHTNESS_LEVEL6" && brightnessLevel == 6)
  {
    return "selected";
  }
  else if (var == "SELECTED_BRIGHTNESS_LEVEL7" && brightnessLevel == 7)
  {
    return "selected";
  }
  else if (var == "SELECTED_BRIGHTNESS_LEVEL8" && brightnessLevel == 8)
  {
    return "selected";
  }
  return String();
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

void setHonkVolumeLevel(int level)
{
  honkVolumeLevel = level;
  preferences.begin(preferenceName, false);
  preferences.putInt(honkVolumePreferenceName, honkVolumeLevel);
  Serial.println("Honk Volume Level " + String(honkVolumeLevel));
  preferences.end();
}

void loadHonkVolumeFromEEPROM()
{
  preferences.begin(preferenceName, false);
  honkVolumeLevel = preferences.getInt(honkVolumePreferenceName, honkVolumeLevel);
  preferences.end();
}

void loadClockStartTimeFromEEPROM()
{
  preferences.begin(preferenceName, false);
  clockStartTime = preferences.getInt(startTimePreferenceName, defaultClockStart);
  timeToDisplay = clockStartTime;
  preferences.end();
}

void playPause()
{
  isClockRunning = !isClockRunning; // ON > OFF oder OFF > ON // fängt OFF an
  if (isClockRunning == false)
  {
    notifyClients("false");
    timeOfLastPauseEvent = timeNow; // wenn auf Pause gewechselt, dann Zeit Letzter PAuse Speichern
    setPauseDisplay();
    display.display();
  }
  else
  {
    notifyClients("true");
    timeOfLastPlayEvent = timeNow; // wenn auf Play gewechselt, dann Zeit Letztes Play Speichern

    display.clearDisplay();
    setDataDisplay();
    display.display();
  }
}

void updateButtonState()
{
  btn1.read(); // read the button
  btn2.read(); // read the button
  btn3.read(); // read the button
  btn4.read();   // read the button
  btn5.read();   // read the button
  btn6.read();   // read the button

  if (btn4.isPressed() && btn5.wasReleased())
  {
    // hold down button 4 and click button 5
    buttonState = B4_AND_B5_PRESSED;
    wasLongPress = true;
  }
  else  if (btn1.isPressed() && btn2.wasReleased())
  {
    // hold down button 1 and click button 2
    buttonState = B1_AND_B2_PRESSED;
  }
  else if (btn1.wasReleased() && !wasLongPress)
  {
    buttonState = B1_PRESSED;
  }
  else if (btn1.wasReleased() && wasLongPress)
  {
    wasLongPress = false;
  }
  else if (btn1.pressedFor(LONG_PRESS) && !wasLongPress)
  {
    buttonState = B1_PRESSED_LONG;
    wasLongPress = true;
  }
  else if (btn2.wasReleased() && !wasLongPress)
  {
    buttonState = B2_PRESSED;
  }
  else if (btn2.wasReleased() && wasLongPress)
  {
    wasLongPress = false;
  }
  else if (btn2.pressedFor(LONG_PRESS) && !wasLongPress)
  {
    buttonState = B2_PRESSED_LONG;
    wasLongPress = true;
  }
  else if (btn3.wasReleased() && !wasLongPress)
  {
    buttonState = B3_PRESSED;
  }
  else if (btn3.wasReleased() && wasLongPress)
  {
    wasLongPress = false;
  }
  else if (btn3.pressedFor(EXTRA_LONG_PRESS) && !wasLongPress)
  {
    buttonState = B3_PRESSED_LONG;
    wasLongPress = true;
  }
  else if (btn4.wasReleased() && !wasLongPress)
  {
    buttonState = B4_PRESSED;
  }
  else if (btn4.wasReleased() && wasLongPress)
  {
    wasLongPress = false;
  }
  else if (btn4.pressedFor(LONG_PRESS) && !wasLongPress)
  {
    buttonState = B4_PRESSED_LONG;
    wasLongPress = true;
  }
  else if (btn5.wasReleased() && !wasLongPress)
  {
    buttonState = B5_PRESSED;
  }
  else if (btn5.wasReleased() && wasLongPress)
  {
    wasLongPress = false;
  }
  else if (btn5.pressedFor(LONG_PRESS) && !wasLongPress)
  {
    buttonState = B5_PRESSED_LONG;
    wasLongPress = true;
  }
  else if (btn6.wasReleased() && !wasLongPress)
  {
    buttonState = B6_PRESSED;
  }
  else if (btn6.wasReleased() && wasLongPress)
  {
    wasLongPress = false;
    wasLongPress = false;
  }
  else if (btn6.pressedFor(LONG_PRESS) && !wasLongPress)
  {
    buttonState = B6_PRESSED_LONG;
    wasLongPress = true;
  }
  else
  {
    buttonState = NONE;
  }
}

void handleButtonClicks()
{
  switch (buttonState)
  {
  case B4_AND_B5_PRESSED:
    startHonking();
    display.clearDisplay();
    display.drawFastHLine(2, 50, 124, SSD1306_WHITE);
    display.setFont(NULL);
    display.setTextSize(5);
    display.setCursor(7, 10);
    display.printf("HONK");
    display.setTextSize(1);
    display.setCursor(32, 57);
    display.printf("Channel %d",channel);
    display.display();
    break;
  case B1_PRESSED:
    playPause();
    break;
  case B1_PRESSED_LONG:
    playPause();
    break;
  case B2_PRESSED:
    resetClock(true, clockStartTime);
    break;
  case B2_PRESSED_LONG:
    toggleResetTime();
    break;
  case B3_PRESSED:
    resetClock(false, clockStartTime);
    break;
  case B3_PRESSED_LONG:
    toggleResetTime();
    break;
  case B4_PRESSED:
    if (!isClockRunning) {
      resetClock(false, timeToDisplay - 1);
    }
    break;
  case B4_PRESSED_LONG:
    if (!isClockRunning) {
      resetClock(false, timeToDisplay - 10);
    }
    break;
  case B5_PRESSED:
    if (!isClockRunning) {
      resetClock(false, timeToDisplay + 1);
    }
    break;
  case B5_PRESSED_LONG:
    if (!isClockRunning) {
      resetClock(false, timeToDisplay + 10);
    }
    break;
  case B6_PRESSED:
  playPause();
    break;
  case B6_PRESSED_LONG:
  playPause();
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
            {
  request->send(SPIFFS, "/controller.html", String(), false);
  });

  server.on("/settings", HTTP_GET, [](AsyncWebServerRequest *request)
            { request->send(SPIFFS, "/settings.html", String(), false, settingsProcessor); });

  server.on("/version", HTTP_GET, [](AsyncWebServerRequest *request) {
    request->send(200, "text/html", version_html, versionProcessor);
  });

  server.on("/brightness", HTTP_GET, [](AsyncWebServerRequest *request)
            {
    if (request->hasParam("b")){
      brightnessLevel = request->getParam("b")->value().toInt();
      request->send(200, "text/html", "brightness changed");
    }
    else{
      request->send(400, "text/plain", "missing parameters");
    } });

  server.on("/honkvolume", HTTP_GET, [](AsyncWebServerRequest *request)
            {
    if (request->hasParam("v")){
      int level = request->getParam("v")->value().toInt();
      setHonkVolumeLevel(level);
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
        setNewStartTime(time);
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

void initRadio() {
  // initialize SX12xx with default settings
  ESP_LOGI("Radio","LoRa Initializing ... ");

  #if defined(OSC_CONTROLLER_R0) | defined(OSC_CONTROLLER_R1)
    spi.begin(LoRa_CLK, LoRa_MISO, LoRa_MOSI, LoRa_NSS); 
    int state = radio.begin();//(434.0, 125.0, 9, 7, RADIOLIB_SX126X_SYNC_WORD_PRIVATE, 10, 8, 0, false);
  #else
    int state = radio.begin();
  #endif

  if (state == RADIOLIB_ERR_NONE) {
    ESP_LOGI("Radio","success!");
  } else {
    ESP_LOGE("Radio","failed, code ");
    Serial.println(state);
    while (true);
  }

  radio.setSyncWord(syncword);
  radio.setFrequency(frequency);
  
  ESP_LOGI("RADIO","Freq: %f, Sync: %i",frequency, syncword);
}

void setup()
{
  loadChannelFromEEPROM();
  loadClockStartTimeFromEEPROM();

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

  if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C, true)) {
    ESP_LOGE("SSD1306", "init failed"); 
  }

  display.clearDisplay();
  #ifdef FLIPSCREEN
    display.setRotation(2);  
  #endif
  display.setTextColor(SSD1306_WHITE);
  display.drawBitmap(29, 0, osc_logo.data, osc_logo.width, osc_logo.height, SSD1306_WHITE);
  display.display();
  delay(1000); // Pause for 1 seconds
  display.setFont(NULL);
  display.setTextSize(1);
  
  loadChannelFromEEPROM();
  loadClockStartTimeFromEEPROM();
  loadHonkVolumeFromEEPROM();

  // RS-485
  Serial2.begin(9600, SERIAL_8N1, RXD2, TXD2);

  initRadio();

  if (!SPIFFS.begin())
  {
    ESP_LOGE("SPIFFS","An Error has occurred while mounting SPIFFS");
    return;
  }
  ESP_LOGI("MAC","Address: %s", WiFi.macAddress().c_str());

  // ESP32 As access point
  WiFi.mode(WIFI_AP); // Access Point mode
  WiFi.softAP(ssid, password);

  IPAddress myIP = WiFi.softAPIP(); // Get IP address
  ESP_LOGI("AP", "%s", myIP.toString());

  initWebSocket();
  initWebserver();

  initOTA();



  display.clearDisplay();
  setPauseDisplay();
  setDataDisplay();
  display.display();

  initButtons();

  timeNow = millis();
  timeOfLastPauseEvent = timeNow;
  msLastStopCount = timeNow; 
}

//===============================================================
// loop
//===============================================================

void loop()
{
  timeNow = millis();

  updateButtonState();
  handleButtonClicks();

  isClockRunning ? count() : stopCount();

  ElegantOTA.loop();

  #if defined(OSC_CONTROLLER_R0) | defined(OSC_CONTROLLER_R1)
  if(timeNow - lastTime > 1000)
  {
    lastTime = timeNow;
    voltageRaw = analogRead(V_BAT_SENSE);
    voltage = (voltageRaw * V_BAT_GAIN);
    ESP_LOGI("ADC","Voltage: %f",voltage);
    digitalWrite(LED_ERR, !digitalRead(LED_ERR));
  }  
  #endif
}