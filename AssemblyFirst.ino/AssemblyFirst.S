;-------------------------------------------------------------------------------
; Assembly file that I am creating to work with embeded systems on the Arduino
;-------------------------------------------------------------------------------

#define __SFR__OFFSET 0x00
#include "avr/io.h"

.global start
.global led

start: 
  SBI    DDRB, 4        ;Set pin PB5 (D12) as output
  RET                   ;Return 

led: 
  CPI,   R24, 0x00      ;Value passed by caller in R24 compared with 0
  BREQ   ledOFF         ;Jump branch if = to subroutine ledOFF
  SBI    PORTB, 4       ;Set pin D12 to high
  RET                   ;Return to loop function

ledOFF: 
  CBI,   PORTB, 4       ;Set D12 to low
  RET                   ;Return
