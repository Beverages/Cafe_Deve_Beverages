#include "includes.h"
#include "Beverage_services.h"
#include "lcd.h"
#include "delay.h"
#include "myitoa.h"
#include "uart.h"

void Print_Name()
{
	SendByteSerially(0x01);
}

void Print_Menu()
{
	switch(_PRESSED)
	{
		case _NORMAL_COFFEE_BUTTON:	SendByteSerially(0x02);
									break;
		case _NORMAL_TEA_BUTTON:	SendByteSerially(0x03);
									break;
		case _LIGHT_COFFEE_BUTTON:	SendByteSerially(0x04);
									break;
		case _LIGHT_TEA_BUTTON:		SendByteSerially(0x05);
									break;
		case _BLACK_COFFEE_BUTTON:	SendByteSerially(0x06);
									break;
		case _BLACK_TEA_BUTTON:		SendByteSerially(0x07);
									break;
		case _MILK_BUTTON:			SendByteSerially(0x08);
									break;
		case _HOT_WATER_BUTTON:		SendByteSerially(0x09);
									break;
		case _EXTRA_BUTTON:			SendByteSerially(0x0A);
									break;
	}
}

void Inidcate_Buzzer()
{
	BUZZER=ON;
	DelayMs(100);
	BUZZER=OFF;
}

void Mode_Init()
{
	Enable_Normal_Mode=FALSE;
	Enable_Config_Mode=FALSE;
	Enable_Password=FALSE;
	Enable_Valves=FALSE;
	Enable_Selection=FALSE;
	Enable_Coffee_Dication_Time=FALSE;
	Enable_Tea_Dication_Time=FALSE;
	Enable_Dication_Delay=FALSE;
	Enable_Hot_Water_Time=FALSE;
	Enable_Temperature=FALSE;
	Enable_Cup_Count=FALSE;
	Enable_Count_Reset=FALSE;
	Enable_Shortcut_Mode=FALSE;
	
	for(unsigned char option=0;option<9;option++)
	{
		MENU[option]=Read_ValveFrom_Memory(option);
	}
	if(eeprom_read(145)>1 || eeprom_read(146)>1)
	{
		SendByteSerially(0x0B);
		while(1)
		{
			if(MENU_BUTTON==PRESSED)
			{
				eeprom_write(145,eeprom_read(145)-1);
				eeprom_write(146,eeprom_read(146)-1);
				SendByteSerially(0x0C);
				if(eeprom_read(145)>1 && eeprom_read(145)<10)
					Enable_Coffee_Hot_Water_Valve = TRUE;
				if(eeprom_read(146)>1 && eeprom_read(146)<10)
					Enable_Tea_Hot_Water_Valve = TRUE;
				call_control_valve();
				_clear=1;
			}
			if(EXTRA_BUTTON==PRESSED || _clear==1)
			{
				_clear=0;
				eeprom_write(145,0);
				eeprom_write(146,0);
				_DISABLE_MODE=_Shortcut_Mode;
				_ENABLE_MODE=_Normal_Mode;
				break;
			}
		}
	}

}

void key_press()
{
	if(!RB0 || !RB1 || !RB2 || !RB3 || !RB4 || !RB5 || !RB6 || !RB7 || !RC4 || !RC5)
	{
		if(NORMAL_COFFEE_BUTTON==PRESSED)
		{
			_PRESSED=_NORMAL_COFFEE_BUTTON;
		}
		if(NORMAL_TEA_BUTTON==PRESSED)
		{
			_PRESSED=_NORMAL_TEA_BUTTON;
		}
		if(LIGHT_COFFEE_BUTTON==PRESSED)
		{
			_PRESSED=_LIGHT_COFFEE_BUTTON;
		}
		if(LIGHT_TEA_BUTTON==PRESSED)
		{
			_PRESSED=_LIGHT_TEA_BUTTON;
		}
		if(BLACK_COFFEE_BUTTON==PRESSED)
		{
			_PRESSED=_BLACK_COFFEE_BUTTON;
		}
		if(BLACK_TEA_BUTTON==PRESSED)
		{
			_PRESSED=_BLACK_TEA_BUTTON;
		}
		if(MILK_BUTTON==PRESSED)
		{
			_PRESSED=_MILK_BUTTON;
		}
		if(HOT_WATER_BUTTON==PRESSED)
		{
			_PRESSED=_HOT_WATER_BUTTON;
		}
		if(EXTRA_BUTTON==PRESSED)
		{
			_PRESSED=_EXTRA_BUTTON;
		}
		if(MENU_BUTTON==PRESSED)
		{
			_PRESSED=_MENU_BUTTON;
			if(_SHORTCUT==ENABLE)
				_SHORTCUT=DISABLE;
			else
				_SHORTCUT=ENABLE;
		}
	}
	if(_PRESSED!=_MENU_BUTTON)
	{
		_CHOICE_SELECTED=_PRESSED;
		_SHORTCUT_PRESSED=_PRESSED;
	}
}

