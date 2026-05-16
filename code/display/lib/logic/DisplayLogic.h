#pragma once

#include "LEDs.h"
#include "Horn.h"
#include "DisplayLink.h"

class DisplayLogic : public IDisplayLink
{
public:
    DisplayLogic(Horn &horn, LEDs &leds);
    ~DisplayLogic();

    SCLink::telemetryResponse_t handleTelemetry(void) override;
    void handleUpdateTime(uint8_t time, uint8_t brightness) override;
    void handleHonk(uint8_t volume) override;
    void handleTimeout() override;
    void handleShowId(uint8_t id) override;

    void begin();
    void handle();

private:
    /* data */
    Horn &horn_;
    LEDs &leds_;
};
