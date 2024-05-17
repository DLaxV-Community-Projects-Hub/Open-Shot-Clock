#include "Horn.h"

Horn::Horn(Adafruit_PWMServoDriver pwm)
    : pwm{pwm} {};

Horn::~Horn(){}

void Horn::handle() {
  if(honkIsRequested() && !isHonking) {
    startHonking();
  } else if (isHonking && isHonkTimeOver()) {
    stopHonking();
  }
}

void Horn::requestHonk() {
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
  pwm.setPWM(7, 4096, 0); // Horn an
  isHonking = true;
  honkStartTime = millis();
}

void Horn::stopHonking() {
  Serial.println("Stopping Honk");
  uint8_t state = pwm.setPWM(7, 0, 4096);
  if (state == 0) { // Horn aus
    isHonking = false;
  }; 
} 