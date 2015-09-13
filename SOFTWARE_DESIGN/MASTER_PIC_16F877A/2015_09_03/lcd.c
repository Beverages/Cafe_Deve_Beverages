/*
//ORIGINAL LCD.C FILE CONTENT
#ifndef _header
	#include<htc.h>
	#define _XTAL_FREQ 20000000   //MHz
#endif
#include "lcd.h"
#include "delay.h"

void Lcd_Init()
{
	DelayMs(1);
	Lcd_Cmd(0x28);
	Lcd_Cmd(0x0E);
	Lcd_Cmd(0x06);
	Lcd_Cmd(0x0C);
	Lcd_Cmd(0x01);
}

void Lcd_Cmd(unsigned char s)
{
	RS=0;
	LCD = (LCD & 0X0F) | (s & 0XF0);
	EN=1;
	EN=0;
	LCD=(LCD & 0X0F) | (s << 4);
	EN=1;
	EN=0;
	DelayMs(5);
}

void Lcd_Data(unsigned char x)
{
	RS=1;
	LCD = (LCD & 0X0F) | (x & 0XF0);
	EN=1;
	EN=0;
	LCD=(LCD & 0X0F) | (x << 4);
	EN=1;
	EN=0;
	DelayMs(10);
}

void Lcd_String(const unsigned char* st, char clear, char second_line)
{
	if(clear==1)
		Lcd_Clear;
	if(second_line==1)
		Lcd_Secline;
	while(*st)
	{
		Lcd_Data(*st++);
	}
}

void Num_Disp(unsigned int dat,unsigned char digit,unsigned char dot)
{
	unsigned int temp=10,i;
	for(i=digit;i>2;i--)
	{
		temp=temp*10;
	}
	for(i=digit;i>2;i--,digit--)
	{
		Lcd_Data(asciitable[dat/temp]);
		dat=dat%temp;
		temp=temp/10;
	}
	if(digit<3)
	{
		Lcd_Data(asciitable[dat/temp]);
		dat=dat%temp;
		if(dot==1)
		{
			Lcd_Data('.');
		}
		Lcd_Data(asciitable[dat]);
	}
}
*/


//proteus design suitable code
#ifndef _header
	#include<htc.h>
	#define _XTAL_FREQ 20000000   //MHz
#endif
#include "lcd.h"
#include "delay.h"

void Lcd_Init()
{
	Lcd_Cmd(0x28);
	DelayMs(2);
	Lcd_Cmd(0x0E);
	DelayMs(2);
	Lcd_Cmd(0x06);
	DelayMs(2);
	Lcd_Cmd(0x01);
	DelayMs(2);
	Lcd_Cmd(0x0C);
	DelayMs(2);
}

void Lcd_Cmd(unsigned char s)
{
	LCD=s & 0XF0;
	RS=0;
	EN=1;
	DelayMs(5);
	EN=0;
	DelayMs(5);
	LCD=s << 4;
	RS=0;
	EN=1;
	DelayMs(5);
	EN=0;
}

void Lcd_Data(unsigned char x)
{
	LCD=x & 0XF0;
	RS=1;
	EN=1;
	DelayMs(5);
	EN=0;
	DelayMs(5);
	LCD=x << 4;
	RS=1;
	EN=1;
	DelayMs(5);
	EN=0;
}

void Lcd_String(const unsigned char* st, char clear, char second_line)
{
	if(clear==1)
		Lcd_Clear;
	if(second_line==1)
		Lcd_Secline;
	while(*st)
	{
		Lcd_Data(*st++);
	}
}

void Num_Disp(unsigned int dat,unsigned char digit,unsigned char dot)
{
	unsigned int temp=10,i;
	for(i=digit;i>2;i--)
	{
		temp=temp*10;
	}
	for(i=digit;i>2;i--,digit--)
	{
		Lcd_Data(asciitable[dat/temp]);
		dat=dat%temp;
		temp=temp/10;
	}
	if(digit<3)
	{
		Lcd_Data(asciitable[dat/temp]);
		dat=dat%temp;
		if(dot==1)
		{
			Lcd_Data('.');
		}
		Lcd_Data(asciitable[dat]);
	}
}
