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
    SCLink::telemetryResponse_t resp = {1,2};
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
}

void DisplayLogic::begin()
{
    leds_.allSegmentsOff();    
}
#pragma endregion