void enable_valves()
{
	if(Enable_Normal_Mode && (_PRESSED!=_MENU_BUTTON))
	{
		Print_Menu();
		if(_PRESSED==_HOT_WATER_BUTTON)
				Enable_Hot_Water_Valve=TRUE;
		
		if(_PRESSED)
		{
			if(MENU[_PRESSED-1].COFFEE_DICATION)
			{
				Enable_Coffee_Valve = TRUE;
			}
			if(MENU[_PRESSED-1].TEA_DICATION)
			{
				Enable_Tea_Valve = TRUE;
			}
			if(MENU[_PRESSED-1].MIXING_HOT_WATER)
			{
				Enable_Mixing_Hot_Water_Valve = TRUE;
			}
			if(MENU[_PRESSED-1].MILK)
			{
				Enable_Milk_Forward = TRUE;
				Enable_Milk_Reverse = TRUE;
			}
			if(MENU[_PRESSED-1].VIBR_MOTOR)
			{
				Enable_Viber_Motor = TRUE;
			}

			Inidcate_Buzzer();
			if(_PRESSED!=_EXTRA_BUTTON)
			{
				count_write(126,127,eeprom_read(126)+1);
				count_write(126+(_PRESSED*2),127+(_PRESSED*2),eeprom_read(126+(_PRESSED*2))+1);
			}
			call_control_valve();
			Print_Name();
		}
	}

	if(Enable_Config_Mode || Enable_Normal_Mode || Enable_Shortcut_Mode)
	{
		switch(_PRESSED)
		{
			case _MENU_BUTTON:			while(MENU_BUTTON==PRESSED && (Enable_Normal_Mode || Enable_Config_Mode))
										{
											i++;
											if(i==39999)
											{
												j++;
												i=0;
												key_press();
											}
											if(j==5)
											{
												Enable_Normal_Mode=FALSE;
												Enable_Config_Mode=FALSE;
												_DISABLE_MODE=_Normal_Mode;
												_ENABLE_MODE=_Password;
												j=0;
												Enable_Config_Mode=FALSE;
												_SHORTCUT=DISABLE;
											}
										}
										if(_SHORTCUT==ENABLE && Enable_Shortcut_Mode==FALSE)
										{
											Enable_Normal_Mode=FALSE;
											Enable_Config_Mode=FALSE;
											_ENABLE_MODE=_Shortcut_Mode;
											_PROCESS=_Countdisplay;
											i=0;j=0;
										}	
										if(_SHORTCUT==DISABLE && Enable_Shortcut_Mode==TRUE)
										{
											_OFF=_Mixing_Hot_Water_Valve;
											offthevalve();
											_OFF=_Viber_Motor;
											offthevalve();
											_DISABLE_MODE=_Shortcut_Mode;
											_ENABLE_MODE=_Normal_Mode;
											_PROCESS=0;
											_PREVIOUS_PROCESS=0;
										}
										break;
		}
	}
	if(Enable_Password)
	{
		switch(_PRESSED)
		{
			case _NORMAL_COFFEE_BUTTON:	
										for(unsigned int i=0;i<256;i++)
										{
											eeprom_write(i,0x00);
										}
										break;
			case _MILK_BUTTON:			if(password>0)
										{
											password--;
										}
										break;
			case _HOT_WATER_BUTTON:		password++;
										break;
			case _MENU_BUTTON:			if(password==(DISABLE+2))
										{
											password=0;
											_DISABLE_MODE=_Password;
											_ENABLE_MODE=_Valves;
										}	
										break;
		}
		if(_PRESSED==_MILK_BUTTON || _PRESSED==_HOT_WATER_BUTTON)
		{
			Lcd_Cmd(0x8C);
			Num_Disp(password,4,0);
			DelayMs(150);
		}
	}
	if(Enable_Valves)
	{
		switch(_PRESSED)
		{
			case _NORMAL_COFFEE_BUTTON:	MENU[Next].COFFEE_DICATION=~MENU[Next].COFFEE_DICATION;
										break;
			case _NORMAL_TEA_BUTTON:	MENU[Next].TEA_DICATION=~MENU[Next].TEA_DICATION;
										break;
			case _LIGHT_COFFEE_BUTTON:	MENU[Next].MIXING_HOT_WATER=~MENU[Next].MIXING_HOT_WATER;
										break;
			case _LIGHT_TEA_BUTTON:		MENU[Next].MILK=~MENU[Next].MILK;
										break;
			case _BLACK_COFFEE_BUTTON:	MENU[Next].VIBR_MOTOR=~MENU[Next].VIBR_MOTOR;
										break;
			case _MILK_BUTTON:			if(Next>0)
										{
											Next--;
										}										
										break;
			case _HOT_WATER_BUTTON:		if(Next<7)
										{
											Next++;
										}
										break;
			case _MENU_BUTTON:			_DISABLE_MODE=_Valves;
										_ENABLE_MODE=_Selection;
										Next=0;
										break;
		}
		if(_PRESSED==_MILK_BUTTON || _PRESSED==_HOT_WATER_BUTTON)
		{
			Lcd_Cmd(0x86);
			myitoa(Next+1,buff);
			Lcd_String(buff,0,0);
		}
		if(_PRESSED && (_PRESSED!=_MENU_BUTTON))
		{
			Write_ValveIn_Memory(MENU[Next],Next);
			print_yes_no(Next);
			DelayMs(50);
		}
	}
	if(Enable_Selection)
	{
		switch(_PRESSED)
		{
			case _NORMAL_COFFEE_BUTTON:	if(Selection_Next>0)
										{
											Selection_Next--;
											Next=0;
										}
										break;
			case _NORMAL_TEA_BUTTON:	if(Selection_Next<7)
										{
											Selection_Next++;
											Next=0;
										}
										break;
			case _LIGHT_COFFEE_BUTTON:	if(Next>0)
										{
											Next--;
										}
										break;
			case _LIGHT_TEA_BUTTON:		if(Next<9)
										{
											Next++;
										}
										break;
			case _BLACK_COFFEE_BUTTON:	
										break;
			case _BLACK_TEA_BUTTON:		_Demo=ENABLE;
										break;
			case _MILK_BUTTON:			if(time>0)
										{
											time--;
										}
										break;
			case _HOT_WATER_BUTTON:		time++;										
										break;
			case _EXTRA_BUTTON:			_DISABLE_MODE=_Selection;
										_ENABLE_MODE=_Valves;
										Selection_Next=0;
										Next=0;
										break;
			case _MENU_BUTTON:			_DISABLE_MODE=_Selection;
										_ENABLE_MODE=_Coffee_Dication_Time;
										Selection_Next=0;
										break;
		}
		if(_PRESSED==_NORMAL_COFFEE_BUTTON || _PRESSED==_NORMAL_TEA_BUTTON || _PRESSED==_LIGHT_COFFEE_BUTTON || _PRESSED==_LIGHT_TEA_BUTTON)
		{
			time=eeprom_read(((12*(Selection_Next+1))-2)+Next);
		}
		if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
		{
			SendByteSerially(0x0D);
			myitoa(Selection_Next+1,buff);
			Lcd_String(buff,0,0);
			if(!(Next%2))
			{
				Lcd_String("LOAD ",0,1);
				Lcd_Data(asciitable[(Next/2)+1]);
				if(_Demo==ENABLE)	
				{	
					if(Next==0)
						_ON=_OFF=_Coffee_Valve;
					if(Next==2)
						_ON=_OFF=_Tea_Valve;	
					if(Next==4)
						_ON=_OFF=_Mixing_Hot_Water_Valve;
					if(Next==6)
						_ON=_OFF=_Milk_Valve_Forward;
					if(Next==8)
						_ON=_OFF=_Viber_Motor;
					onthevalve();
					DelayMs(time*100);
					offthevalve();
					_Demo=DISABLE;
				}
			}
			else
			{
				Lcd_String("DELAY",0,1);
				Lcd_Data(asciitable[(Next/2)+1]);
			}
			Lcd_Cmd(0xC9);
			Num_Disp(time,2,1);
			Lcd_Cmd(0xCD);
			Lcd_String("SEC",0,0);
			eeprom_write(((12*(Selection_Next+1))-2)+Next,time);
		}

	}
	if(Enable_Coffee_Dication_Time)
	{
		switch(_PRESSED)
		{
			case _MILK_BUTTON:			if(time>0)
										{
											time--;
										}
										break;
			case _HOT_WATER_BUTTON:		time++;
										break;
			case _EXTRA_BUTTON:			eeprom_write(118,time);
										_DISABLE_MODE=_Coffee_Dication_Time;
										_ENABLE_MODE=_Selection;
										break;
			case _MENU_BUTTON:			eeprom_write(118,time);
										_DISABLE_MODE=_Coffee_Dication_Time;
										_ENABLE_MODE=_Tea_Dication_Time;
										break;
		}
		if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
		{
			Lcd_Cmd(0xC8);
			Num_Disp(time,3,0);
		}
		DelayMs(20);
	}
	if(Enable_Tea_Dication_Time)
	{
		switch(_PRESSED)
		{
			case _MILK_BUTTON:			if(time>0)
										{
											time--;
										}
										break;
			case _HOT_WATER_BUTTON:		time++;
										break;
			case _EXTRA_BUTTON:			eeprom_write(119,time);
										_DISABLE_MODE=_Tea_Dication_Time;
										_ENABLE_MODE=_Coffee_Dication_Time;
										break;
			case _MENU_BUTTON:			eeprom_write(119,time);
										_DISABLE_MODE=_Tea_Dication_Time;
										_ENABLE_MODE=_Dication_Delay;
										break;
		}
		if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
		{
			Lcd_Cmd(0xC8);
			Num_Disp(time,3,0);
		}
		DelayMs(20);
	}
	if(Enable_Dication_Delay)
	{
		switch(_PRESSED)
		{
			case _MILK_BUTTON:			if(time>0)
										{
											time--;
										}										
										break;
			case _HOT_WATER_BUTTON:		time++;
										break;
			case _EXTRA_BUTTON:			eeprom_write(121,time);
										_DISABLE_MODE=_Dication_Delay;
										_ENABLE_MODE=_Tea_Dication_Time;
										DelayMs(100);
										break;
			case _MENU_BUTTON:			eeprom_write(121,time);
										_DISABLE_MODE=_Dication_Delay;
										_ENABLE_MODE=_Hot_Water_Time;
										break;
		}
		if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
		{
			Lcd_Cmd(0xC8);
			Num_Disp(time,3,0);
		}
		DelayMs(10);
	}
	if(Enable_Hot_Water_Time)
	{
		switch(_PRESSED)
		{
			case _MILK_BUTTON:			if(time>0)
										{
											time--;
										}										
										break;
			case _HOT_WATER_BUTTON:		time++;
										break;
			case _EXTRA_BUTTON:			eeprom_write(147,time);
										_DISABLE_MODE=_Hot_Water_Time;
										_ENABLE_MODE=_Dication_Delay;
										DelayMs(100);
										break;
			case _MENU_BUTTON:			eeprom_write(147,time);
										_DISABLE_MODE=_Hot_Water_Time;
										_ENABLE_MODE=_Temperature;
										break;
		}
		if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
		{
			Lcd_Cmd(0xC8);
			Num_Disp(time,3,0);
		}
		DelayMs(10);
	}
	if(Enable_Temperature)
	{
		switch(_PRESSED)
		{
			case _MILK_BUTTON:			if(time>20)
										{
											time--;
										}
										break;
			case _HOT_WATER_BUTTON:		time++;
										break;
			case _EXTRA_BUTTON:			eeprom_write(120,time);
										_DISABLE_MODE=_Temperature;
										_ENABLE_MODE=_Hot_Water_Time;
										break;
			case _MENU_BUTTON:			eeprom_write(120,time);
										_DISABLE_MODE=_Temperature;
										_ENABLE_MODE=_Cup_Count;
										break;
		}
		if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
		{
			Lcd_Cmd(0xC8);
			Num_Disp(time,3,0);
		}
		DelayMs(10);
	}
	if(Enable_Cup_Count)
	{
		switch(_PRESSED)
		{
			case _EXTRA_BUTTON:			_DISABLE_MODE=_Cup_Count;
										_ENABLE_MODE=_Temperature;
										break;
			case _MENU_BUTTON:			_DISABLE_MODE=_Cup_Count;
										_ENABLE_MODE=_Count_Reset;
										break;
		}
		DelayMs(10);
	}
	if(Enable_Count_Reset)
	{
		switch(_PRESSED)
		{
			case _EXTRA_BUTTON:			eeprom_write(124,time);
										_DISABLE_MODE=_Count_Reset;
										_ENABLE_MODE=_Cup_Count;
										
										break;
			case _MENU_BUTTON:			eeprom_write(124,time);
										if(time)
										{
											for(unsigned char index=126;index<=143;index++)
											{
												eeprom_write(index,0x00);
											}
										}
										_DISABLE_MODE=_Count_Reset;
										_ENABLE_MODE=_Normal_Mode;
										break;
		}
		if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
		{
			Lcd_Cmd(0xC6);
			if(_PRESSED==_HOT_WATER_BUTTON)
			{
				Lcd_Print_Yes;
				time=1;
			}
			if(_PRESSED==_MILK_BUTTON)
			{
				Lcd_Print_No;
				time=0;
			}
		}
		DelayMs(10);
	}
	if(Enable_Shortcut_Mode)
	{
		switch(_PRESSED)
		{
			case _NORMAL_COFFEE_BUTTON:	if(_PROCESS==_Preparation)
										{
											eeprom_write(145,5);
											Enable_Coffee_Hot_Water_Valve = TRUE;	
											Lcd_String("PREPARING COFFEE",1,0);
										}
										if(_PROCESS==_Cleaning)
										{
											Lcd_String("COFFEE CLEANING",1,0);
											_ON=_Coffee_Valve;
											onthevalve();
											while(NORMAL_COFFEE_BUTTON!=PRESSED)
											{
												_ON=_Coffee_Valve;
												onthevalve();
												DelayMs(750);
												_OFF=_Coffee_Valve;
												offthevalve();
												DelayMs(250);
											}
										}
										mem_index1=128; mem_index2=129;
										break;
			case _NORMAL_TEA_BUTTON:	if(_PROCESS==_Preparation)
										{
											eeprom_write(146,5);
											Enable_Tea_Hot_Water_Valve = TRUE;
											Lcd_String(" PREPARING TEA",1,0);
										}
										if(_PROCESS==_Cleaning)
										{
											Lcd_String("TEA CLEANING",1,0);
											_ON=_Tea_Valve;
											onthevalve();
											while(NORMAL_TEA_BUTTON!=PRESSED)
											{
												_ON=_Tea_Valve;
												onthevalve();
												DelayMs(750);
												_OFF=_Tea_Valve;
												offthevalve();
												DelayMs(250);
											}
										}
										mem_index1=130; mem_index2=131;
										break;
			case _LIGHT_COFFEE_BUTTON:	mem_index1=132; mem_index2=133;
										break;
			case _LIGHT_TEA_BUTTON:		mem_index1=134; mem_index2=135;
										break;
			case _BLACK_COFFEE_BUTTON:	mem_index1=136; mem_index2=137;
										break;
			case _BLACK_TEA_BUTTON:		mem_index1=138; mem_index2=139;
										break;
			case _MILK_BUTTON:			if(_PROCESS==_Cleaning)
										{
											Lcd_String("MILK CLEANING",1,0);
											_ON=_Viber_Motor;
											onthevalve();
											while(MILK_BUTTON!=PRESSED)
											{
												_ON=_Milk_Valve_Forward;
												onthevalve();
												DelayMs(750);
												_OFF=_Milk_Valve_Forward;
												offthevalve();
												DelayMs(250);
											}
											_OFF=_Viber_Motor;
											offthevalve();
										}
										mem_index1=140; mem_index2=141;
										break;
			case _HOT_WATER_BUTTON:		mem_index1=142; mem_index2=143;
										break;
			case _EXTRA_BUTTON:			if(_PROCESS==_Countdisplay && _PREVIOUS_PROCESS==_Countdisplay)
										{	
											_PROCESS=_Preparation;
										}
										if(_PROCESS==_Preparation && _PREVIOUS_PROCESS==_Preparation)
										{	
											_PROCESS=_Cleaning;
										}
										if(_PROCESS==_Cleaning&& _PREVIOUS_PROCESS==_Cleaning)
										{	
											_PROCESS=_Countdisplay;
										}
										break;
		}
		if(_PREVIOUS_PROCESS!=_PROCESS)
		{
			if(_PROCESS==_Countdisplay)
			{
				Lcd_String("COUNT DISPLAY",1,0);
			}
			if(_PROCESS==_Preparation)
			{
				Lcd_String("DICATION",1,0);
				Lcd_String("PREPARATION",0,1);
			}
			if(_PROCESS==_Cleaning)
			{
				Lcd_String("CLEANING",1,0);
			}
			DelayMs(10);
			_PREVIOUS_PROCESS=_PROCESS;
		}
		if(_PRESSED && (_PRESSED!=_EXTRA_BUTTON))
		{
			Inidcate_Buzzer();
			if(_PROCESS!=_Countdisplay)
			{
				call_control_valve();
				//Print_Name();
				_DISABLE_MODE=_Shortcut_Mode;
				_ENABLE_MODE=_Normal_Mode;
			}
			if(_PROCESS!=_Cleaning && _PROCESS!=_Countdisplay)
			{
				Enable_Shortcut_Mode=FALSE;
				Enable_Normal_Mode=TRUE;
			}
			if(_PROCESS==_Countdisplay)
			{
				Print_Menu();
				Lcd_Cmd(0xC5); Num_Disp(count_read(mem_index1,mem_index2),5,0);
			}
		}
	}

	if(_PRESSED!=DUMMY)
	{
		_PRESSED=DUMMY;
		_SHORTCUT_PRESSED=DUMMY;
		i=0;j=0;
	}
}

