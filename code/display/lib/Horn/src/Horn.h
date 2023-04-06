#pragma once
#include <Arduino.h>
#include <Adafruit_PWMServoDriver.h>

#define HONK_DURATION 1000 // Honk duration in ms

class Horn
{
private:
    bool honkIsRequested();
    bool isHonkTimeOver();
    void startHonking();
    void stopHonking();

    Adafruit_PWMServoDriver pwm;
    bool isHonking = false;
    bool isHonkRequest = false;
    unsigned long honkStartTime = 0;

public:
    Horn(Adafruit_PWMServoDriver);
    ~Horn();

    void handle();
    void requestHonk();
};

