#include "Horn.h"

Horn::Horn(Adafruit_PWMServoDriver pwm, uint8_t hornPin)
    : pwm{pwm}, hornPin{hornPin} {}

Horn::~Horn(){}

void Horn::handle() {
  if(honkIsRequested() && !isHonking) {
    startHonking();
  } else if (isHonking && isHonkTimeOver()) {
    stopHonking();
  }
}

void Horn::requestHonk(uint8_t honkVolumeLevel) {
  if (honkVolumeLevel > 5) {
    honkVolumeLevel = 5; // Max volume level is 5
  }
  if (honkVolumeLevel < 0) {
    honkVolumeLevel = 0; // Min volume level is 0
  }
  this->honkVolumeLevel = honkVolumeLevel;
  isHonkRequest = true;
}

bool Horn::honkIsRequested(){
  if ( isHonkRequest ){
    isHonkRequest = false;
    return true;
  }
  return false;
}

bool Horn::isHonkTimeOver() {
  if (millis() - honkStartTime > HONK_DURATION) {
    return true;
  }
  return false;
}

void Horn::startHonking() {
  Serial.println("Starting honk");
  pwm.setPWM(hornPin, volumeMap[this->honkVolumeLevel][0], volumeMap[this->honkVolumeLevel][1]);
  isHonking = true;
  honkStartTime = millis();
}

void Horn::stopHonking() {
  Serial.println("Stopping Honk");
  uint8_t state = pwm.setPWM(hornPin, 0, 4096);
  if (state == 0) { // Horn aus
    isHonking = false;
  }; 
} 