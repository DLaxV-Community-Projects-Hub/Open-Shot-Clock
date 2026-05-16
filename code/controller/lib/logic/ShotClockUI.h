#pragma once

#include <Arduino.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <Wire.h> 
#include <stdint.h>
#include <list>

#include "ControllerLink.h"
#include "osc_logo.h"
#include "images.h"
#include "font.h"

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels
#define SCREEN_ADDRESS 0x3C


/**
 * @brief Interface defintion to use a ShotClockUI object
 */
class IControllerUI
{
public:
    virtual void setDataDisplay(uint16_t timeToDisplay, int channel, bool running) = 0;
    virtual void updateTelemetryInfo(uint8_t id, uint8_t batteryLevel, uint8_t signalStrength) = 0;
    virtual void showHonk(uint8_t channel) = 0;
};

/**
 * @brief ShotClockUI handles the updates of the OLED display used in the Controller HW
 * 
 * Provides functions for initialixation and implements the IControllerUI interface 
 */
class ShotClockUI : public IControllerUI
{
    public:
        ShotClockUI(TwoWire& I2C, int resetPin, int enablePin) : I2C(I2C), resetPin(resetPin), enablePin(enablePin) {}

        void begin(bool flipScreen = false);
        void handle();
        void showHonk(uint8_t channel) override;
        void setDataDisplay(uint16_t timeToDisplay, int channel, bool running = false) override;
        void updateTelemetryInfo(uint8_t id, uint8_t batteryLevel, uint8_t signalStrength) override;
        void refreshDisplay() { display.display(); }

        typedef struct {
            const uint8_t id;
            uint8_t batteryLevel;
            uint8_t signalStrength;
        } telemetry_t;

private:
    TwoWire& I2C;
    int8_t resetPin = -1;
    int8_t enablePin = -1;
    Adafruit_SSD1306 display = Adafruit_SSD1306(SCREEN_WIDTH, SCREEN_HEIGHT, &I2C);
    std::list<telemetry_t> telemetryList;

    const int16_t locChannelX = 92;
    const int16_t locChannelY = 54;
    const int16_t locBatteryX = 120;
    const int16_t locBatteryY = 51;
    const int16_t locTelemetryX = 0;
    const int16_t locTelemetryY = 51;

    uint8_t telemetryId = 0;

    void printTelemetryInfo(uint8_t id);
    void drawBatteryLevel(int16_t x, int16_t y, uint8_t level);
    void drawSignalStrength(int16_t x, int16_t y, uint8_t strength);
};