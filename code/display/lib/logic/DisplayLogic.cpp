#include "DisplayLogic.h"

DisplayLogic::DisplayLogic(Horn &horn, LEDs &leds) : horn_(horn), leds_(leds)
{
}

DisplayLogic::~DisplayLogic()
{
}

#pragma region Command Handlers
// This section contains the command handlers

SCLink::telemetryResponse_t DisplayLogic::handleTelemetry()
{
    uint8_t tmpLevel = 255;
    if(vbatPin_ >= 0) tmpLevel = constrain(map(vBatAvg, 1400, 1910, 0, 8),0,8);
    ESP_LOGI("TEL Display","val %dmv maped to: %d",vBatAvg, tmpLevel);
    SCLink::telemetryResponse_t resp = {0, tmpLevel ,2};
    return resp;
}

void  DisplayLogic::handleUpdateTime(uint8_t time, uint8_t brightness)
{
    leds_.setBrightnessLevel(brightness);
    leds_.displayClock(time);
}

void DisplayLogic::handleHonk(uint8_t volume)
{
    horn_.requestHonk(volume);
}

void DisplayLogic::handleShowId(uint8_t id)
{
    // TODO: remove debug code
    static uint8_t tmp =0;
    tmp = ++tmp < 7 ? tmp : 0;
    leds_.showSymbol(tmp);
}

void DisplayLogic::handleTimeout()
{
    leds_.showWaitingAnimation();
}
#pragma endregion

#pragma region Public Functions

void DisplayLogic::handle()
{
  horn_.handle();
  leds_.handle();

  if(millis() - tLastADC > 3300)
  {
    ESP_LOGI("ADC","measure");
    if(vbatPin_ >=0)
    {
        uint32_t tmp =analogReadMilliVolts(vbatPin_);
        vBatAvg = ((vBatAvg << 2) + tmp) / 5;
        ESP_LOGI("ADC","measured %d, avg %d", tmp, vBatAvg);
    }
    tLastADC = millis();
  }
}

void DisplayLogic::begin(int8_t vBatPin)
{
    vbatPin_ = vBatPin;
    ESP_LOGI("VBAT","Using pin: %d", vbatPin_);
    if(vbatPin_ >=0)
    {
        pinMode(vbatPin_, ANALOG);
    }
    leds_.allSegmentsOff();    
}
#pragma endregion

