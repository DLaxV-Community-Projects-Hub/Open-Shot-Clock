#pragma once

#include "SCLink.h"

/**
 * @brief Interface definition to register as consumer to a ControllerLink object
 */
class IControllerLinkHandler
{
public:
    // Called when telemetry data is received
    virtual void handleTelemetry(SCLink::telemetryResponse_t, int8_t) = 0;
    // Called when a timeout happended while waiting for a response
    virtual void handleTimeout() = 0;
    // Called when an ID was set and confirmed on slave
    virtual void handleSetId(uint8_t) = 0;
};

/**
 * @brief Interface defintion to use a ControlerLink object
 */
class IControllerLink
{
public:
    virtual void updateTime(uint8_t time, uint8_t brightness) = 0;
    virtual void sendHonk(uint8_t level) = 0;
    virtual void requestTelemetry(SCLink::endpoint_t id) = 0;
    virtual void discover() = 0;
    virtual void setID(uint32_t UID, uint8_t id) = 0;
    virtual void showId() = 0;
};

/**
 * @brief ControllerLink handles functions and data conversion using SCLink as base class
 *  
 * Provides functions to use a controller as a SCLink master device, mainly sending commands.
 * Data is mapped into a command structure including IDs before sending.
 * Received command data is filtered by ID and handled by dedicated functions.
 * If further processing is neded, the converted data is handled over to the IController reference.
 */
class ControllerLink : public SCLink, public IControllerLink
{
public:
    ControllerLink(Module *module) : SCLink(module) {}
    
    // Public Functions
    void begin(IControllerLinkHandler *iLink, uint8_t syncWord, float frequncy, uint16_t timeout);
    void updateTime(uint8_t time, uint8_t brightness = 8) override;
    void sendHonk(uint8_t level) override;
    void requestTelemetry(endpoint_t id) override;
    void discover() override;
    void setID(uint32_t UID, uint8_t id) override;
    void showId() override;

    // Handler Function Types
    using telemetryCallback = std::function<void(const SCLink::telemetryResponse_t &)>;

private:
    void handleTelemetryCommand(protocol_t &packet);
    void handleDiscoverCommand(protocol_t &packet);
    void handleSetIdCommand(protocol_t &packet);

    telemetryCallback _telemetryCallback;
    IControllerLinkHandler *pILink = nullptr;

    uint8_t nextFreeID = DISPLAY_1;
};
