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

void onthevalve()
{
	switch(_ON)
	{
		case _Milk_Valve:
						MILK_VALVE=ON;
						break;
		case _Mixing_Hot_Water:
						MIXING_WATER_VALVE=ON;
						break;
		case _Hot_Water_Valve:
						HOT_WATER_VALVE=ON;
						break;
		case _Coffee_Hot_Water_Valve:
						COFFEE_HOT_WATER_VALVE=ON;
						break;
		case _Coffee_Valve:
						COFFEE_VALVE=ON;
						break;
		case _Tea_Hot_Water_Valve:
						TEA_HOT_WATER_VALVE=ON;
						break;
		case _Tea_Valve:
						TEA_VALVE=ON;
						break;
		case _Master_Valve:
						MASTER_VALVE=ON;
						break;
		case _Viber_Motor:
						VIBER_MOTOR=ON;
						break;
		case _Heater:
						HEATER=ON;
						break;
	}
}
void offthevalve()
{
	switch(_OFF)
	{
		TRACE(asciitable[_OFF]);
		case _Milk_Valve:
						MILK_VALVE=OFF;
						break;
		case _Mixing_Hot_Water:
						MIXING_WATER_VALVE=OFF;
						break;
		case _Hot_Water_Valve:
						HOT_WATER_VALVE=OFF;
						break;
		case _Coffee_Hot_Water_Valve:
						COFFEE_HOT_WATER_VALVE=OFF;
						break;
		case _Coffee_Valve:
						COFFEE_VALVE=OFF;
						break;
		case _Tea_Hot_Water_Valve:
						TEA_HOT_WATER_VALVE=OFF;
						break;
		case _Tea_Valve:
						TEA_VALVE=OFF;
						break;
		case _Master_Valve:
						MASTER_VALVE=OFF;
						break;
		case _Viber_Motor:
						VIBER_MOTOR=OFF;
						break;
		case _Heater:
						HEATER=OFF;
						break;
	}
}

void control_valve()
{
	onthevalve();
	TRACENUM(asciitable[_ON]);
	DelayMs(2000);
	offthevalve();
}

void key_press()
{
	if(!RB0 || !RB1 || !RB2 || !RB3 || !RB4 || !RB5 || !RB6 || !RB7 || !RC4 || !RC5)
	{
		if(NORMAL_COFFEE_BUTTON==PRESSED)
		{
			_ON=_Milk_Valve;
			_OFF=_Milk_Valve;
			control_valve();
		}
		if(NORMAL_TEA_BUTTON==PRESSED)
		{
			_ON=_Mixing_Hot_Water;
			_OFF=_Mixing_Hot_Water;
		}
		if(LIGHT_COFFEE_BUTTON==PRESSED)
		{
			_ON=_Hot_Water_Valve;
			_OFF=_Hot_Water_Valve;
		}
		if(LIGHT_TEA_BUTTON==PRESSED)
		{
			_ON=_Coffee_Hot_Water_Valve;
			_OFF=_Coffee_Hot_Water_Valve;
		}
		if(BLACK_COFFEE_BUTTON==PRESSED)
		{
			_ON=_Coffee_Valve;
			_OFF=_Coffee_Valve;
		}
		if(BLACK_TEA_BUTTON==PRESSED)
		{
			_ON=_Tea_Hot_Water_Valve;
			_OFF=_Tea_Hot_Water_Valve;
		}
		if(MILK_BUTTON==PRESSED)
		{
			_ON=_Tea_Valve;
			_OFF=_Tea_Valve;
		}
		if(HOT_WATER_BUTTON==PRESSED)
		{
			_ON=_Master_Valve;
			_OFF=_Master_Valve;
		}
		if(EXTRA_BUTTON==PRESSED)
		{
			_ON=_Viber_Motor;
			_OFF=_Viber_Motor;
		}
		if(MENU_BUTTON==PRESSED)
		{
			_ON=_Heater;
			_OFF=_Heater;
		}
		DelayMs(250);
	}
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
		key_press();
	}
}