void change_modes()
{
	switch (_DISABLE_MODE)
	{
		case _Normal_Mode:			Enable_Normal_Mode=FALSE;
									break;
		case _Password:				Enable_Password=FALSE;
									break;
		case _Config_Mode:			Enable_Config_Mode=FALSE;
									break;
		case _Valves:				Enable_Valves=FALSE;
									break;
		case _Selection:			Enable_Selection=FALSE;
									break;
		case _Coffee_Dication_Time:	Enable_Coffee_Dication_Time=FALSE;
									break;
		case _Tea_Dication_Time:	Enable_Tea_Dication_Time=FALSE;
									break;
		case _Dication_Delay:		Enable_Dication_Delay=FALSE;
									break;
		case _Hot_Water_Time:		Enable_Hot_Water_Time=FALSE;
									break;
		case _Temperature:			Enable_Temperature=FALSE;
									break;
		case _Cup_Count:			Enable_Cup_Count=FALSE;
									break;
		case _Count_Reset:			Enable_Count_Reset=FALSE;
									break;
		case _Shortcut_Mode:		Enable_Shortcut_Mode=FALSE;
									break;
	}
	switch (_ENABLE_MODE)
	{
		case _Normal_Mode:			Enable_Normal_Mode=TRUE;
									break;
		case _Password:				Enable_Password=TRUE;
									break;
		case _Config_Mode:			Enable_Config_Mode=TRUE;
									break;
		case _Valves:				Enable_Valves=TRUE;
									break;
		case _Selection:			Enable_Selection=TRUE;
									break;
		case _Coffee_Dication_Time:	Enable_Coffee_Dication_Time=TRUE;
									break;
		case _Tea_Dication_Time:	Enable_Tea_Dication_Time=TRUE;
									break;
		case _Dication_Delay:		Enable_Dication_Delay=TRUE;
									break;
		case _Hot_Water_Time:		Enable_Hot_Water_Time=TRUE;
									break;
		case _Temperature:			Enable_Temperature=TRUE;
									break;
		case _Cup_Count:			Enable_Cup_Count=TRUE;
									break;
		case _Count_Reset:			Enable_Count_Reset=TRUE;
									break;
		case _Shortcut_Mode:		Enable_Shortcut_Mode=TRUE;
									break;
	}
	
	if(Enable_Normal_Mode && (_PREVIOUS_MODE != _ENABLE_MODE))
	{
		Print_Name();
	}
	if(Enable_Password && (_PREVIOUS_MODE != _ENABLE_MODE))
	{
		Lcd_String("PASSWORD: ",1,0);
	}
	if(Enable_Valves && (_PREVIOUS_MODE != _ENABLE_MODE))
	{
		Lcd_String("CONFIGURE MODE",1,0);
		DelayMs(100);
		Lcd_String("MENU: ",1,0);
		Lcd_Cmd(0x86);
		Lcd_Data('1');
		print_yes_no(Next);
	}
	if(Enable_Selection && (_PREVIOUS_MODE != _ENABLE_MODE))
	{
		Lcd_Clear;
		Lcd_String("SELECTION",0,0);
		Lcd_String(" MODE",0,0);
		DelayMs(100);
		time=eeprom_read(10);
		_PRESSED=_NORMAL_COFFEE_BUTTON;
		Lcd_Clear;
	}
	if(Enable_Coffee_Dication_Time && (_PREVIOUS_MODE != _ENABLE_MODE))
	{
		Lcd_String("COFFEE DICATION",1,0);
		Lcd_String("TIME:",0,1);
		time=eeprom_read(118);
		_PRESSED=_NORMAL_TEA_BUTTON;
	}
	if(Enable_Tea_Dication_Time && (_PREVIOUS_MODE != _ENABLE_MODE))
	{
		Lcd_String("TEA DICATION",1,0);
		Lcd_String("TIME:",0,1);
		time=eeprom_read(119);
		_PRESSED=_NORMAL_TEA_BUTTON;
	}
	if(Enable_Temperature && (_PREVIOUS_MODE != _ENABLE_MODE))
	{
		Lcd_String("TEMPERATURE",1,0);
		time=eeprom_read(120);
		_PRESSED=_NORMAL_TEA_BUTTON;
	}
	if(Enable_Dication_Delay && (_PREVIOUS_MODE != _ENABLE_MODE))
	{
		Lcd_String("DICATION DELAY",1,0);
		Lcd_String("TIME:",0,1);
		time=eeprom_read(121);
		_PRESSED=_NORMAL_TEA_BUTTON;
	}
	if(Enable_Hot_Water_Time && (_PREVIOUS_MODE != _ENABLE_MODE))
	{
		Lcd_String("HOT WATER",1,0);
		Lcd_String("TIME:",0,1);
		time=eeprom_read(147);
		_PRESSED=_NORMAL_TEA_BUTTON;
	}
	if(Enable_Cup_Count && (_PREVIOUS_MODE != _ENABLE_MODE))
	{
		Lcd_String("CUP COUNT",1,0);
		Lcd_Cmd(0xC8); Num_Disp(count_read(126,127),5,0);
		DelayMs(50);
	}
	if(Enable_Count_Reset && (_PREVIOUS_MODE != _ENABLE_MODE))
	{
		Lcd_String("COUNT RESET",1,0);
		_PRESSED=_MILK_BUTTON;
	}

	_ENABLE_MODE=0;
	_DISABLE_MODE=0;
	_PREVIOUS_MODE=_ENABLE_MODE;
}

