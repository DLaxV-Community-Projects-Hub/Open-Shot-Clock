#include "ShotClockLogic.h"

/// @brief Initializes the shot clock logic and loads the saved preferences. Also sets the callback functions for updating the clock display, honking, and notifying clients.
/// @param updateCallback
/// @param honkCallback
/// @param notifyCallback
void ShotClockLogic::begin(updateClockCallback updateCallback, honkClockCallback honkCallback, notifyClientsCallback notifyCallback)
{
  updateClockCB = updateCallback;
  honkClockCB = honkCallback;
  notifyClientsCB = notifyCallback;
  preferences.begin(preferenceName, false);
  channel = preferences.getInt(channelPreferenceName, channel);
  honkVolumeLevel = preferences.getUChar(honkVolumePreferenceName, honkVolumeLevel);
  _resetTime = preferences.getUChar(startTimePreferenceName, defaultClockStart);
  syncword = syncwordSelect[channel];
  frequency = frequencySelect[channel];
  timeToDisplay = _resetTime;
  preferences.end();
}

/// @brief Main handler function that should be called in the main loop. It checks if the clock is running and either counts down or stops counting accordingly.
void ShotClockLogic::handle()
{
  timeNow = millis();

  if (isRunning)
  {
    unsigned long msAlreadyPassedInCurrentSecond = (timeOfLastPauseEvent - timeOfLastCountEvent) + (timeNow - timeOfLastPlayEvent);
    if (timeToDisplay > 0)
    {
      if (msAlreadyPassedInCurrentSecond >= 1000)
      {
        timeToDisplay--;
        ESP_LOGI("ShotClockLogic", "Time to display: %d", timeToDisplay);
        updateClock(timeToDisplay, brightnessLevel);
        if (timeToDisplay == 0)
        {
          honk();
        }
        notifyClients(String(timeToDisplay));
        resetTimers();
      }
    }
    else
    {
      isRunning = false;
      honk();
    }
  }
  else
  {
    if (timeNow - msLastStopCount >= 1000)
    {
      ESP_LOGI("ShotClockLogic", "Paused!");
      updateClock(timeToDisplay, brightnessLevel);
      notifyClients(String(timeToDisplay));
      msLastStopCount = timeNow;
    }
  }
}

/// @brief Sets the brightness level for the clock display.
/// @param brightness The brightness level to set.
void ShotClockLogic::setBrightness(uint8_t brightness)
{
  brightnessLevel = brightness;
}

/// @brief Toggles the reset time between SHORT and LONG.
/// @brief Sets the reset time for the clock.
/// @param time The reset time to set.
void ShotClockLogic::toggleResetTime()
{
  if (_resetTime == RESET_TIME_SHORT)
  {
    setResetTime(RESET_TIME_LONG);
  }
  else
  {
    setResetTime(RESET_TIME_SHORT);
  }
}

/// @brief Sets the reset time for the clock.
/// @param time The reset time to set.
void ShotClockLogic::setResetTime(int8_t time)
{
  _resetTime = constrain(time, 1, 99);
  
  preferences.begin(preferenceName, false);
  preferences.putInt(startTimePreferenceName, _resetTime);
  preferences.end();
  ESP_LOGI("ShotClockLogic", "Changed reset time to: %d", _resetTime);
}

/// @brief Toggles the play/pause state of the clock.
void ShotClockLogic::playPause()
{
  isRunning = !isRunning;
  updateClock(timeToDisplay, brightnessLevel);
}

/// @brief Resets the clock to a specific state.
/// @param play The play state to set after reset.
/// @param resetTime The time to reset the clock to.
void ShotClockLogic::resetClock(bool play, int8_t resetTime)
{
  timeToDisplay = constrain(resetTime, 1, 99);
  ;
  resetTimers();
  isRunning = play;
  notifyClients(String(timeToDisplay));
  updateClock(timeToDisplay, brightnessLevel);
  isRunning ? notifyClients("true") : notifyClients("false");
}

/// @brief Adjusts the time to display.
/// @param timeAdjustment The amount to adjust the time by.
void ShotClockLogic::adjustTime(int8_t timeAdjustment)
{
  if (!isRunning)
  {
    timeToDisplay = constrain(timeToDisplay + timeAdjustment, 0, 99);
    ESP_LOGI("ShotClockLogic", "Adjusted time to display: %d, change: %d", timeToDisplay, timeAdjustment);
    updateClock(timeToDisplay, brightnessLevel);
    notifyClients(String(timeToDisplay));
  }
}

/// @brief Resets the clock to its initial state.
/// @param play The play state to set after reset.
void ShotClockLogic::resetClock(bool play)
{
  resetClock(play, _resetTime);
}

/// @brief Honks the clock, which typically indicates that the time has run out.
void ShotClockLogic::honk()
{
  ESP_LOGI("ShotClockLogic", "HONK! Honk volume level: %d", honkVolumeLevel);
  honkClock(honkVolumeLevel);
}

/// @brief Resets the internal timers used for counting and pausing.
void ShotClockLogic::resetTimers()
{
  timeOfLastCountEvent = timeNow;
  timeOfLastPauseEvent = timeNow;
  timeOfLastPlayEvent = timeNow;
  msLastStopCount = timeNow;
}

/// @brief Sets the volume level for the honk sound.
/// @param level The volume level to set.
void ShotClockLogic::setHonkVolumeLevel(uint8_t level)
{
  if (level > 5)
  {
    level = 5;
  }
  honkVolumeLevel = level;
  preferences.begin(preferenceName, false);
  preferences.putUChar(honkVolumePreferenceName, honkVolumeLevel);
  preferences.end();
  ESP_LOGI("ShotClockLogic", "Changed honk volume level to: %d", honkVolumeLevel);
}

 String ShotClockLogic::settingsProcessor(const String& var)
{
  if (var == "CURRENT_START_TIME") return String(getResetTime());

  const char* pStart = "SELECTED_START_TIME";
  if (var.startsWith(pStart)) {
      int resetTime = getResetTime();
      if (var.endsWith("CUSTOM")) {
          return (resetTime != RESET_TIME_SHORT && resetTime != RESET_TIME_LONG) ? "selected" : "";
      }
      return (var.substring(strlen(pStart)).toInt() == resetTime) ? "selected" : "";
  }
  
  const char* pChannel = "SELECTED_CHANNEL";
  if (var.startsWith(pChannel)) {
      return (var.substring(strlen(pChannel)).toInt() == channel) ? "selected" : "";
  }
  
  const char* pHonk = "SELECTED_HONK_VOLUME_LEVEL";
  if (var.startsWith(pHonk)) {
      return (var.substring(strlen(pHonk)).toInt() == getHonkVolumeLevel()) ? "selected" : "";
  }
  
  const char* pBright = "SELECTED_BRIGHTNESS_LEVEL";
  if (var.startsWith(pBright)) {
      return (var.substring(strlen(pBright)).toInt() == getBrightnessLevel()) ? "selected" : "";
  }

  return String();
}

void ShotClockLogic::honkClock(uint8_t honkVolumeLevel)
{
  if (honkClockCB != nullptr)
  {
    honkClockCB(honkVolumeLevel);
  }
}

void ShotClockLogic::updateClock(uint8_t timeToDisplay, uint8_t brightnessLevel)
{
  if (updateClockCB != nullptr)
  {
    updateClockCB(timeToDisplay, brightnessLevel);
  }
}

void ShotClockLogic::notifyClients(String message)
{
  if (notifyClientsCB != nullptr)
  {
    notifyClientsCB(message);
  }
}
