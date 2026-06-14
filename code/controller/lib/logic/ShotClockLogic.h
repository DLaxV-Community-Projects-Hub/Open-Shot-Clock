#pragma once

#include <Arduino.h>
#include <stdint.h>
#include <vector>
#include <Preferences.h>

#include "ShotClockUI.h"
#include "ControllerLink.h"

//#if CORE_DEBUG_LEVEL == 0
  #define UPDATE_INTERVALL 1000
  #define UPDATE_INTERVALL_PAUSED 1000
/*#else // Use slower update intervall for debugging
  #define UPDATE_INTERVALL 5000
  #define UPDATE_INTERVALL_PAUSED 5000
#endif*/

#define V_BAT_FULL (4200)  // battery voltage in mV for 100%
#define V_BAT_EMPTY (3300) // battery voltage in mV for 0%

class ShotClockLogic : public IControllerLinkHandler{
  public:
    typedef  void (*notifyClientsCallback)(String message);

    ShotClockLogic(int8_t vBatPin = -1, double vBatGain = 1.0) : vBatFull(V_BAT_FULL), vBatEmpty(V_BAT_EMPTY), vbatPin_(vBatPin){ registeredLinks.reserve(20); }

    void begin(IControllerUI *iUI, IControllerLink *iLink, notifyClientsCallback notifyCallback);
    void handle();
    void setBrightness(uint8_t brightness);

    void toggleResetTime();
    void setResetTime(int8_t time);
    void playPause();
    void resetClock(bool play, int8_t resetTime);
    void resetClock(bool play);
    void honk();
    void setHonkVolumeLevel(uint8_t level) ;
    void adjustTime(int8_t timeAdjustment);
    bool isClockRunning(){
      return isRunning;
    }

    void handleSetId(uint8_t id);
    void handleTelemetry(SCLink::telemetryResponse_t response) override;
    void handleTimeout() override;

    uint8_t getSyncWord() {return syncword; }
    float getFrequency() {return frequency; }

    String settingsProcessor(const String& var);

     uint8_t getTimeToDisplay() { return timeToDisplay;}
     uint8_t getResetTime() { return _resetTime; }
     uint8_t getHonkVolumeLevel() { return honkVolumeLevel; }
     uint8_t getBrightnessLevel() { return brightnessLevel;}

     const uint8_t RESET_TIME_SHORT = 30;
     const uint8_t RESET_TIME_LONG = 80;

  private:

    typedef enum
    {
      LOGIC_DISCOVER,
      LOGIC_DISCOVER_WAIT,
      LOGIC_RUNNING,
      LOGIC_WAIT,
    }sCLogicState_t;
  
    void resetTimers();

    void notifyClients(String message);
    void updateClock(uint8_t timeToDisplay, uint8_t brightnessLevel);
    void honkClock(uint8_t honkVolumeLevel);
    void requestNextTelemetry();

    sCLogicState_t state = LOGIC_DISCOVER;
    uint8_t discoverCount = 0;
    int8_t timeToDisplay = 0;
    uint8_t brightnessLevel = 8;
    uint8_t honkVolumeLevel = 5;
    int8_t _resetTime = 30;
    bool isRunning = false;
    const int8_t vbatPin_;
    uint32_t vBatAvg;
    uint8_t batteryLevel = 255;

    std::vector<uint8_t> registeredLinks;
    notifyClientsCallback notifyClientsCB;

    uint32_t timeOfLastPauseEvent, timeOfLastCountEvent,timeNow,  timeOfLastPlayEvent, msLastStopCount, msLastTelemetry, msDiscoverStart, tLastADC;

    const uint32_t vBatFull, vBatEmpty;

    Preferences preferences;
    const char* preferenceName = "shot-clock";
    const char* startTimePreferenceName = "start-time";
    const char* honkVolumePreferenceName = "honk-volume";
    const char* channelPreferenceName = "channel";

    int channel = 1;
    int defaultClockStart = 30;


    uint8_t syncwordSelect[5]={
    0x12,   //  not needed
    0x12,   //  Kanal 1
    0x23,   //  Kanal 2  
    0x34,   //  Kanal 3  
    0x45    //  Kanal 4
    };
    uint8_t syncword;

    float frequencySelect[5]={
    433.0F,   //  not needed
    433.0F,   //  Kanal 1
    433.5F,   //  Kanal 2  
    434.0F,   //  Kanal 3  
    434.5F   //  Kanal 4
    };
    float frequency;

    IControllerUI *pControllerUI = nullptr;
    IControllerLink *pControllerLink = nullptr;
};