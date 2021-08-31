/*
  This is a simple example show the Heltec.LoRa recived data in OLED.

  The onboard OLED display is SSD1306 driver and I2C interface. In order to make the
  OLED correctly operation, you should output a high-low-high(1-0-1) signal by soft-
  ware to OLED's reset pin, the low-level signal at least 5ms.

  OLED pins to ESP32 GPIOs via this connecthin:
  OLED_SDA -- GPIO4
  OLED_SCL -- GPIO15
  OLED_RST -- GPIO16
  
  by Aaron.Lee from HelTec AutoMation, ChengDu, China
  成都惠利特自动化科技有限公司
  www.heltec.cn
  
  this project also realess in GitHub:
  https://github.com/Heltec-Aaron-Lee/WiFi_Kit_series
*/
#include "heltec.h" 
#include "images.h"

#include <Wire.h>

#include <Adafruit_PWMServoDriver.h>


int B = 200;

//#define I2C_SDA_LED 12
//#define I2C_SCL_LED 13

//TwoWire I2CLED = TwoWire(1);

//Adafruit_PWMServoDriver pwm = Adafruit_PWMServoDriver(0x40, I2CLED);
Adafruit_PWMServoDriver pwm = Adafruit_PWMServoDriver(0x40);

bool test_led_state = true;


#define BAND    433E6  //you can set band here directly,e.g. 868E6,915E6
long rssi ;
String packSize = "--";
String packet ;
unsigned long ms;
unsigned long lms;
unsigned long diff;
bool clientFlag = false;



//////NEO PIXELS//////

#include <NeoPixelBus.h>

const uint16_t PixelCount = 98; // this example assumes 4 pixels, making it smaller will cause a failure
const uint8_t PixelPin = 12;  // make sure to set this to the correct pin, ignored for Esp8266

#define colorSaturation 128

// three element pixels, in different order and speeds
NeoPixelBus<NeoGrbFeature, Neo800KbpsMethod> strip(PixelCount, PixelPin);



//#include <Adafruit_NeoPixel.h>
// How many NeoPixels are attached to the Arduino?

#define NUMPIXELS_DISPLAY      98
#define NUMPIXELS_STATUS        3
#define NUMPIXELS_SEGMENT       7


// Initialize the neopixels
//Adafruit_NeoPixel sDisplay = Adafruit_NeoPixel(NUMPIXELS_DISPLAY, 1 2, NEO_GRB + NEO_KHZ800); //D2
//Adafruit_NeoPixel sStatus = Adafruit_NeoPixel(NUMPIXELS_STATUS, 33, NEO_GRB + NEO_KHZ800); //D6

//Anzeige Variablen ---> prüfen!!!!!!111
long int Clock = 88;
int color = 1;
/*
uint32_t off = sDisplay.Color(0,0,0);
uint32_t offStatus = sStatus.Color(0,0,0);
uint32_t rgbredStatus = sDisplay.Color(255,0,0);
uint32_t rgbred = sDisplay.Color(255,0,0);
uint32_t rgbviolet = sDisplay.Color(255,0,255);
uint32_t rgbgreen = sDisplay.Color(0,255,0);
uint32_t rgbyellow = sDisplay.Color(255,255,0);
uint32_t rgbblue = sDisplay.Color(0,0,255);
uint32_t rgbturquoise = sDisplay.Color(0,255,255);
uint32_t displaycolor = rgbred;
*/

RgbColor displaycolor;
RgbColor red(colorSaturation, 0, 0);
RgbColor violet(colorSaturation, 0, colorSaturation);
RgbColor green(0, colorSaturation, 0);
RgbColor yellow(colorSaturation, colorSaturation, 0);
RgbColor blue(0, 0, colorSaturation);
RgbColor turquoise(0, colorSaturation, colorSaturation);
RgbColor white(colorSaturation);
RgbColor black(0);


int SEG_LENGTH = 7;

// 1 Array mit 10 Daten Zeilen mit jeweils 7 Datensätzen Typ Bool (0 bis 9)
bool segs[10][7]={
 {true,true,true,true,true,true,false},               //0
 {true,false,false,false,false,true, false},          //1
 {true, true, false, true, true, false, true},        //2
 {true, true, false, false, true, true, true},        //3
 {true, false, true, false, false, true, true},       //4
 {false, true, true, false, true, true, true},        //5
 {false, true, true, true, true, true, true},         //6
 {true, true, false, false, false, true, false},      //7
 {true, true, true, true, true, true, true},          //8
 {true, true, true, false, true, true, true}          //9
};

// ANZEIGE //

