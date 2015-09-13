/********************************************************************
|     Tutorial 18D - iBoard Tiny iCP21 (PIC16F690) LCD Demo         |
 ********************************************************************
 This program shows how to use the LCD port on a PIC16F690. 
 When program run, the LCD will display "Welcome To PICCIRCUIT.COM"                  
 This tutorial will work with the Hi-Tech C compilers.              
				                                                      
 iBoard connection as follows:                   				      
    PIN   			Module                         				  
 -------------------------------------------        
	RA2 			Switch                
	RC0           LCD RS input (register select)
    RC1           LCD RW bit (read/write)
	RC2           LCD EN bit (enable)
    RC3           LCD Backlight
  RC4-RC7         LCD data bits 4-7 (high nibble)	

Note: 
1. RA0 & RA1: ICSP (PGD & PGC)
2. RA3: MCLR
                                                                    
**********************************************************************
|              WWW.PICCIRCUIT.COM  (C) Copyright 2012 		         |   
**********************************************************************
| This source code may only be used with PICCIRCUIT products only.   | 
| If you distribute the source code, the source code must have this  | 
| entire copyright and disclaimer notice. No other use, reproduction | 
| or distribution is permitted without written permission.			 | 
**********************************************************************
|	Program: main.c												 	 |
|	Version: 1.0													 |
|-------------------------------------------------------------------*/
#define	XTAL_FREQ	8MHZ		/* Crystal frequency in MHz */
#include <pic.h>
#include "delay.h"
#include "lcd.h"

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
	TRISA = 0b00000111;	//set A3-A5 as output, A0-A2 as input
	TRISC = 0b00000000;	//set portc as output port
	WPUA2 = 1;			//A2 Pull-up enabled
	nRABPU = 0;			//Pull-up option is enabled

    PORTC = 0;			//Off portc
	DelayMs(100);		//Delay 100mSec
}

/**************************************************************
                   	Main Program
**************************************************************/
void main(void){

	System_init();
	lcd_init();
	lcd_goto(1,4);	// select first line
	lcd_puts("Welcome To");
	lcd_goto(2,2);	// Select second line
	lcd_puts("PICCIRCUIT.COM");
	
	while(1){
		if(RA2==1){			//RA2=5V? 
			LCD_BL=1;		//turn on backlight
		}else{
			LCD_BL=0;    	//turn off backlight
		}
	}
}
