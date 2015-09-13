#ifndef _header
	#include<htc.h>
	#define _XTAL_FREQ 20000000   //MHz
#endif

enum valve_flags{
_Milk_Valve_Forward = 1,
_Milk_Valve_Reverse,
_Mixing_Hot_Water_Valve,
_Hot_Water_Valve,
_Coffee_Hot_Water_Valve,
_Coffee_Valve,
_Tea_Hot_Water_Valve,
_Tea_Valve,
_Viber_Motor,
_Heater1,
_Heater2
};
enum valve_flags _ON,_OFF;

bit Enable_Milk_Forward, 
Enable_Milk_Reverse,
Enable_Mixing_Hot_Water_Valve,
Enable_Hot_Water_Valve,
Enable_Coffee_Hot_Water_Valve,
Enable_Coffee_Valve,
Enable_Tea_Hot_Water_Valve,
Enable_Tea_Valve,
Enable_Viber_Motor,
Enable_Heater1,
Enable_Heater2;

enum button_flags{
_NORMAL_COFFEE_BUTTON = 1,
_NORMAL_TEA_BUTTON,
_LIGHT_COFFEE_BUTTON,
_LIGHT_TEA_BUTTON,
_BLACK_COFFEE_BUTTON,
_BLACK_TEA_BUTTON,
_MILK_BUTTON,
_EXTRA_BUTTON,
_HOT_WATER_BUTTON,
_MENU_BUTTON
};
enum button_flags _PRESSED,_CHOICE_SELECTED,
	_SHORTCUT_PRESSED;

bit _SHORTCUT;

enum mode_flags{
_Normal_Mode=1,
_Password,
_Config_Mode,
_Valves,
_Selection,
_Coffee_Dication_Time,
_Tea_Dication_Time,
_Dication_Delay,
_Hot_Water_Time,
_Milk_Reverse_Time,
_Temperature,
_Cup_Count,
_Count_Reset,
_Shortcut_Mode
};
enum mode_flags _ENABLE_MODE,_DISABLE_MODE,_PREVIOUS_MODE=0;

bit Enable_Normal_Mode,
Enable_Password,
Enable_Config_Mode,
Enable_Valves,
Enable_Selection,
Enable_Coffee_Dication_Time,
Enable_Tea_Dication_Time,
Enable_Dication_Delay,
Enable_Hot_Water_Time,
Enable_Milk_Reverse_Time,
Enable_Temperature,
Enable_Cup_Count,
Enable_Count_Reset,
Enable_Shortcut_Mode;

enum shortcut_flags{
_Countdisplay=1,
_Preparation,
_Cleaning
};
enum shortcut_flags _PROCESS=0,_PREVIOUS_PROCESS=0;

bit _Demo,_temp_flag=0,_clear=0;

struct item
{
	unsigned int COFFEE_DICATION:1;
	unsigned int TEA_DICATION:1;
	unsigned int MIXING_HOT_WATER:1;
	unsigned int MILK:1;
	unsigned int VIBR_MOTOR:1;
}VALVE,MENU[9];



unsigned int i=0,j=0,password,temperature,ADC_value,time;

unsigned char Next=0,Selection_Next=0;

unsigned char buff[4];

unsigned char mem_index1,mem_index2;

#define Lcd_Print_Yes Lcd_Data('Y');
#define Lcd_Print_No Lcd_Data('N');

//#define Lcd_Print_Selection Lcd_String("SELECTION",0,0);

void Print_Name();
void Print_Menu();
void Inidcate_Buzzer();
void Mode_Init();
void key_press();
void enable_valves();
void onthevalve();
void offthevalve();
void control_valve(unsigned int load_time, unsigned int delay_time);
void call_control_valve();
void change_modes();
void Write_ValveIn_Memory(struct item VALVE,unsigned char loc);
struct item Read_ValveFrom_Memory(unsigned char MEM);
void print_yes_no(unsigned char option);
void run_shortcut_sequence();
void count_write(unsigned char addr1,unsigned char addr2,unsigned int total_count);
int count_read(unsigned char addr1, unsigned char addr2);