/*void call_control_valve()
{
	if(Enable_Coffee_Valve)
	{
		_ON=_OFF=_Coffee_Valve;
		control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+4),eeprom_read((12*_CHOICE_SELECTED)-2+5));
		Enable_Coffee_Valve=FALSE;
	}
	if(Enable_Tea_Valve)
	{
		_ON=_OFF=_Tea_Valve;
		control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+6),eeprom_read((12*)-2+7));
		Enable_Tea_Valve=FALSE;
	}
	if(Enable_Mixing_Hot_Water_Valve)
	{
		_ON=_OFF=_Mixing_Hot_Water_Valve;
		control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+2),eeprom_read((12*_CHOICE_SELECTED)-2+3));
		Enable_Mixing_Hot_Water_Valve=FALSE;
	}
	if(Enable_Milk_Forward)
	{
		_ON=_OFF=_Milk_Valve_Forward;
		control_valve(eeprom_read((12*_CHOICE_SELECTED)-2),eeprom_read((12*_CHOICE_SELECTED)-2+1));
		Enable_Milk_Forward=FALSE;
	}
	if(Enable_Viber_Motor)
	{
		_ON=_OFF=_Viber_Motor;
		control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+8),eeprom_read((12*_CHOICE_SELECTED)-2+9));
		Enable_Viber_Motor=FALSE;
	}
	if(Enable_Hot_Water_Valve)
	{
		_ON=_OFF=_Hot_Water_Valve;
		control_valve(30,2);
		Enable_Hot_Water_Valve=FALSE;
	}
	if(Enable_Coffee_Hot_Water_Valve)
	{
		_ON=_OFF=_Coffee_Hot_Water_Valve;
		for(i=eeprom_read(145);i>0;i--)
		{
			Lcd_Cmd(0xC6);
			myitoa(i,buff);
			Lcd_String(buff,0,0);
			eeprom_write(145,i);
			control_valve(eeprom_read(118)*10,eeprom_read(121)*10);
		}
		Enable_Coffee_Hot_Water_Valve=FALSE;
	}
	if(Enable_Tea_Hot_Water_Valve)
	{
		_ON=_OFF=_Tea_Hot_Water_Valve;
		for(i=eeprom_read(146);i>0;i--)
		{
			eeprom_write(146,i);
			control_valve(eeprom_read(119)*10,eeprom_read(121)*10);
		}
		Enable_Tea_Hot_Water_Valve=FALSE;
	}		
	if(Enable_Milk_Reverse)
	{
		_ON=_OFF=_Milk_Valve_Reverse;
		control_valve(35,2);
		Enable_Milk_Reverse=FALSE;
	}
	if(Enable_Heater1)
	{
		_ON=_OFF=_Heater1;
		control_valve(eeprom_read(255),eeprom_read(255));
		Enable_Heater1=FALSE;
	}
}*/

