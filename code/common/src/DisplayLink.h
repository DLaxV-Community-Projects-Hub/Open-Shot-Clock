#pragma once

#include "SCLink.h"



class DisplayLink : public SCLink
{

    public:
    DisplayLink(Module *module) :SCLink(module) {}

    using handleTelemetry = std::function<telemetryResponse_t(void)>;
    using handleUpdateTime = std::function<void(uint8_t, uint8_t)>;
    using handleHonk = std::function<void(uint8_t)>;

    void begin(uint8_t syncWord, float frequncy, handleTelemetry cbTelemetry, handleUpdateTime cbTime, handleHonk cbHonk, timeoutCallback callback, uint16_t timeout);

    private:

    handleTelemetry _cbTelemetry;
    handleUpdateTime _cbUpdateTime;
    handleHonk _cbHonk;
    
    uint8_t _handleTelemetry(uint8_t *data, uint8_t dataLength);
    uint8_t _handleUpdateTime(uint8_t *data, uint8_t dataLength);
    uint8_t _handleHonk(uint8_t *data, uint8_t dataLength);
    uint8_t _handleDiscover(uint8_t *data, uint8_t dataLength);
    uint8_t _handleSetId(uint8_t *data, uint8_t dataLength);
    uint8_t _handleShowId(uint8_t *data, uint8_t dataLength);

};