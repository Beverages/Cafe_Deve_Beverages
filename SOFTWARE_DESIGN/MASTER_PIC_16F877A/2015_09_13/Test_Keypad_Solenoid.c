#include "includes.h"
#include "delay.h"
#include "lcd.h"
#include "myitoa.h"
#include "uart.h"
//#include "adc.h"
#include<stdlib.h>
#include<string.h>

/* CONFIGURATION */

__CONFIG( DEBUG_OFF & LVP_OFF & BOREN_OFF & CPD_OFF & CP_OFF & PWRTE_ON & WDTE_OFF & FOSC_HS & WRT_OFF);

/* CONFIGURATION */

void Port_Init()	//PORTS INITIALIZATION
{
	ADCON1 = 0X07;
	CMCON = 0X07;

	TRISA = 0x00;
	TRISB = 0XFF;
	TRISD = 0x00;
	TRISC = 0X30;
	TRISE = 0X07;

	PORTA = 0X00;
	PORTB = 0XFF;
	PORTC = 0X30;
	PORTD = 0XFD;
	PORTE = 0X00;
}


void main()
{
	/*INITIALIZATION*/

	Port_Init();
	Lcd_Init();
	Uart_Init(9600);

	/*INITIALIZATION*/

	Lcd_String("CAFE DE VIE");
	Lcd_Cmd(0xC0);
	Lcd_String("BEVERAGES");
	TRACE("STARTING INFO");
	PORTA=0XFF;
	DelayMs(2000);
	PORTA=0X00;
	while(1)
	{
		if(!RB0 || !RB1 || !RB2 || !RB3 || !RB4 || !RB5 || !RB6 || !RB7 || !RC4 || !RC5)
		{
			TRACE("KEY PRESSED");
			if(RB0==0)
			{
				RA0=1;
			}
			if(RB1==0)
			{
				RA1=1;
			}
			if(RB2==0)
			{
				RA2=1;
			}
			if(RB3==0)
			{
				RA3=1;		
			}
			if(RB4==0)
			{
				RA4=1;
			}
			if(RB5==0)
			{
				RA5=1;
			}
			if(RB6==0)
			{
				RC0=1;
			}
			if(RB7==0)
			{
				RC1=1;
			}
			if(RC4==0)
			{
				RC2=1;
			}
			if(RC5==0)
			{
				RC3=1;
			}
		}
	}
}
