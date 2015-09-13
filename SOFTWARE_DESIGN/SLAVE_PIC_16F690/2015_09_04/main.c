
#define	XTAL_FREQ	8MHZ		/* Crystal frequency in MHz */
#include <htc.h>
#include "delay.h"
#include "lcd_combined.h"

// ============================================================
// Configuration Bits 
// ============================================================
__CONFIG(FOSC_INTRCIO & WDTE_OFF & CP_OFF & CPD_OFF & BOREN_OFF);

/**************************************************************
                    Initialise System
**************************************************************/
void System_init(void){

	IRCF0 = 1; 			//Internal Oscillator Frequency: 8MHz
	IRCF1 = 1; 
	IRCF2 = 1; 
	ANSEL = 0x00; 		//disable analog input 
	ANSELH = 0x00;
	TRISA = 0b00000000;	//set A3-A5 as output, A0-A2 as input
	TRISC = 0b00000000;	//set portc as output port
	WPUA2 = 1;			//A2 Pull-up enabled
	nRABPU = 0;			//Pull-up option is enabled

    PORTC = 0;			//Off portc
	DelayMs(100);		//Delay 100mSec
}

/**************************************************************
                   	Main Program
**************************************************************/
void main(void)
{
	System_init();
	Lcd_Init();
	Lcd_Char('A');
	Lcd_String("PICCIRCUIT.COM");
	
	while(1){

		}
}