void segment(int seg, bool on){
  //uint32_t  rgbcolor;
  //RgbColor rgbcolor;
  
  if(on) {
      for(int i=0;i<7;i++){
   //sDisplay.setPixelColor(i + 7 * seg, rgbcolor);
     strip.SetPixelColor(i + 7 * seg, displaycolor);
  
    //rgbcolor = displaycolor;
    //rgbcolor = displaycolor;
    }
    //pwm.setPWM(seg, 0, B); // an 10%
    pwm.setPWM(seg, 4096, 0); // an
  }
  else {
    //rgbcolor = black;
    //rgbcolor = off;
  
  for(int i=0;i<7;i++){
   //sDisplay.setPixelColor(i + 7 * seg, rgbcolor);
     strip.SetPixelColor(i + 7 * seg, black);
    }
    pwm.setPWM(seg, 0, 4096); // aus
  }
  //sDisplay.show();
}

void segment10(int seg, bool on){
  //uint32_t  rgbcolor;
  //RgbColor rgbcolor;
  
  if(on) {
      
      for(int i=0;i<7;i++){
    //sDisplay.setPixelColor(49 + i + 7 * seg, rgbcolor); //NUMPIXELS_SEGMENT * 7
      strip.SetPixelColor(49 + i + 7 * seg, displaycolor);
    }    
    //rgbcolor = displaycolor;
    //rgbcolor = displaycolor;
    //pwm.setPWM(seg + 7, 0, B); // an 10%
    pwm.setPWM(seg+7, 4096, 0); // an
  }
  else {
    //rgbcolor = black;
    //rgbcolor = off;

  for(int i=0;i<7;i++){
    //sDisplay.setPixelColor(49 + i + 7 * seg, rgbcolor); //NUMPIXELS_SEGMENT * 7
      strip.SetPixelColor(49 + i + 7 * seg, black);
    }
    pwm.setPWM(seg+7, 0, 4096); // aus
  }

//  sDisplay.show();
}

void displayClock(byte c)
{
  for(int i=0; i < 7; i++){
    segment(i, segs[c % 10][i]); //Einer-Stelle
  } 
  if(c > 9){
    for(int i=0; i < 7; i++){
      segment10(i, segs[c / 10][i]); //Zehner-Stelle
    }
  }
  else { 
    for(int i=49;i<98;i++){  //NUMPIXELS_SEGMENT * 7
      //sDisplay.setPixelColor(i, off);// Stellt den Farb Wert aller Zehner-Stellen LEDs auf schwarz
      strip.SetPixelColor(i, black);
    }
   // sDisplay.show(); // Stellt alle Zehner-Stellen LEDs auf den voreingestellten Wert schwarz um
      for(int i=0; i < 7; i++){
        pwm.setPWM(i+7, 0, 4096); // aus
  }
    
    }
  //sDisplay.show();
}

/*
void ledtest () {
  
  sDisplay.fill(off, 0, NUMPIXELS_DISPLAY );
  sDisplay.show();
  sStatus.fill(offStatus, 0, NUMPIXELS_STATUS );
  sStatus.show();
  Serial.println("LED AUS");  
  sDisplay.fill(displaycolor, 0, NUMPIXELS_DISPLAY );
  sDisplay.show();
  sStatus.fill(rgbredStatus, 1, NUMPIXELS_STATUS );
  sStatus.show();
  Serial.println("LED AN");
  delay(500);
  sDisplay.fill(off, 0, NUMPIXELS_DISPLAY );
  sDisplay.show();
  sStatus.fill(offStatus, 0, NUMPIXELS_STATUS );
  sStatus.show();
  Serial.println("LED AUS");
  delay(500);
  sDisplay.fill(displaycolor, 0, NUMPIXELS_DISPLAY );
  sDisplay.show();
  sStatus.fill(rgbredStatus, 1, NUMPIXELS_STATUS );
  sStatus.show();
  Serial.println("LED AN");
  delay(500);
  sDisplay.fill(off, 0, NUMPIXELS_DISPLAY );
  sDisplay.show();
  Serial.println("LED AUS");

}
*/
void showstatus () {

 /* // LoRa STATUS ANZEIGEN
  
  // print the received signal strength:
  
  Serial.println(" dBm");
  // map() - ordnet der Siganlstärke eine Farbwert (hue) zwischen rot und grün zu
  int hue = map(rssi, -90, 0, 0, 21845);
  Serial.print("HUE ");
  Serial.println(hue);
  // wandelt hue Farb Wert in RGB Farb Wert um  
  uint32_t rgbcolorwifi = sStatus.ColorHSV(hue);
  // zeigt den Signal Wert rot bis grün auf dem ersten Pixel des Status streifen an
  sStatus.setPixelColor(1, rgbcolorwifi);

  // CONTROLLER STATUS ANZEIGEN
  
  if (clientFlag) {  
    Serial.println("Shotclock Controller still Connected"); 
    sStatus.setPixelColor(2, sStatus.Color(0,255,0));
  }
  else {
    sStatus.setPixelColor(2, sStatus.Color(255,0,0));  
  }
  sStatus.show(); */
}



void logo(){
  Heltec.display->clear();
  Heltec.display->drawXbm(0,5,logo_width,logo_height,logo_bits);
  Heltec.display->display();
}

