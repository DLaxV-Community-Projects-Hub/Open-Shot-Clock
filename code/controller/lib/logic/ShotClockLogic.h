#pragma once

#include <Arduino.h>
#include <stdint.h>
#include <Preferences.h>


class ShotClockLogic {
  public:
    typedef  void (*updateClockCallback)(uint8_t timeToDisplay, uint8_t brightnessLevel);
    typedef  void (*honkClockCallback)(uint8_t honkVolumeLevel);
    typedef  void (*notifyClientsCallback)(String message);

    void begin(updateClockCallback updateCallback, honkClockCallback honkCallback, notifyClientsCallback notifyCallback);
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

    String settingsProcessor(const String& var);

     uint8_t getTimeToDisplay() { return timeToDisplay;}
     uint8_t getResetTime() { return _resetTime; }
     uint8_t getHonkVolumeLevel() { return honkVolumeLevel; }
     uint8_t getBrightnessLevel() { return brightnessLevel;}

     const uint8_t RESET_TIME_SHORT = 30;
     const uint8_t RESET_TIME_LONG = 80;

  private:

  void count();
  void stopCount();
  void resetTimers();

  void notifyClients(String message);
  void updateClock(uint8_t timeToDisplay, uint8_t brightnessLevel);
  void honkClock(uint8_t honkVolumeLevel);

    int8_t timeToDisplay = 0;
    uint8_t brightnessLevel = 8;
    uint8_t honkVolumeLevel = 5;
    int8_t _resetTime = 30;
    bool isRunning = false;

    updateClockCallback updateClockCB;
    honkClockCallback honkClockCB;
    notifyClientsCallback notifyClientsCB;

    uint32_t timeOfLastPauseEvent, timeOfLastCountEvent,timeNow,  timeOfLastPlayEvent, msLastStopCount;

    Preferences preferences;
    const char* preferenceName = "shot-clock";
    const char* startTimePreferenceName = "start-time";
    const char* honkVolumePreferenceName = "honk-volume";
    const char* channelPreferenceName = "channel";

    typedef struct settings
    {
      const char* name;
    };
    

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
};