#pragma once

#include <Arduino.h>
#include <stdint.h>
#include <RadioLib.h>
#include <protocols/PhysicalLayer/PhysicalLayer.h>
#include <list>
#include <functional>

class SCLink
{
public:
    using CommandCallback = std::function<void(uint8_t *, uint8_t)>;

    typedef enum
    {
        BOARDCAST = 0,
        CONTROLLER = 1,
        DISPLAY_1 = 2,
        DISPLAY_2 = 3,
        UNINITIALIZED = 255
    } endpoint_t;

    typedef enum
    {
        CMD_TIME = 0,
        CMD_HONK = 1,
        CMD_DISCOVER = 2,
        CMD_SET_ID = 4,
        CMD_SHOW_ID = 5,
        CMD_TELEMETRY = 10
    } command_id_t;

    typedef struct
    {
        uint8_t id;
        uint8_t batteryLevel;
        uint8_t rssi;
    } telemetryResponse_t;

    typedef struct
    {
        uint32_t uid;
        uint8_t id;
    } setID_data_t;

    typedef struct
    {
        struct
        {
            uint8_t receiverId;
            uint8_t senderId;
            uint8_t commandId;
            uint8_t data[8];
        } cmd;
        uint8_t length;
        bool requiresResp;
    } protocol_t;

    typedef struct
    {
        uint8_t command;
        CommandCallback callback;
        bool expetsResponse;
    } command_t;

    using timeoutCallback = std::function<void(void)>;

    SCLink(Module *module) : radio(module) {}

    virtual void begin(uint8_t deviceId, uint8_t syncWord, float frequncy, bool isSlave = false, uint16_t timeout = 200, timeoutCallback callback = &defaultCallback);
    void transmit(uint8_t receiverId, uint8_t command, uint8_t *data, uint8_t dataLength, bool requiresResp = false, bool priority = false);
    void handler();
    void handlerSlave();
    void radioEvent();
    void addCommandHandler(command_t command);
    void handleCommand(uint8_t command, uint8_t *data, uint8_t dataLength);
    uint8_t getRSSI();

protected:
    void setId(uint8_t newId);
    uint32_t UID = {0};
    uint8_t id = 0;

private:
    void waitForResponse();
    void startTransmission();
    static void defaultCallback() {}
    void scanChannel();
    void handlePendingTransmits();
    void timeout();

    timeoutCallback timeoutCB;

    typedef enum
    {
        RADIO_STATE_IDLE,
        RADIO_STATE_TX,
        RADIO_STATE_RX,
        RADIO_STATE_ACD,
        RADIO_STATE_ACD_WAIT,
        RADIO_STATE_ACD_CLEAR,
    } radio_state_t;

    uint32_t txTime = 0, rxTime = 0, timeoutTime = 200, acdTime;
    bool radioRXTXFlag = false;
    bool _isSlave = false;
    radio_state_t radioState = RADIO_STATE_IDLE;

    protocol_t rxData;

    std::list<protocol_t> txList;
    std::list<command_t> commandList;

#if defined(WIFI_LoRa_32_V2)
    SX1276 radio;
#endif
#if defined(WIFI_LoRa_32_V3)
    SX1262 radio;
#endif
#if defined(OSC_CONTROLLER_R0) | defined(OSC_CONTROLLER_R1) | defined(OSC_DISPLAY_R1) | defined(OSC_DISPLAY_R2)
    LLCC68 radio;
#endif
};
