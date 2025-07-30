#include <Arduino.h>

#include <heltec.h>
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

//===============================================================
// variables, constants, objects
//===============================================================

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

bool isClockRunning = false; // count on/off, starts off
int defaultClockStart = 30;
int clockStartTime = defaultClockStart;
int timeToDisplay = clockStartTime; // Start Zahl
String clockStr = "30";
int brightnessLevel = 8;

unsigned long timeNow;              // current time from millis()
unsigned long timeOfLastPauseEvent;      // last time Button Pause
unsigned long timeOfLastPlayEvent;      // last time Button Play
unsigned long timeOfLastCountEvent;     // last time count down
unsigned long msLastStopCount; // last time count/send in stop mode

const unsigned long LONG_PRESS(400);  // we define a "long press" to be 400 milliseconds.
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

AsyncWebServer server(80);
AsyncWebSocket ws("/ws");

Preferences preferences;



//===============================================================
// function prototypes
//===============================================================
void sendToClock(String);
void playPause(void);



//===============================================================
// functions
//===============================================================
void resetTimers()
{
  timeOfLastCountEvent = timeNow;
  timeOfLastPauseEvent = timeNow;
  timeOfLastPlayEvent = timeNow;
}

void setPauseDisplay()
{
  Heltec.display->fillRect(12, 16, 3, 16);
  Heltec.display->fillRect(18, 16, 3, 16);
}

void setDataDisplay()
{
  clockStr = timeToDisplay < 10 ? "0" + String(timeToDisplay) : String(timeToDisplay);

  Heltec.display->drawHorizontalLine(2, 50, 124);
  Heltec.display->setTextAlignment(TEXT_ALIGN_CENTER);
  Heltec.display->setFont(DSEG14_Classic_Mini_Regular_40);
  Heltec.display->drawString(64, 1, clockStr);
  Heltec.display->setFont(ArialMT_Plain_10);
  Heltec.display->drawString(64, 52, "Channel " + String(channel));
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
  Heltec.display->clear();
  setDataDisplay();
  if (!isClockRunning) setPauseDisplay();
  Heltec.display->display();

  String msgWithChannel = Msg + String(channel);

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

      notifyClients(String(timeToDisplay));
      ws.cleanupClients();

      resetTimers();
    }
  }
  else
  {
    isClockRunning = !isClockRunning;
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
  if (resetTime < 0)
  {
    resetTime = 0;
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
  String commandH = "H";
  sendToClock(commandH);
}

void sendBCommand()
{
  String commandB = "B";
  sendToClock(commandB);
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
  resetClock(false);
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

void onEvent(AsyncWebSocket *server, AsyncWebSocketClient *client, AwsEventType type,
             void *arg, uint8_t *data, size_t len)
{
  switch (type)
  {
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

String versionProcessor(const String& var){
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
  if (var == "SELECTED_BRIGHTNESS_LEVEL1" && brightnessLevel == 1)
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
  preferences.begin("shot-clock", false);
  preferences.putInt("channel", channel);
  Serial.println("Channel " + channel);
  preferences.end();
  delay(1000);
  ESP.restart();
}

void loadChannelFromEEPROM()
{
  preferences.begin("shot-clock", false);
  channel = preferences.getInt("channel", defaultChannel);
  syncword = syncwordSelect[channel];
  frequency = frequencySelect[channel];
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
    Heltec.display->display();
  }
  else
  {
    notifyClients("true");
    timeOfLastPlayEvent = timeNow; // wenn auf Play gewechselt, dann Zeit Letztes Play Speichern

    Heltec.display->clear();
    setDataDisplay();
    Heltec.display->display();
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
    buttonState = B4_AND_B5_PRESSED;
    wasLongPress = true;
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
  else if (btn3.pressedFor(LONG_PRESS) && !wasLongPress)
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
    Heltec.display->clear();
    Heltec.display->drawHorizontalLine(2, 50, 124);
    Heltec.display->setTextAlignment(TEXT_ALIGN_CENTER);
    Heltec.display->setFont(DSEG14_Classic_Mini_Regular_40);
    Heltec.display->drawString(64, 1, "HONK");
    Heltec.display->setFont(ArialMT_Plain_10);
    Heltec.display->drawString(64, 52, "Channel " + String(channel));
    Heltec.display->display();
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
    resetClock(true, clockStartTime);
    break;
  case B3_PRESSED:
    resetClock(false, clockStartTime);
    break;
  case B3_PRESSED_LONG:
    resetClock(false, clockStartTime);
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
  Serial.println("HTTP server started");
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
            { request->send(200, "text/html", channel_html, channelProcessor); });

  /*    server.on("/channel/", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/channel.html", String(), false);
  });*/

  server.on("/1", HTTP_GET, [](AsyncWebServerRequest *request)
            {
    request->send(200, "text/plain", resetString);
    setChannel(1); });

  server.on("/2", HTTP_GET, [](AsyncWebServerRequest *request)
            {
    request->send(200, "text/plain", resetString);
    setChannel(2); });

  server.on("/3", HTTP_GET, [](AsyncWebServerRequest *request)
            {
    request->send(200, "text/plain", resetString);
    setChannel(3); });

  server.on("/4", HTTP_GET, [](AsyncWebServerRequest *request)
            {
    request->send(200, "text/plain", resetString);
    setChannel(4); });
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
  Serial.print(F("[SX12xx] Initializing ... "));
  int state = radio.begin();
  if (state == RADIOLIB_ERR_NONE) {
    Serial.println(F("success!"));
  } else {
    Serial.print(F("failed, code "));
    Serial.println(state);
    while (true);
  }

  radio.setSyncWord(syncword);
  radio.setFrequency(frequency);
}

void setup()
{

  loadChannelFromEEPROM();

  // RS-485
  Serial2.begin(9600, SERIAL_8N1, RXD2, TXD2);

  long band = 434000000;  // not used anymore, because RadioLib handles LoRa
  Heltec.begin(true /*Display Enable*/, false /*LoRa Disable*/, true /*Serial Enable*/, false /*PABOOST Enable*/, band /*long BAND*/);

  initRadio();

  if (!SPIFFS.begin())
  {
    Serial.println("An Error has occurred while mounting SPIFFS");
    return;
  }

  Serial.println();
  Serial.print("MAC: ");
  Serial.println(WiFi.macAddress());

  Heltec.display->init();

  #ifdef FLIPSCREEN
    Heltec.display->flipScreenVertically();
  #endif

  Heltec.display->setFont(ArialMT_Plain_10);

  // ESP32 As access point
  WiFi.mode(WIFI_AP); // Access Point mode
  WiFi.softAP(ssid, password);

  IPAddress myIP = WiFi.softAPIP(); // Get IP address
  Serial.print("HotSpt IP:");
  Serial.println(myIP);

  initWebSocket();

  initWebserver();

  initOTA();

  Heltec.display->clear();
  setPauseDisplay();
  setDataDisplay();
  Heltec.display->display();

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
}