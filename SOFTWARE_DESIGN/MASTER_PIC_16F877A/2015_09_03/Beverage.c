#include "includes.h"
#include "Beverage_services.h"
#include "delay.h"
#include "lcd.h"
#include "myitoa.h"
#include "adc.h"

/* CONFIGURATION */
__CONFIG( DEBUG_OFF & LVP_OFF & BOREN_OFF & CPD_OFF & CP_OFF & PWRTE_ON & WDTE_OFF & FOSC_HS & WRT_OFF);


void Port_Init()	//PORTS INITIALIZATION
{
	ADCON1 = 0X07;
	CMCON = 0X07;

	TRISA = 0x01;
	TRISB = 0XFF;
	TRISD = 0x00;
	TRISC = 0X30;
	TRISE = 0X00;

	PORTA = 0X00;
	PORTB = 0XFF;
	PORTC = 0X30;
	PORTD = 0XFD;
	PORTE = 0X00;
}
	
void main()
{
/*---------------------INITIALIZATION-----------------------*/
	Port_Init();	
	Lcd_Init();
	Inidcate_Buzzer();
	Print_Name();
	InitADC();
	Mode_Init();
	//count_init();
	Enable_Config_Mode=TRUE;

	while(1)
	{
		ADC_value=GetADCValue(AN0);
		temperature=(ADC_value*100)/204;
		DelayMs(100);

		if(temperature+10<=(eeprom_read(120)) && Enable_Config_Mode==TRUE)
		{
			HEATER_1=ON;
			Enable_Normal_Mode=FALSE;
			myitoa(temperature,buff);
			if(_temp_flag==0)
				Lcd_String("LOW TEMPERATURE",1,0);
			Lcd_Cmd(0xC7);
			Lcd_String(buff,0,0);
			_temp_flag=1;
		}
		if(temperature>eeprom_read(120) && _temp_flag==1)
		{
			HEATER_1=OFF;
			Lcd_String("HAVE A HOT SIP !",1,0);
			DelayMs(1500);
			Enable_Normal_Mode=TRUE;
			Enable_Config_Mode=TRUE;
			Print_Name();
			_temp_flag=0;
		}
		key_press();
		enable_valves();
		change_modes();
	}
}