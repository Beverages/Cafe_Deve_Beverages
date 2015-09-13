
#define	XTAL_FREQ	8MHZ		/* Crystal frequency in MHz */
#define _XTAL_FREQ 8000000
#include <htc.h>
#include "delay.h"
#include "lcd.h"
#include "uart.h"

// ============================================================
// Configuration Bits 
// ============================================================
__CONFIG(FOSC_INTRCIO & WDTE_OFF & CP_OFF & CPD_OFF & BOREN_OFF);

/**************************************************************
                    Initialise System
**************************************************************/

void interrupt ISR(void)
{
	if(RCIF)  //If UART Rx Interrupt
	{
		if(OERR) //if over run error, then reset the receiver
		{
			CREN = 0;
			CREN = 1;
		}
		while(!RCIF);
		Lcd_Char(RCREG);
	}
}

void SYSTEM_INIT(void)
{
	IRCF2 = 1; 			//Internal Oscillator Frequency: 8MHz
	IRCF1 = 1; 
	IRCF0 = 1; 

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
	SYSTEM_INIT();
	LCD_INIT();
	UART_INIT(9600);
	DelayMs(1000);
	Lcd_String("PICCIRCUIT.COM");
	DelayMs(500);	
	Lcd_Clear();
	while(1)
	{
		SendStringSerially("Welcome");
		DelayMs(50);
	}
}
