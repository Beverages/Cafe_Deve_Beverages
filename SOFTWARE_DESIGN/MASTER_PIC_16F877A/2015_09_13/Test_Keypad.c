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
	TRACE("SYSTEM STARTED");
	DelayMs(2000);

	while(1)
	{
		if(!RB0 || !RB1 || !RB2 || !RB3 || !RB4 || !RB5 || !RB6 || !RB7 || !RC4 || !RC5)
		{
			RA0=RA1=RA2=RA3=RA4=RA5=RC0=RC1=RC2=RC3=0;
			TRACE("KEY PRESSED");
			if(RB0==0)
			{
				Lcd_Clear;
				Lcd_String("key1");
			}
			if(RB1==0)
			{
				Lcd_Clear;
				Lcd_String("key2");
			}
			if(RB2==0)
			{
				Lcd_Clear;
				Lcd_String("key3");
			}
			if(RB3==0)
			{
				Lcd_Clear;
				Lcd_String("key4");
			}
			if(RB4==0)
			{
				Lcd_Clear;
				Lcd_String("key5");
			}
			if(RB5==0)
			{
				Lcd_Clear;
				Lcd_String("key6");
			}
			if(RB6==0)
			{
				Lcd_Clear;
				Lcd_String("key7");
			}
			if(RB7==0)
			{
				Lcd_Clear;
				Lcd_String("key8");
			}
			if(RC4==0)
			{
				Lcd_Clear;
				Lcd_String("key9");
			}
			if(RC5==0)
			{
				Lcd_Clear;
				Lcd_String("key10");
			}
		}
	}
}
