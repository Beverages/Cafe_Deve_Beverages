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
	DelayMs(500);
	PORTA=0X00;
	while(1)
	{
		if(!RB0 || !RB1 || !RB2 || !RB3 || !RB4 || !RB5 || !RB6 || !RB7 || !RC4 || !RC5)
		{
			TRACE("B");
			if(NORMAL_COFFEE_BUTTON==PRESSED)
			{
				MILK_VALVE=ON;
			}
			if(NORMAL_TEA_BUTTON==PRESSED)
			{
				MIXING_WATER_VALVE=ON;
			}
			if(LIGHT_COFFEE_BUTTON==PRESSED)
			{
				HOT_WATER_VALVE=ON;
			}
			if(LIGHT_TEA_BUTTON==PRESSED)
			{
				COFFEE_HOT_WATER_VALVE=ON;		
			}
			if(BLACK_COFFEE_BUTTON==PRESSED)
			{
				COFFEE_VALVE=ON;
			}
			if(BLACK_TEA_BUTTON==PRESSED)
			{
				TEA_HOT_WATER_VALVE=ON;
			}
			if(MILK_BUTTON==PRESSED)
			{
				TEA_VALVE=ON;
			}
			if(HOT_WATER_BUTTON==PRESSED)
			{
				MASTER_VALVE=ON;
			}
			if(EXTRA_BUTTON==PRESSED)
			{
				VIBER_MOTOR=ON;
			}
			if(MENU_BUTTON==PRESSED)
			{
				HEATER=ON;
			}
			DelayMs(100);
		}
	}
}
