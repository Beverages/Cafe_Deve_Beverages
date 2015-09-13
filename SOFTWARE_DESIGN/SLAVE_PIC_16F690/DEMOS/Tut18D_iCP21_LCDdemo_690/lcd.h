/*********************************************************************
|              WWW.PICCIRCUIT.COM  (C) Copyright 2009 		         |   
**********************************************************************
| This source code may only be used with PICCIRCUIT products only.   | 
| If you distribute the source code, the source code must have this  | 
| entire copyright and disclaimer notice. No other use, reproduction | 
| or distribution is permitted without written permission.			 | 
**********************************************************************
|	Program: lcd.h													 |
|	Version: 1.2													 |
|   Function: lcd_init() 	- LCD initialize						 |
|   		  lcd_goto(x,y)	- Go to the specified position x,y	 	 |
|			  lcd_clear() 	- Clear display 						 |
|   		  lcd_puts(str)	- Write a string of chars to the LCD	 |
|								\f Clear display 					 |
| 								\n next line 						 |
| 								\b Backspace						 |
|-------------------------------------------------------------------*/

#define	LCD_RS RC0
#define	LCD_RW RC1
#define LCD_EN RC2
#define LCD_BL RC3		//LCD Backlight
#define LCD_DATA	PORTC
#define	LCD_STROBE()	((LCD_EN = 1),(LCD_EN=0))

//write a byte to the LCD in 4 bit mode
void lcd_write(unsigned char rs_bit, unsigned char c){
	LCD_RS = rs_bit;
	DelayUs(40);
	LCD_DATA = (LCD_DATA & 0x0F) |  (c & 0xF0);
	LCD_STROBE();
	LCD_DATA = (LCD_DATA & 0x0F) | ( ( c << 4 ) & 0xF0 );
	LCD_STROBE();
	DelayUs(40);
}

//Clear and home the LCD
void lcd_clear(void){
	lcd_write(0,0x1);
	DelayMs(2);
}

//write a string of chars to the LCD
void lcd_puts(const char * s){
	while(*s){
		switch (*s) {
			case '\b':  lcd_write(0,0x10);  break; //backspace
	     	case '\f': 	lcd_write(0,0x1); //clear display
					   	DelayMs(2);
	                   	break;
	     	case '\n': 	lcd_write(0,0xC0);  break; //newline
	     	default  : 	lcd_write(1,*s);     // write characters
						break;
	   	}
		*s++;
	}
}

//write one character to the LCD
void lcd_putch(char c){
	lcd_write(1, c ); // write characters
}

//Go to the specified position
void lcd_goto(unsigned char pos_x,unsigned char pos_y){
	pos_y--;
	if(pos_x==1){
		lcd_write(0, 0x80+pos_y);
	}else if(pos_x==2){
		lcd_write(0, 0xC0+pos_y);
	}
}
	
//initialise the LCD - put into 4 bit mode
void lcd_init(){
	LCD_RS = 0;
	LCD_EN = 0;
	LCD_RW = 0;
	
	DelayMs(50);	// wait 15mSec after power applied,
	LCD_DATA = (LCD_DATA & 0x0F) | ( ( 0x3 << 4 ) & 0xF0 );	//Reset
	LCD_STROBE();
	DelayMs(5);
	LCD_STROBE();
	DelayUs(200);
	LCD_STROBE();
	DelayUs(200);	
	LCD_DATA = (LCD_DATA & 0x0F) | ( ( 0x2 << 4 ) & 0xF0 );	// Four bit mode
	LCD_STROBE();

	lcd_write(0, 0x28); // Set interface length
	lcd_write(0, 0xC);  // Display On, Cursor Off, Cursor Blink Off
	lcd_clear();	 	// Clear screen
	lcd_write(0, 0x6);  // Set entry Mode
}

