#pragma once

#include "SCLink.h"

class DisplayLink : public SCLink
{
public:
    DisplayLink(Module *module) : SCLink(module) {}

    using handleTelemetry = std::function<telemetryResponse_t(void)>;
    using handleUpdateTime = std::function<void(uint8_t, uint8_t)>;
    using handleHonk = std::function<void(uint8_t)>;

    void begin(uint8_t syncWord, float frequncy, handleTelemetry cbTelemetry, handleUpdateTime cbTime, handleHonk cbHonk, timeoutCallback callback, uint16_t timeout);

private:
    handleTelemetry _cbTelemetry;
    handleUpdateTime _cbUpdateTime;
    handleHonk _cbHonk;

    void handleTelemetryCommand(uint8_t *data, uint8_t dataLength);
    void handleUpdateTimeCommand(uint8_t *data, uint8_t dataLength);
    void handleHonkCommand(uint8_t *data, uint8_t dataLength);
    void handleDiscoverCommand(uint8_t *data, uint8_t dataLength);
    void handleSetIdCommand(uint8_t *data, uint8_t dataLength);
    void handleShowIdCommand(uint8_t *data, uint8_t dataLength);
};