void call_control_valve()
{
	if(Enable_Coffee_Valve)
	{
		_ON=_OFF=_Coffee_Valve;
		control_valve(eeprom_read((12*_CHOICE_SELECTED)-2),eeprom_read((12*_CHOICE_SELECTED)-2+1));
		Enable_Coffee_Valve=FALSE;
	}
	if(Enable_Tea_Valve)
	{
		_ON=_OFF=_Tea_Valve;
		control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+2),eeprom_read((12*_CHOICE_SELECTED)-2+3));
		Enable_Tea_Valve=FALSE;
	}
	if(Enable_Mixing_Hot_Water_Valve)
	{
		_ON=_OFF=_Mixing_Hot_Water_Valve;
		control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+4),eeprom_read((12*_CHOICE_SELECTED)-2+5));
		Enable_Mixing_Hot_Water_Valve=FALSE;
	}
	if(Enable_Milk_Forward)
	{
		_ON=_OFF=_Milk_Valve_Forward;
		control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+6),eeprom_read((12*_CHOICE_SELECTED)-2+7));
		Enable_Milk_Forward=FALSE;
	}
	if(Enable_Viber_Motor)
	{
		_ON=_OFF=_Viber_Motor;
		control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+8),eeprom_read((12*_CHOICE_SELECTED)-2+9));
		Enable_Viber_Motor=FALSE;
	}
	if(Enable_Hot_Water_Valve)
	{
		_ON=_OFF=_Hot_Water_Valve;
		//control_valve(30,2);
		control_valve(eeprom_read(147),2);
		Enable_Hot_Water_Valve=FALSE;
	}
	if(Enable_Coffee_Hot_Water_Valve)
	{
		_ON=_OFF=_Coffee_Hot_Water_Valve;
		for(i=eeprom_read(145);i>0;i--)
		{
			Lcd_Cmd(0xC6);
			myitoa(i,buff);
			Lcd_String(buff,0,0);
			eeprom_write(145,i);
			control_valve(eeprom_read(118)*10,eeprom_read(121)*10);
		}
		Enable_Coffee_Hot_Water_Valve=FALSE;
	}
	if(Enable_Tea_Hot_Water_Valve)
	{
		_ON=_OFF=_Tea_Hot_Water_Valve;
		for(i=eeprom_read(146);i>0;i--)
		{
			eeprom_write(146,i);
			control_valve(eeprom_read(119)*10,eeprom_read(121)*10);
		}
		Enable_Tea_Hot_Water_Valve=FALSE;
	}		
	if(Enable_Milk_Reverse)
	{
		_ON=_OFF=_Milk_Valve_Reverse;
		control_valve(35,2);
		Enable_Milk_Reverse=FALSE;
	}
	if(Enable_Heater1)
	{
		_ON=_OFF=_Heater1;
		control_valve(eeprom_read(255),eeprom_read(255));
		Enable_Heater1=FALSE;
	}
}

