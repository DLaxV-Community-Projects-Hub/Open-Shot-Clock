#include "SCLink.h"

static SCLink *protocolInstance = nullptr;

#if defined(ESP8266) || defined(ESP32)
  ICACHE_RAM_ATTR
#endif
static void radioEventCallback()
{
  if (protocolInstance) {
    protocolInstance->radioEvent();
  }
}

#if defined(ESP8266) || defined(ESP32)
  ICACHE_RAM_ATTR
#endif
void SCLink::radioEvent()
{
  radioRXTXFlag = true;
}

void SCLink::begin(uint8_t deviceId, uint8_t syncWord, float frequncy, bool isSlave, uint16_t timeout, timeoutCallback callback){
    int state = radio.begin();

    uint8_t mac[8] = {0};
    esp_efuse_mac_get_default(mac);
    ESP_LOGI("MAC", "%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X", mac[0], mac[1], mac[2], mac[3], mac[4], mac[5], mac[6], mac[7]);

    memcpy(&UID, &mac[2],4);
   ESP_LOGI("MAC", "Using UID: %08X", UID);


    if (state == RADIOLIB_ERR_NONE) {
    ESP_LOGI("RADIO","success!");
    } else {
    ESP_LOGE("RADIO","failed, code %d", state);
    }

    radio.setSyncWord(syncWord);
    radio.setFrequency(frequncy);

    id = deviceId;
    protocolInstance = this;
    radio.setPacketReceivedAction(radioEventCallback);
    _isSlave = isSlave;
    timeoutTime = timeout;
    timeoutCB = callback;
    if(isSlave)
    {
        waitForResponse();
    }
}

void SCLink::setId(uint8_t newId)
{
    this->id = newId;
    // TODO: saven in preferences!
}

void SCLink::transmit(uint8_t receiverId, uint8_t command, uint8_t *data, uint8_t dataLength, bool requiresResponse) {
    // construct the packet
    /*uint8_t packet[19]; // 1 byte for receiverId, 1 byte for senderId, 1 byte for command, 16 bytes for data
    packet[0] = receiverId;
    packet[1] = id;
    packet[2] = command;*/
    protocol_t tmp = {{receiverId, id, command,{0}}, requiresResponse};
    memcpy(&tmp.cmd.data, data, dataLength);

    txList.push_back(tmp);

    ESP_LOGI("TRANSMIT","CMD added to List: cmd: %d, sender: %d, receiver: %d", command, id, receiverId);

    // send the packet
    //radioState = RADIO_STATE_TX;
    //ESP_LOGI("SCLink","Transmitting packet to %d, command: %d", receiverId, command);
    //txTime = millis();
    //radio.startTransmit(packet, dataLength + 3);
}

void SCLink::startTransmission() {
    if(radioState == RADIO_STATE_ACD_CLEAR && txList.size()>0)
    {
        radioState = RADIO_STATE_TX;
        txTime = millis();
        ESP_LOGI("StartTransmission","CMD sent: cmd: %d, sender: %d, receiver: %d", txList.front().cmd.commandId, txList.front().cmd.senderId, txList.front().cmd.receiverId);

        radio.startTransmit((uint8_t*) &txList.front(), sizeof(protocol_t)-1);
    }
}
 

void SCLink::waitForResponse() {
  radioState = RADIO_STATE_RX;
  rxTime = millis();
    radio.startReceive();
}

void SCLink::timeout()
{
    ESP_LOGE("TIMEOUT","No Response");
    if(timeoutCB != nullptr) timeoutCB();
    
  if(_isSlave)
  {
    waitForResponse();
  }
  else
  {
    radioState = RADIO_STATE_IDLE;
  }
}

void SCLink::addCommandHandler(command_t command) {
    for(auto& cmd : commandList) {
        if(cmd.command == command.command) {
            cmd = command;
            return;
        }
    }
    commandList.push_back(command);
}

void SCLink::handleCommand(uint8_t command, uint8_t *data, uint8_t dataLength) {
    for(const auto& cmd : commandList) {
        if(cmd.command == command && cmd.callback != nullptr)
        {
            ESP_LOGI("handleCMD","Command found %d", cmd.callback);
            cmd.callback(data, dataLength);
        }
    }
}

void SCLink::scanChannel()
{
    acdTime = millis();
    radio.startChannelScan();
    ESP_LOGI("SCLink","Scan...");
    radioState = RADIO_STATE_ACD;
}

void SCLink::handlePendingTransmits()
{    
    if((radioState == RADIO_STATE_IDLE || radioState == RADIO_STATE_RX)&& txList.size()>0)
    {
        scanChannel();
    }
}

void SCLink::handler() {

    /*if(_isSlave)
    {

    }
    else*/
    {
        switch(radioState) {
            case RADIO_STATE_ACD: 
                if(radioRXTXFlag) {
                    radioRXTXFlag = false;
                    if(radio.getChannelScanResult() == RADIOLIB_CHANNEL_FREE)
                    {
                        radioState = RADIO_STATE_ACD_CLEAR;
                        startTransmission();
                    }
                    else
                    { 
                        ESP_LOGI("SCLink","Channel Busy...");
                        radioState = RADIO_STATE_ACD_WAIT;
                    }
                }
            break;
            case RADIO_STATE_ACD_WAIT: 
                if(millis() - acdTime > 12)
                {
                    scanChannel();
                }
            break;
        case RADIO_STATE_IDLE:
            // do nothing
                handlePendingTransmits();
            break;
        case RADIO_STATE_TX:
            if(radioRXTXFlag) {
                radioRXTXFlag = false;
                if(txList.front().requiresResp | _isSlave)
                {
                    ESP_LOGI("SCLink","Packet sent, wait for answer...");
                    waitForResponse();
                }
                else
                {
                    ESP_LOGI("SCLink","Packet sent!");
                    radioState = RADIO_STATE_IDLE;
                }
                txList.pop_front();
            }
            // we just sent a packet, wait for response
            break;
        case RADIO_STATE_RX:
            // we are waiting for a response, check if we received it
            if(radioRXTXFlag) {
                radioRXTXFlag = false;
                radio.readData((uint8_t *)&rxData, sizeof(protocol_t));
                waitForResponse();
                if(rxData.cmd.receiverId != id && rxData.cmd.receiverId != BOARDCAST) {
                    ESP_LOGI("SCLink","Packet received for %d, but our ID is %d, ignoring", rxData.cmd.receiverId, id);
                }
                else
                {
                    ESP_LOGI("SCLink","Packet received from %d, command: %d", rxData.cmd.senderId, rxData.cmd.commandId);
                    handleCommand(rxData.cmd.commandId, rxData.cmd.data, 4);
                    /*if(rxData.command == 1) {
                        transmit(rxData.senderId, rxData.command, rxData.data, 16); // echo back the same command and data
                    }*/
                }
            }
            else
            { 
                if(txList.size()>0)
                {
                    handlePendingTransmits();
                }
                else if(millis() - rxTime >= timeoutTime)
                {
                    rxTime = millis();
                    timeout();
                }
        }
    }
    }
}