#include "ShotClockLogic.h"

#pragma region Public Functions

/// @brief Initializes the shot clock logic and loads the saved preferences. Also sets the callback functions for updating the clock display, honking, and notifying clients.
/// @param updateCallback
/// @param honkCallback
/// @param notifyCallback
void ShotClockLogic::begin(IControllerUI *iUI, IControllerLink *iLink, notifyClientsCallback notifyCallback)
{
  pControllerUI = iUI;
  pControllerLink = iLink;
  notifyClientsCB = notifyCallback;
  preferences.begin(preferenceName, false);
  channel = preferences.getInt(channelPreferenceName, channel);
  honkVolumeLevel = preferences.getUChar(honkVolumePreferenceName, honkVolumeLevel);
  _resetTime = preferences.getUChar(startTimePreferenceName, defaultClockStart);
  syncword = syncwordSelect[channel];
  frequency = frequencySelect[channel];
  timeToDisplay = _resetTime;
  preferences.end();

  ESP_LOGV("SCL", "vBatFull: %d, vBatEmpty: %d", vBatFull, vBatEmpty);

  brightnessLevel = CORE_DEBUG_LEVEL == 0 ? 8 : 3; // Reduce brightness in debug mode

  if(vbatPin_ >= 0)
  {
      pinMode(vbatPin_, ANALOG);
      vBatAvg = analogReadMilliVolts(vbatPin_);
  }

  uint32_t tmp = UPDATE_INTERVALL;
  ESP_LOGI("SCLogic","INTERVALL: %d",tmp);
}

/// @brief Main handler function that should be called in the main loop. It checks if the clock is running and either counts down or stops counting accordingly.
void ShotClockLogic::handle()
{
  timeNow = millis();

  switch (state)
  {
  case LOGIC_DISCOVER:
    pControllerLink->discover();
    discoverCount++;
    msDiscoverStart = timeNow;
    state = LOGIC_DISCOVER_WAIT;
    pControllerUI->setDiscoverDisplay(registeredLinks);
    break;

    case LOGIC_DISCOVER_WAIT:
    if(timeNow -msDiscoverStart> 2000)
    {
      if(discoverCount < 4)
      {
        state = LOGIC_DISCOVER;
      }
      else
      {
        state = LOGIC_RUNNING;
      }
    }
    break;
  
    case LOGIC_RUNNING:
    if (isRunning)
    {
      unsigned long msAlreadyPassedInCurrentSecond = (timeOfLastPauseEvent - timeOfLastCountEvent) + (timeNow - timeOfLastPlayEvent);
      // TODO: Check if this is still correct when manually changing time
      if (timeToDisplay > 0)
      {
        if (msAlreadyPassedInCurrentSecond >= UPDATE_INTERVALL)
        {
          timeToDisplay--;
          ESP_LOGI("ShotClockLogic", "Time to display: %d", timeToDisplay);
          updateClock(timeToDisplay, brightnessLevel);
          if (timeToDisplay == 0)
          {
            isRunning = false;
            honk();
          }
          notifyClients(String(timeToDisplay));
          resetTimers();
        }
      }
      else
      {
        isRunning = false;
      }
    }
    else
    {
      if (timeNow - msLastTelemetry >= UPDATE_INTERVALL_PAUSED * 2 && timeToDisplay > 10)
      {
        msLastTelemetry = timeNow;
        ESP_LOGI("ShotClockLogic", "Request Telemtry");
        requestNextTelemetry();
      }
      if (timeNow - msLastStopCount >= UPDATE_INTERVALL_PAUSED)
      {
        ESP_LOGI("ShotClockLogic", "Paused! Time to display: %d", timeToDisplay);
        updateClock(timeToDisplay, brightnessLevel);
        notifyClients(String(timeToDisplay));
        msLastStopCount = timeNow;
      }
    }
    break;
  default:
    break;
  }

  if(millis() - tLastADC > 2000)
  {
    if(vbatPin_ >= 0)
    {
      uint32_t TMP = millis();
        uint32_t tmp = analogReadMilliVolts(vbatPin_);
        vBatAvg = ((vBatAvg << 2) + tmp) / 5;
        batteryLevel = constrain(map(vBatAvg, vBatEmpty, vBatFull, 0, 8),0,8);
        ESP_LOGI("ADC","measured %d, avg %d, took: %dms", tmp, vBatAvg, millis() - TMP);
    }
    tLastADC = millis();
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
    resetTimers();
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
  pControllerLink->sendHonk(honkVolumeLevel);
  pControllerUI->showHonk(1);
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
#pragma endregion

#pragma region Private Functions

/// @brief Resets the internal timers used for counting and pausing.
void ShotClockLogic::resetTimers()
{
  timeOfLastCountEvent = timeNow;
  timeOfLastPauseEvent = timeNow;
  timeOfLastPlayEvent = timeNow;
  msLastStopCount = timeNow;
  msLastTelemetry = timeNow;
}

void ShotClockLogic::honkClock(uint8_t honkVolumeLevel)
{
  if(pControllerUI) pControllerUI->showHonk(honkVolumeLevel);
}

void ShotClockLogic::updateClock(uint8_t timeToDisplay, uint8_t brightnessLevel)
{
  if(pControllerUI) pControllerUI->setDataDisplay(timeToDisplay, channel, batteryLevel, isRunning);
  if(pControllerLink) pControllerLink->updateTime(timeToDisplay, brightnessLevel);
}

void ShotClockLogic::notifyClients(String message)
{
  if (notifyClientsCB != nullptr)
  {
    notifyClientsCB(message);
  }
}

void ShotClockLogic::requestNextTelemetry()
{
  static size_t index = 0;
  if(registeredLinks.empty()) return;

  if(index >= registeredLinks.size())
  {
    index = 0;
  }
  index = (index + 1) % registeredLinks.size();

  uint8_t tmp = registeredLinks[index];
  ESP_LOGI("LOGIC","Request from: %d/%d", tmp,registeredLinks.size());
  pControllerLink->requestTelemetry((SCLink::endpoint_t) tmp);
}

#pragma endregion

#pragma region Command Handlers
// This section contains the command handlers

void ShotClockLogic::handleSetId(uint8_t id)
{
  if(registeredLinks.size() < 20)
  {
    if(std::find(registeredLinks.begin(), registeredLinks.end(), id) == registeredLinks.end())
    {
      // add ID to list if not already contained
      registeredLinks.push_back(id);
      pControllerUI->setDiscoverDisplay(registeredLinks);
      ESP_LOGI("LOGIC","Add new ID: %d", id);
    }
  }
}

void ShotClockLogic::handleTelemetry(SCLink::telemetryResponse_t response, int8_t signalStrengthRX)
{
  ESP_LOGI("SC LOGIC","Received Telemetry: id: %d, bat: %d, rssiTX: %d, rssiRX: %d",response.id, response.batteryLevel, response.rssi, signalStrengthRX);
  if(pControllerUI) pControllerUI->updateTelemetryInfo(response.id, response.batteryLevel, response.rssi, signalStrengthRX);
}

void ShotClockLogic::handleTimeout()
{
  if(state == LOGIC_DISCOVER_WAIT)
  {
    state = LOGIC_RUNNING;
  }
  ESP_LOGI("SC LOGIC","CMD Timeout");
}

#pragma endregion
