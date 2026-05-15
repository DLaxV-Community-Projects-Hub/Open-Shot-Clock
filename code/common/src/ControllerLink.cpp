#include "ControllerLink.h"


void ControllerLink::begin(uint8_t syncWord, float frequncy, telemetryCallback cbTelemetry, timeoutCallback cbTimeout, uint16_t timeout)
{
    SCLink::begin(SCLink::CONTROLLER, syncWord, frequncy, false, timeout, cbTimeout);
    _telemetryCallback = cbTelemetry;    
    addCommandHandler((SCLink::command_t){SCLink::CMD_TELEMETRY, [this](uint8_t *data, uint8_t len) -> uint8_t {return this->handleTelemetry(data, len);}, false});
    addCommandHandler((SCLink::command_t){SCLink::CMD_DISCOVER,  [this](uint8_t *data, uint8_t len) -> uint8_t {return this->handleDiscover(data, len);}, false});
    addCommandHandler((SCLink::command_t){SCLink::CMD_SET_ID,    [this](uint8_t *data, uint8_t len) -> uint8_t {return this->handleSetId(data, len);}, false});
}

uint8_t ControllerLink::handleTelemetry(uint8_t *data, uint8_t dataLength)
{
    telemetryResponse_t tmp = {data[0], data[1]};
    if(_telemetryCallback != nullptr) _telemetryCallback(tmp);
    return 0;
}

uint8_t ControllerLink::handleDiscover(uint8_t *data, uint8_t dataLength)
{
    uint32_t uid = 0;
    memcpy(&uid, data, sizeof(uint32_t));
    ESP_LOGI("Discover","Found Device: %X", uid);
    setID(uid, SCLink::DISPLAY_1);
    return 0;
}

uint8_t ControllerLink::handleSetId(uint8_t *data, uint8_t dataLength)
{
    if(data[0]==1)
    {
        ESP_LOGI("Set ID", "Confirmed");
    }
    else
    {
        ESP_LOGI("Set ID", "Refused");
    }
    return 0;
}

void ControllerLink::updateTime(uint8_t time, uint8_t brightness)
{
    uint8_t tmp[] = {time, brightness};
    transmit(SCLink::BOARDCAST, SCLink::CMD_TIME, tmp, 2);
}

void ControllerLink::sendHonk(uint8_t level)
{
    transmit(SCLink::BOARDCAST, SCLink::CMD_HONK, &level, 1);
}

void ControllerLink::requestTelemetry(endpoint_t id)
{
    uint8_t tmp = 0;
    transmit(id, SCLink::CMD_TELEMETRY, &tmp, 1, true);
}


void ControllerLink::discover()
{
    uint8_t tmp = 0;
    transmit(SCLink::BOARDCAST, SCLink::CMD_DISCOVER, &tmp, 1, true);
}


void ControllerLink::setID(uint32_t UID, uint8_t id)
{
    setID_data_t tmp = {UID, id};
    transmit(SCLink::BOARDCAST, SCLink::CMD_SET_ID,(uint8_t*) &tmp, sizeof(tmp), true);
}