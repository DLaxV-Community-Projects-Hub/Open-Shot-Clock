#pragma once
#include <Arduino.h>
#include <Adafruit_PWMServoDriver.h>

class LEDs
{
private:
    void segment(int, bool);
    void segment10(int, bool);
    void waiting();
    void stopWaitingAnimation();

    Adafruit_PWMServoDriver pwm;

    //initial Brightness Level 8 (max)
    int brightnessLevel = 8;
    int waitingMode = false;
    unsigned long interval = 150;
    unsigned long lastWaitingMs;
    int waitingNo = 1;
    int waiting1er[5]={
        0,
        8,
        13,
        12,
        4
    };

    int waiting10er[5]={
        0,
        3,
        2,
        1,
        9
    };

public:
    LEDs(Adafruit_PWMServoDriver);
    ~LEDs();

    int getBrightnessLevel();
    void setBrightnessLevel(int);
    void displayClock(byte);
    void showSymbol(uint8_t);
    void handle();
    void showWaitingAnimation();
    void allSegmentsOff();

    // 1 Array mit 10 Daten Zeilen mit jeweils 7 Datensätzen Typ Bool (0 bis 9)
    bool segs[10][7]={
    {true,true,true,true,true,true,false},               //0
    {true,false,false,false,false,true, false},          //1
    {true, true, false, true, true, false, true},        //2
    {true, true, false, false, true, true, true},        //3
    {true, false, true, false, false, true, true},       //4
    {false, true, true, false, true, true, true},        //5
    {false, true, true, true, true, true, true},         //6
    {true, true, false, false, false, true, false},      //7
    {true, true, true, true, true, true, true},          //8
    {true, true, true, false, true, true, true}          //9
    };

bool symbols[7][7] = {
    {true,  true,  true,  true,  false, true,  true},  // A
    {false, true,  true,  true,  true,  false, false}, // C
    {false, true,  true,  true,  true,  false, true},  // E
    {false, true,  true,  true,  false, false, true},  // F
    {true,  false, true,  true,  false, true,  true},  // H
    {false, false,  true,  true,  true, false, false}, // L
    {true,  false, true,  true,  true,  true,  false}, // U
};

    uint16_t ticks[9][2]={
        {0, 4096},           // 0 (off)
        {0, 64},       // 1
        {0, 128},       // 2 
        {0, 512},       // 3
        {0, 1024},       // 4 
        {0, 2048},       // 5
        {0, 3072},       // 6 
        {0, 3584},       // 7
        {4096, 0}                    // 8 (on, 100%)
    };
};

