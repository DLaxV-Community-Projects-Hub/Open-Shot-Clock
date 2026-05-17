#include "ControllerLink.h"

void ControllerLink::begin(IControllerLinkHandler *iLink, uint8_t syncWord, float frequncy, uint16_t timeout)
{
    pILink = iLink;
    SCLink::begin(SCLink::CONTROLLER, syncWord, frequncy, false, timeout,  [this]() -> void {this->pILink->handleTimeout();});
    addCommandHandler((SCLink::command_t){SCLink::CMD_TELEMETRY, [this](protocol_t &packet) -> void { return this->handleTelemetryCommand(packet); }, false});
    addCommandHandler((SCLink::command_t){SCLink::CMD_DISCOVER,  [this](protocol_t &packet) -> void { return this->handleDiscoverCommand(packet); }, false});
    addCommandHandler((SCLink::command_t){SCLink::CMD_SET_ID,    [this](protocol_t &packet) -> void { return this->handleSetIdCommand(packet); }, false});
}

#pragma region Command Handlers
// This section contains the mapping of received data to actual values used in the functions

void ControllerLink::handleTelemetryCommand(protocol_t &packet)
{
    telemetryResponse_t tmp = {packet.cmd.data[0], packet.cmd.data[1], packet.cmd.data[2]};
    if(pILink) pILink->handleTelemetry(tmp);
}

void ControllerLink::handleDiscoverCommand(protocol_t &packet)
{
    uint32_t uid = 0;
    memcpy(&uid, packet.cmd.data, sizeof(uint32_t));
    ESP_LOGI("Discover", "Found Device: %X", uid);
    setID(uid, nextFreeID++);
}

void ControllerLink::handleSetIdCommand(protocol_t &packet)
{
    if (packet.cmd.data[0] == 1)
    {
        ESP_LOGI("Set ID", "Confirmed (%d, len: %d)",packet.cmd.data[0], packet.length);
        if(pILink) pILink->handleSetId(packet.cmd.senderId);
    }
    else
    {
        ESP_LOGI("Set ID", "Refused (%d, len: %d)",packet.cmd.data[0], packet.length);
    }
}
#pragma endregion

#pragma region Public Functions

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
    transmit(SCLink::BOARDCAST, SCLink::CMD_SET_ID, (uint8_t *)&tmp, sizeof(tmp), true, true);
}

void ControllerLink::showId()
{
    transmit(SCLink::BOARDCAST, SCLink::CMD_SHOW_ID, nullptr, 0);
}
#pragma endregion
