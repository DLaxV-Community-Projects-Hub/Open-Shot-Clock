#include "LEDs.h"

LEDs::LEDs(Adafruit_PWMServoDriver pwm)
    : pwm{pwm} {};

LEDs::~LEDs()
{
}

void LEDs::segment(int seg, bool on)
{
    stopWaitingAnimation();

    if (on)
    {
        /*pwm.setPWM(seg, 0, B); // an 10%
        pwm.setPWM(seg+8, 4096, 0); // an 100%*/
        pwm.setPWM(seg + 8, ticks[brightnessLevel][0], ticks[brightnessLevel][1]); // nach Brightness Level
    }
    else
    {
        // pwm.setPWM(seg+8, 0, 4096); // aus
        pwm.setPWM(seg + 8, ticks[0][0], ticks[0][1]); // aus
    }
}

void LEDs::segment10(int seg, bool on)
{
    stopWaitingAnimation();

    if (on)
    {
        /*pwm.setPWM(seg + 7, 0, B); // an 10%
        pwm.setPWM(seg, 4096, 0); // an 100%*/
        pwm.setPWM(seg, ticks[brightnessLevel][0], ticks[brightnessLevel][1]); // nach Brightness Level
    }
    else
    {
        // pwm.setPWM(seg, 0, 4096); // aus
        pwm.setPWM(seg, ticks[0][0], ticks[0][1]); // aus
    }
}

void LEDs::displayClock(byte c)
{
    stopWaitingAnimation();
    for (int i = 0; i < 7; i++)
    {
        segment(i, segs[c % 10][i]); // Einer-Stelle
    }
    if (c > 9)
    {
        for (int i = 0; i < 7; i++)
        {
            segment10(i, segs[c / 10][i]); // Zehner-Stelle
        }
    }
    else
    {
        for (int i = 0; i < 7; i++)
        {
            pwm.setPWM(i, 0, 4096); // aus
        }
    }
}

int LEDs::getBrightnessLevel()
{
    return brightnessLevel;
}

void LEDs::setBrightnessLevel(int level)
{
    brightnessLevel = level;
}

void LEDs::allSegmentsOff()
{
    for (int i = 0; i < 15; i++)
    {
        pwm.setPWM(i, 0, 4096); // off
    }
}

void LEDs::stopWaitingAnimation()
{
    waitingMode = false;
}

void LEDs::waiting()
{
    long now = millis();
    if (now - lastWaitingMs >= interval)
    {
        allSegmentsOff();
        pwm.setPWM(waiting1er[waitingNo], ticks[getBrightnessLevel()][0], ticks[getBrightnessLevel()][1]);  // on 100%
        pwm.setPWM(waiting10er[waitingNo], ticks[getBrightnessLevel()][0], ticks[getBrightnessLevel()][1]); // on 100%

        lastWaitingMs = now;
        waitingNo++;
        if (waitingNo > 4)
        {
            waitingNo = 1;
        }
    }
}

void LEDs::showWaitingAnimation()
{
    waitingMode = true;
}

void LEDs::handle()
{
    if (waitingMode)
    {
        LEDs::waiting();
    }
}