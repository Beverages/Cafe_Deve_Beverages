void Display_In_Lcd(unsigned char sel)
{
	switch(sel)
	{
		case 0x01: 	Lcd_String("  CAFE DE VIE",1,0);
					Lcd_String("   BEVERAGES",0,1);
					break;
		case 0x02:	Lcd_String(" NORMAL COFFEE",1,0);
					break;
		case 0x03:	Lcd_String("   NORMAL TEA",1,0);
					break;
		case 0x04:	Lcd_String("  LIGHT COFFEE",1,0);
					break;
		case 0x05:	Lcd_String("   LIGHT TEA",1,0);
					break;
		case 0x06:	Lcd_String("  BLACK COFFEE",1,0);
					break;
		case 0x07:	Lcd_String("   BLACK TEA",1,0);
					break;
		case 0x08:	Lcd_String("      MILK",1,0);
					break;
		case 0x09:	Lcd_String("   HOT WATER",1,0);
					break;
		case 0x0A:	Lcd_String("      EXTRA",1,0);
					break;
		case 0x0B: 	Lcd_String("CONTINUE",1,0);
					Lcd_String("PREPARATION",0,1);
					break;
		case 0x0C: 	Lcd_Write(CMD, 0x80);
					Lcd_String("DICATION",0,0);
					break;
		case 0x0D: 	Lcd_Write(CMD, 0x80);
					Lcd_String("SELECTION",0,0);
					Lcd_Write(DATA, ':');
					Lcd_Write(CMD, 0x8C);
					break;
	}
}