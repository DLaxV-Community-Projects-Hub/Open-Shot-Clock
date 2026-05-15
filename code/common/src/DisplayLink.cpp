#include "DisplayLink.h"

void DisplayLink::begin(uint8_t syncWord, float frequncy, handleTelemetry cbTelemetry, handleUpdateTime cbTime, handleHonk cbHonk, timeoutCallback callback, uint16_t timeout)
{
    SCLink::begin(SCLink::UNINITIALIZED, syncWord, frequncy, true, timeout, callback);
    _cbTelemetry = cbTelemetry;
    _cbUpdateTime = cbTime;
    _cbHonk = cbHonk;

    addCommandHandler((SCLink::command_t){SCLink::CMD_TELEMETRY, [this](uint8_t *data, uint8_t len) -> void { return this->handleTelemetryCommand(data, len); }, false});
    addCommandHandler((SCLink::command_t){SCLink::CMD_TIME,      [this](uint8_t *data, uint8_t len) -> void { return this->handleUpdateTimeCommand(data, len); }, false});
    addCommandHandler((SCLink::command_t){SCLink::CMD_HONK,      [this](uint8_t *data, uint8_t len) -> void { return this->handleHonkCommand(data, len); }, false});
    addCommandHandler((SCLink::command_t){SCLink::CMD_DISCOVER,  [this](uint8_t *data, uint8_t len) -> void { return this->handleDiscoverCommand(data, len); }, false});
    addCommandHandler((SCLink::command_t){SCLink::CMD_SET_ID,    [this](uint8_t *data, uint8_t len) -> void { return this->handleSetIdCommand(data, len); }, false});
    addCommandHandler((SCLink::command_t){SCLink::CMD_SHOW_ID,   [this](uint8_t *data, uint8_t len) -> void { return this->handleShowIdCommand(data, len); }, false});
}

void DisplayLink::handleTelemetryCommand(uint8_t *data, uint8_t dataLength)
{
    telemetryResponse_t tmp = {0};
    if (_cbTelemetry != nullptr)
        tmp = _cbTelemetry();
    transmit(SCLink::CONTROLLER, SCLink::CMD_TELEMETRY, (uint8_t *)&tmp, sizeof(tmp));
}

void DisplayLink::handleUpdateTimeCommand(uint8_t *data, uint8_t dataLength)
{
    ESP_LOGI("display", "addr: %p", data);
    if (_cbUpdateTime != nullptr)
        _cbUpdateTime(data[0], data[1]);
}

void DisplayLink::handleHonkCommand(uint8_t *data, uint8_t dataLength)
{
    if (_cbHonk != nullptr)
        _cbHonk(data[0]);
}

void DisplayLink::handleDiscoverCommand(uint8_t *data, uint8_t dataLength)
{
    // add a random delay to avoid LoRa collisions with a high probabilty
    uint32_t wait = random(0, 20) * 5;
    ESP_LOGI("DISCOVER", "waiting for: %d, UID: %X", wait, UID);
    delay(wait);
    transmit(SCLink::CONTROLLER, SCLink::CMD_DISCOVER, (uint8_t *)&UID, sizeof(uint32_t));
}

void DisplayLink::handleSetIdCommand(uint8_t *data, uint8_t dataLength)
{
    setID_data_t tmp;
    uint8_t resp = 0;
    memcpy(&tmp, data, sizeof(setID_data_t));

    if (tmp.uid == UID)
    {
        ESP_LOGI("SetID", "UID correct, setting id to: %d", tmp.id);
        resp = 1;
        setId(tmp.id);
        transmit(SCLink::CONTROLLER, SCLink::CMD_SET_ID, (uint8_t *)&resp, 1);
    }
    else
    {
        ESP_LOGI("SetID", "UID is wrong");
        transmit(SCLink::CONTROLLER, SCLink::CMD_SET_ID, (uint8_t *)&resp, 1);
    }
}

void DisplayLink::handleShowIdCommand(uint8_t *data, uint8_t dataLength)
{
    // TODO:
}
