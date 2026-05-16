#include "ShotClockUI.h"

/// @brief Initializes the shot clock UI
/// @param flipScreen Whether to flip the screen
void ShotClockUI::begin(bool flipScreen) {
    pinMode(resetPin, OUTPUT);
    digitalWrite(resetPin, HIGH);
    pinMode(enablePin, OUTPUT);
    digitalWrite(enablePin, LOW);

    if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)){
        ESP_LOGE("SSD1306", "init failed"); 
    }
    if(flipScreen)
    {
        display.setRotation(2);  
    }
    display.clearDisplay();
    display.setTextColor(SSD1306_WHITE);
    display.drawBitmap(29, 0, osc_logo.data, osc_logo.width, osc_logo.height, SSD1306_WHITE);
    display.display();
    display.setFont(NULL);
    display.setTextSize(1);

    #if CORE_DEBUG_LEVEL == 5
        //updateTelemetryInfo(0, 1, 4);
        //updateTelemetryInfo(1, 4, 1);
        //updateTelemetryInfo(2, 3, 4);
    #endif
}

/// @brief Shows the honk display
/// @param channel The channel to display
void ShotClockUI::showHonk(uint8_t channel) {
    display.clearDisplay();
    display.drawFastHLine(0, 48, 128, SSD1306_WHITE);
    display.setFont(NULL);
    display.setTextSize(5);
    display.setCursor(7, 10);
    display.printf("HONK");
    display.setTextSize(1);
    display.setCursor(locChannelX, locChannelY);
    display.printf("CH%d", channel);
    display.display();
    delay(500);
}

/// @brief Sets the data display
/// @param timeToDisplay The time to display
/// @param channel The channel to display
/// @param running Whether the clock is running
void ShotClockUI::setDataDisplay(uint16_t timeToDisplay, int channel, bool running) 
{
  ESP_LOGI("setDataDisplay","in func");

    display.clearDisplay();

    if(!running)
    {
        display.fillRect(12, 16, 3, 16, SSD1306_WHITE);
        display.fillRect(18, 16, 3, 16, SSD1306_WHITE);
    }
    display.drawFastHLine(0, 48, 128, SSD1306_WHITE);
    display.setFont(&DSEG7_Classic_Mini_Regular_40);
    display.setCursor(32, 40);
    display.printf("%02d", timeToDisplay);

    display.setFont(NULL);
    display.setCursor(locChannelX, locChannelY);
    display.printf("CH%d",channel);

    drawBatteryLevel(locBatteryX, locBatteryY, 3);

    printTelemetryInfo(telemetryId);

    display.display();
}

/// @brief Handles the UI updates, such as cycling through telemetry info
void ShotClockUI::handle() {
  // nothing to do for now
  static uint32_t lastTime = 0;
  if(millis() - lastTime > 2000) {
    lastTime = millis();
    if(!telemetryList.empty())
    {
        telemetryId = (telemetryId + 1) % telemetryList.size()+1;
    }
  }
}

/// @brief Updates the telemetry information for a specific ID, if the ID does not exist it will be created in the list
/// @param id The telemetry ID to update
/// @param batteryLevel The battery level to set
/// @param signalStrength The signal strength to set
void ShotClockUI::updateTelemetryInfo(uint8_t id, uint8_t batteryLevel, uint8_t signalStrength)
{
    // Implementation for updating telemetry info
    for(auto& telemetry : telemetryList) {
        if(telemetry.id == id) {
            telemetry.batteryLevel = batteryLevel;
            telemetry.signalStrength = signalStrength;
            return;
        }
    }
    telemetryList.push_back({id, batteryLevel, signalStrength});
}

/// @brief Prints the telemetry information for a specific ID
/// @param id The telemetry ID to print
void ShotClockUI::printTelemetryInfo(uint8_t id)
{
    ESP_LOGV("DISPLAY","Print Telemetry; id: %d", id);
    for(const auto& telemetry : telemetryList) {
        if(telemetry.id == id) {
            display.setFont(NULL);
            display.setCursor(locTelemetryX, locTelemetryY + 2);
            display.printf("ID:%02d", telemetry.id);
            drawBatteryLevel(locTelemetryX + 32, locTelemetryY, telemetry.batteryLevel);
            drawSignalStrength(locTelemetryX + 42, locTelemetryY, telemetry.signalStrength);
            break;
        }
    }
}

/// @brief Draws the battery level indicator
/// @param x The x-coordinate of the battery indicator
/// @param y The y-coordinate of the battery indicator
/// @param level The battery level to display
void ShotClockUI::drawBatteryLevel(int16_t x, int16_t y, uint8_t level)
{
  level = constrain(level, 0, 8);
  
  display.drawRect(x, y+1, 6, 10, SSD1306_WHITE); // battery outline
  display.fillRect(x+1, y, 4, 1, SSD1306_WHITE); // battery positive terminal
  display.fillRect(x+1, y + 10 - level, 4, level, SSD1306_WHITE); // battery level
}

/// @brief Draws the signal strength indicator
/// @param x The x-coordinate of the signal strength indicator
/// @param y The y-coordinate of the signal strength indicator
/// @param strength The signal strength to display
void ShotClockUI::drawSignalStrength(int16_t x, int16_t y, uint8_t strength)
{
  strength = constrain(strength, 0, 4);
  
  for (int i = 0; i < strength; i++) {
    display.fillRect(x + i*4, y - i*2 + 4*2 , 3, (i+1)*2, SSD1306_WHITE); // signal bars
  }
}