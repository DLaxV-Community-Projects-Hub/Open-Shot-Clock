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
    uint8_t honkVolumeLevel = 5; // Default volume level

public:
    Horn(Adafruit_PWMServoDriver);
    ~Horn();

    void handle();
    void requestHonk(uint8_t honkVolumeLevel = 5);

    int volumeMap[6][2] = {
        {0, 4096}, // 0 off
        {0, 64}, // 1 whisper
        {0, 512}, // 2 low
        {0, 1024}, // 3 medium
        {0, 1700}, // 4 high
        {4096, 0}  // 5 max
    };
};

