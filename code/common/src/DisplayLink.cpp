#include "DisplayLink.h"

void DisplayLink::begin(IDisplayLink *iLink, uint8_t syncWord, float frequncy, uint16_t timeout)
{
    pILink = iLink;
    SCLink::begin(SCLink::UNINITIALIZED, syncWord, frequncy, true, timeout, [this]() -> void {this->pILink->handleTimeout();});

    addCommandHandler((SCLink::command_t){SCLink::CMD_TELEMETRY, [this](protocol_t &packet) -> void {  this->handleTelemetryCommand(packet); }, false});
    addCommandHandler((SCLink::command_t){SCLink::CMD_TIME,      [this](protocol_t &packet) -> void {  this->handleUpdateTimeCommand(packet); }, false});
    addCommandHandler((SCLink::command_t){SCLink::CMD_HONK,      [this](protocol_t &packet) -> void {  this->handleHonkCommand(packet); }, false});
    addCommandHandler((SCLink::command_t){SCLink::CMD_DISCOVER,  [this](protocol_t &packet) -> void {  this->handleDiscoverCommand(packet); }, false});
    addCommandHandler((SCLink::command_t){SCLink::CMD_SET_ID,    [this](protocol_t &packet) -> void {  this->handleSetIdCommand(packet); }, false});
    addCommandHandler((SCLink::command_t){SCLink::CMD_SHOW_ID,   [this](protocol_t &packet) -> void {  this->handleShowIdCommand(packet); }, false});
}

#pragma region Command Handlers
// This section contains the mapping of received data to actual values used in the functions

void DisplayLink::handleTelemetryCommand(protocol_t &packet)
{
    telemetryResponse_t tmp = {0};
    if(pILink) tmp = pILink->handleTelemetry();
    tmp.id = id;
    tmp.rssi = getRSSI();
    ESP_LOGI("TELEMETRY","id %d, bat %d, rssi %D", id, tmp.batteryLevel, tmp.rssi);

    transmit(SCLink::CONTROLLER, SCLink::CMD_TELEMETRY, (uint8_t *)&tmp, sizeof(tmp));
}

void DisplayLink::handleUpdateTimeCommand(protocol_t &packet)
{
    ESP_LOGI("display", "addr: %p", packet.cmd.data);
    if(pILink) pILink->handleUpdateTime(packet.cmd.data[0], packet.cmd.data[1]);
}

void DisplayLink::handleHonkCommand(protocol_t &packet)
{
    if(pILink) pILink->handleHonk(packet.cmd.data[0]);
}

void DisplayLink::handleDiscoverCommand(protocol_t &packet)
{
    // add a random delay to avoid LoRa collisions with a high probabilty
    uint32_t wait = random(0, 20) * 5;
    if(id == UNINITIALIZED)
    {
        ESP_LOGI("DISCOVER", "waiting for: %d, UID: %X", wait, UID);
        delay(wait);
        transmit(SCLink::CONTROLLER, SCLink::CMD_DISCOVER, (uint8_t *)&UID, sizeof(uint32_t));
    }
}

void DisplayLink::handleSetIdCommand(protocol_t &packet)
{
    setID_data_t tmp;
    uint8_t resp = 0;
    memcpy(&tmp, packet.cmd.data, sizeof(setID_data_t));
    if(id == UNINITIALIZED)
    {
        if (tmp.uid == UID)
        {
            ESP_LOGI("SetID", "UID correct, setting id to: %d", tmp.id);
            resp = 1;
            setId(tmp.id);
            transmit(SCLink::CONTROLLER, SCLink::CMD_SET_ID, (uint8_t *)&resp, 1);
            if(pILink) pILink->handleShowId(id);
        }
        else
        {
            ESP_LOGI("SetID", "UID is wrong, IGNORE");
        }
    }
}

void DisplayLink::handleShowIdCommand(protocol_t &packet)
{
    if(pILink) pILink->handleShowId(id);
}

#pragma endregion