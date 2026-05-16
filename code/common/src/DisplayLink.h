#pragma once

#include "SCLink.h"

/**
 * @brief Interface definition to register as consumer to a DisplayLink object
 */
class IDisplayLink
{
public:
    // Called when new telemetry data is requested
    virtual SCLink::telemetryResponse_t handleTelemetry(void) = 0;
    // Called when new time information is received
    virtual void handleUpdateTime(uint8_t time, uint8_t brightness) = 0;
    // Called when honk is requested
    virtual void handleHonk(uint8_t volume) = 0;
    // Called when a timeout happended while waiting for a response
    virtual void handleTimeout() = 0;
    // Called when show ID command was received
    virtual void handleShowId(uint8_t id) = 0;
};

/**
 * @brief DisplayLink handles functions and data conversion using SCLink as base class
 *  
 * Provides functions to use a display as a SCLink slave device, mainly receiving commands.
 * Received command data is filtered by ID and handled by dedicated functions.
 * If further processing is neded, the converted data is handled over to the IDisplayLink reference.
 */
class DisplayLink : public SCLink
{
public:
    DisplayLink(Module *module) : SCLink(module) {}
    
    // Public Functions
    void begin(IDisplayLink *iLink, uint8_t syncWord, float frequncy, uint16_t timeout);

    // Handler Function Types
    using handleTelemetry = std::function<telemetryResponse_t(void)>;
    using handleUpdateTime = std::function<void(uint8_t, uint8_t)>;
    using handleHonk = std::function<void(uint8_t)>;
    using handleShowId = std::function<void(uint8_t)>;

private:
    handleTelemetry _cbTelemetry;
    handleUpdateTime _cbUpdateTime;
    handleHonk _cbHonk;
    handleShowId _cbShowId;

    IDisplayLink *pILink = nullptr;

    void handleTelemetryCommand(uint8_t *data, uint8_t dataLength);
    void handleUpdateTimeCommand(uint8_t *data, uint8_t dataLength);
    void handleHonkCommand(uint8_t *data, uint8_t dataLength);
    void handleDiscoverCommand(uint8_t *data, uint8_t dataLength);
    void handleSetIdCommand(uint8_t *data, uint8_t dataLength);
    void handleShowIdCommand(uint8_t *data, uint8_t dataLength);
};
