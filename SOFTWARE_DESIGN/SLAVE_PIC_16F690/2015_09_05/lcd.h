#define CMD 0
#define DATA 1

#define	RS RA4
#define EN RA5
#define LCD	PORTC
#define	LCD_STROBE()	((EN = 1),(EN=0))
#define Lcd_Clear()		(Lcd_Write( 0, 0X01),DelayMs(2))

unsigned char asciitable[10]={'0','1','2','3','4','5','6','7','8','9'};

//write a byte to the LCD in 4 bit mode
void Lcd_Write( unsigned char rs, unsigned char c )
{
	RS =rs;
	DelayUs(40);
	LCD = (LCD & 0x0F) |  (c & 0xF0);
	LCD_STROBE();
	LCD = (LCD & 0x0F) | ( ( c << 4 ) & 0xF0 );
	LCD_STROBE();
	DelayUs(40);
}

//write one character to the LCD
void Lcd_Char(char c)
{
	Lcd_Write( DATA, c ); // write characters
}

//write a string of chars to the LCD
void Lcd_String(const char * s)
{
	while(*s)
	{
		switch (*s)
		{
	     	case '\c': 	Lcd_Write( CMD, 0x01 ); //clear display
					   	DelayMs(2);
	                   	break;
	     	case '\n': 	Lcd_Write( CMD, 0xC0 );  break; //newline
	     	default  : 	Lcd_Write( DATA, *s++);     // write characters
						break;
	   	}
	}
}

//Go to the specified position
void Lcd_Goto(unsigned char pos_x,unsigned char pos_y)
{
	pos_y--;
	if(pos_x==1){
		Lcd_Write( CMD, 0x80+pos_y );
	}else if(pos_x==2){
		Lcd_Write( CMD, 0xC0+pos_y );
	}
}
	
//initialise the LCD - put into 4 bit mode
void LCD_INIT()
{
	RS = 0;
	EN = 0;
	
	DelayMs(50);	// wait 15mSec after power applied,
	LCD= (LCD & 0x0F) | ( ( 0x3 << 4 ) & 0xF0 );	//Reset
	LCD_STROBE();
	DelayUs(200);	
	LCD = (LCD & 0x0F) | ( ( 0x2 << 4 ) & 0xF0 );	// Four bit mode
	LCD_STROBE();

	Lcd_Write( CMD, 0x28); // Set interface length
	Lcd_Write( CMD, 0x0C);  // Display On, Cursor Off, Cursor Blink Off
	Lcd_Clear();	 	// Clear screen
	Lcd_Write( CMD, 0x06);  // Set entry Mode
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