void control_valve(unsigned int load_time, unsigned int delay_time)
{
	onthevalve();
/*	myitoa(load_time*100,buff);
	Lcd_String(buff,1,1);
	Lcd_String("  LOAD",0,0);*/
	DelayMs(load_time*100);

	offthevalve();
	/*myitoa(delay_time*100,buff);
	Lcd_String(buff,1,1);
	Lcd_String("  DELAY",0,0);*/
	DelayMs(delay_time*100);
}

void onthevalve()
{
	switch(_ON)
	{
		case _Milk_Valve_Forward:
						MILK_MOTOR_1=ON;
						MILK_MOTOR_2=OFF;
						break;
		case _Milk_Valve_Reverse:
						MILK_MOTOR_1=OFF;
						MILK_MOTOR_2=ON;
						break;
		case _Mixing_Hot_Water_Valve:
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
		case _Viber_Motor:
						VIBER_MOTOR=ON;
						break;
		case _Heater1:
						HEATER_1=ON;
						break;
	}
}

void offthevalve()
{
	switch(_OFF)
	{
		case _Milk_Valve_Forward:
						MILK_MOTOR_1=OFF;
						MILK_MOTOR_2=OFF;
		case _Milk_Valve_Reverse:
						MILK_MOTOR_1=OFF;
						MILK_MOTOR_2=OFF;
						break;
		case _Mixing_Hot_Water_Valve:
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
		case _Viber_Motor:
						VIBER_MOTOR=OFF;
						break;
		case _Heater1:
						HEATER_1=OFF;
						break;
	}
}

