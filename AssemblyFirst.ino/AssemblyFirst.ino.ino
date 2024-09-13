///////////////////////////////////////////////////////////////////////////////////
/// Here is my frist Arduino project that will involve writing assembly for the ///
/// ATmega328 microcontroller                                                   ///
///////////////////////////////////////////////////////////////////////////////////

//Here I will create the prototypes needed for the assembly program - external to C sketch
extern "C"{

  void start();         //Will contain the asm code needed for start()
  void led(byte);       //Will contain the asm code needed to blink the led
}

void setup() {
  // put your setup code here, to run once:
  start()

}

void loop() {
  // put your main code here, to run repeatedly:
  led(1);         //Call led 1
  delay(200);     //Delay
  led(0);         //Call led 0
  delay(200);     //Delay

}
