#pragma once

#include "SCLink.h"

class ControllerLink : public SCLink
{
public:
    ControllerLink(Module *module) : SCLink(module) {}

    using telemetryCallback = std::function<void(const SCLink::telemetryResponse_t &)>;
    void begin(uint8_t syncWord, float frequncy, telemetryCallback cbTelemetry, timeoutCallback cbTimeout, uint16_t timeout);

    void updateTime(uint8_t time, uint8_t brightness = 8);
    void sendHonk(uint8_t level);
    void requestTelemetry(endpoint_t id);
    void discover();
    void setID(uint32_t UID, uint8_t id);

private:
    void handleTelemetryCommand(uint8_t *data, uint8_t dataLength);
    void handleDiscoverCommand(uint8_t *data, uint8_t dataLength);
    void handleSetIdCommand(uint8_t *data, uint8_t dataLength);

    telemetryCallback _telemetryCallback;
};