void showNewData(){
  
//OLED
  
  Heltec.display->clear();
  Heltec.display->setTextAlignment(TEXT_ALIGN_LEFT);
  Heltec.display->setFont(ArialMT_Plain_10);
  Heltec.display->drawString(0 , 15 , "Received "+ packSize + " bytes");
  Heltec.display->drawStringMaxWidth(0 , 26 , 128, packet);
  Heltec.display->drawString(0, 0, "RSSI --"+ rssi);  
  Heltec.display->display();
  Serial.print(packet);
  Serial.print(" -- ");
  Serial.print(rssi);
  Serial.print(" -- ");
  Serial.print(diff);
  Serial.println(" ms ");

  String ClockCommand = "T";
  String ColorCommand = "C";
  if (packet.startsWith(ClockCommand)){
    packet.remove(0, 1);
    Clock = packet.toInt();
    //Serial.println(Clock);              // Serial.println(receivedChars);      //and determining if it's what is expected
    displayClock(Clock);
    showstatus();
  }
  else if (packet.startsWith(ColorCommand)){
    packet.remove(0, 1);
    color = packet.toInt();
    Serial.println(color);              // Serial.println(receivedChars);      //and determining if it's what is expected     
    if (color == 1){
      displaycolor = red;}
    else if (color == 2){
      displaycolor = violet;}
    else if (color == 3){
      displaycolor = green;}
    else if (color == 4){
      displaycolor = yellow;}
    else if (color == 5){
      displaycolor = blue;}         
    else if (color == 6){
      displaycolor = turquoise;}  
           
    displayClock(Clock);
   // showstatus();        //... für ändern der Farbe ..muss erstmal am controller möglich gemacht werden
  }

   
}

void cbk(int packetSize) {
  packet ="";
  packSize = String(packetSize,DEC);
  for (int i = 0; i < packetSize; i++){ 
    packet += (char) LoRa.read(); }
  rssi = LoRa.packetRssi();
  //ssi = "RSSI " + String(LoRa.packetRssi(), DEC) ;
  ms = millis();
  diff = ms - lms;
  lms = ms;
  //Flag , wenn Diff > 3sec -> kein Income
  if (diff >= 3000) {
    clientFlag = false;
    }
  else {
    clientFlag = true;
    }
  showNewData();
 /* test_led_state = !test_led_state;
  if (test_led_state) {
    pwm.setPWM(0, 4096, 0); // an
  } else {
    pwm.setPWM(0, 0, 4096); // aus 
  }*/

  
  
}

void setup() {
   //WIFI Kit series V1 not support Vext control
  Heltec.begin(true /*DisplayEnable Enable*/, true /*Heltec.Heltec.Heltec.LoRa Disable*/, true /*Serial Enable*/, true /*PABOOST Enable*/, BAND /*long BAND*/);
 
  Heltec.display->init();
  Heltec.display->flipScreenVertically();  
  Heltec.display->setFont(ArialMT_Plain_10);
  logo();
  delay(1500);
  Heltec.display->clear();

  Heltec.display->drawString(0, 0, "Segment Test");

  Heltec.display->display();

  delay(1000);

    // this resets all the neopixels to an off state
    strip.Begin();
    strip.Show();
    displaycolor = red;

      //I2CLED.begin(I2C_SDA_LED, I2C_SCL_LED, 100000);
      pwm.begin();
      pwm.setPWMFreq(200);  // This is the maximum PWM frequency
    //  pwm.setPWM(0, 4096, 0); // an

   delay(2000); 
/*  
  sDisplay.begin();
  sStatus.begin();
  sDisplay.setBrightness(255);
  sStatus.setBrightness(255);
  ledtest();
  Serial.print("LED Test abgeschlossen");
*/  
  



  for(int i=0; i < 7; i++){

      pwm.setPWM(i, 0, 4096); // aus
      pwm.setPWM(i+7, 0, 4096); // aus
  }
  
  
  
  for(int i=0; i < 7; i++){

      //pwm.setPWM(i, 0, B); // an 10%
      pwm.setPWM(i, 4096, 0); // an
      //pwm.setPWM(i+7, 0, B); // an 10%
      pwm.setPWM(i+7, 4096, 0); // an
      Heltec.display->clear();
      Heltec.display->drawString(0, 0, String(i+1));
      Heltec.display->display();
      delay(2000);
  }
   


  Heltec.display->clear();
  
  Heltec.display->drawString(0, 0, "Heltec.LoRa Initial success!");
  Heltec.display->drawString(0, 10, "LED Test abgeschlossen");
  Heltec.display->drawString(0, 20, "Wait for incoming data...");
  Heltec.display->display();
  
  lms = millis();
  LoRa.setTxPower(20,RF_PACONFIG_PASELECT_PABOOST);
  LoRa.setSpreadingFactor(7); 

  showstatus();
  
  delay(1000);
  //LoRa.onReceive(cbk);
  LoRa.receive();
  
  
}

void loop() {
  int packetSize = LoRa.parsePacket();
  if (packetSize) { cbk(packetSize);  }
  strip.Show();
    
  //delay(10);
  
}