void count_write(unsigned char addr1,unsigned char addr2,unsigned int count)
{
	if(count<=255)
	{
			eeprom_write(addr1,count);
	}
	else
	{
		eeprom_write(addr1,count-255);
		eeprom_write(addr2,(eeprom_read(addr2)+count-255));
	}
}

int count_read(unsigned char addr1, unsigned char addr2)
{
	return (eeprom_read(addr2)*255)+eeprom_read(addr1);
}

void Write_ValveIn_Memory(struct item VALVE,unsigned char loc)
{
	unsigned char chr=0x00;
	chr=(VALVE.MIXING_HOT_WATER==1)?(chr | 0x01):(chr & 0xFE);
	chr=(VALVE.MILK==1)?(chr | 0x02):(chr & 0xFD);
	chr=(VALVE.COFFEE_DICATION==1)?	(chr | 0x04):(chr & 0xFB);
	chr=(VALVE.TEA_DICATION==1)?	(chr | 0x08):(chr & 0xF7);
	chr=(VALVE.VIBR_MOTOR==1)?		(chr | 0x10):(chr & 0xEF);
	eeprom_write(loc,chr);
}

struct item Read_ValveFrom_Memory(unsigned char MEM)
{
	VALVE.MIXING_HOT_WATER=	(eeprom_read(MEM)&0x01)>0?1:0;
	VALVE.MILK=				(eeprom_read(MEM)&0x02)>0?1:0;
	VALVE.COFFEE_DICATION=	(eeprom_read(MEM)&0x04)>0?1:0;
	VALVE.TEA_DICATION=		(eeprom_read(MEM)&0x08)>0?1:0;
	VALVE.VIBR_MOTOR=		(eeprom_read(MEM)&0x10)>0?1:0;
	return VALVE;
}

void print_yes_no(unsigned char MEM)
{
	VALVE=Read_ValveFrom_Memory(MEM);
	Lcd_Cmd(0xC3);
	if( VALVE.COFFEE_DICATION )
	{
		Lcd_Print_Yes;
	}
	else
		Lcd_Print_No;
	Lcd_Cmd(0xC5);
	if( VALVE.TEA_DICATION )
	{
		Lcd_Print_Yes;
	}
	else
		Lcd_Print_No;
	Lcd_Cmd(0xC7);
	if( VALVE.MIXING_HOT_WATER )
	{
		Lcd_Print_Yes;
	}
	else
		Lcd_Print_No;
	Lcd_Cmd(0xC9);
	if( VALVE.MILK )
	{
		Lcd_Print_Yes;
	}
	else
		Lcd_Print_No;
	Lcd_Cmd(0xCB);
	if( VALVE.VIBR_MOTOR)
	{
		Lcd_Print_Yes;
	}
	else
		Lcd_Print_No;
	Lcd_Cmd(0xCD);
}