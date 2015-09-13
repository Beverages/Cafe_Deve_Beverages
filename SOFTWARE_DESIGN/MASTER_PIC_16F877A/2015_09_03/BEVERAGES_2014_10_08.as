opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 9 "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage.c"
	psect config,class=CONFIG,delta=2 ;#
# 9 "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage.c"
	dw 0xFFFF & 0xFF7F & 0xFFBF & 0xFFFF & 0xFFFF & 0xFFF7 & 0xFFFB & 0xFFFE & 0xFFFF ;#
	FNCALL	_main,_Port_Init
	FNCALL	_main,_Lcd_Init
	FNCALL	_main,_Inidcate_Buzzer
	FNCALL	_main,_Print_Name
	FNCALL	_main,_InitADC
	FNCALL	_main,_Mode_Init
	FNCALL	_main,_GetADCValue
	FNCALL	_main,___wmul
	FNCALL	_main,___lwdiv
	FNCALL	_main,_DelayMs
	FNCALL	_main,_eeprom_read
	FNCALL	_main,_myitoa
	FNCALL	_main,_Lcd_String
	FNCALL	_main,_Lcd_Cmd
	FNCALL	_main,_key_press
	FNCALL	_main,_enable_valves
	FNCALL	_main,_change_modes
	FNCALL	_change_modes,_Print_Name
	FNCALL	_change_modes,_Lcd_String
	FNCALL	_change_modes,_DelayMs
	FNCALL	_change_modes,_Lcd_Cmd
	FNCALL	_change_modes,_Lcd_Data
	FNCALL	_change_modes,_print_yes_no
	FNCALL	_change_modes,_eeprom_read
	FNCALL	_change_modes,_count_read
	FNCALL	_change_modes,_Num_Disp
	FNCALL	_enable_valves,_Print_Menu
	FNCALL	_enable_valves,_Inidcate_Buzzer
	FNCALL	_enable_valves,_eeprom_read
	FNCALL	_enable_valves,_count_write
	FNCALL	_enable_valves,_call_control_valve
	FNCALL	_enable_valves,_Print_Name
	FNCALL	_enable_valves,_key_press
	FNCALL	_enable_valves,_offthevalve
	FNCALL	_enable_valves,_eeprom_write
	FNCALL	_enable_valves,_Lcd_Cmd
	FNCALL	_enable_valves,_Num_Disp
	FNCALL	_enable_valves,_DelayMs
	FNCALL	_enable_valves,_myitoa
	FNCALL	_enable_valves,_Lcd_String
	FNCALL	_enable_valves,_Write_ValveIn_Memory
	FNCALL	_enable_valves,_print_yes_no
	FNCALL	_enable_valves,___bmul
	FNCALL	_enable_valves,_Lcd_Data
	FNCALL	_enable_valves,___awdiv
	FNCALL	_enable_valves,_onthevalve
	FNCALL	_enable_valves,___wmul
	FNCALL	_enable_valves,_count_read
	FNCALL	_Mode_Init,_Read_ValveFrom_Memory
	FNCALL	_Mode_Init,_eeprom_read
	FNCALL	_Mode_Init,_Lcd_String
	FNCALL	_Mode_Init,_eeprom_write
	FNCALL	_Mode_Init,_Lcd_Cmd
	FNCALL	_Mode_Init,_call_control_valve
	FNCALL	_call_control_valve,___bmul
	FNCALL	_call_control_valve,_eeprom_read
	FNCALL	_call_control_valve,_control_valve
	FNCALL	_call_control_valve,_Lcd_Cmd
	FNCALL	_call_control_valve,_myitoa
	FNCALL	_call_control_valve,_Lcd_String
	FNCALL	_call_control_valve,_eeprom_write
	FNCALL	_call_control_valve,___wmul
	FNCALL	_Print_Menu,_Lcd_String
	FNCALL	_Print_Name,_Lcd_String
	FNCALL	_print_yes_no,_Read_ValveFrom_Memory
	FNCALL	_print_yes_no,_Lcd_Cmd
	FNCALL	_print_yes_no,_Lcd_Data
	FNCALL	_myitoa,___awmod
	FNCALL	_myitoa,___awdiv
	FNCALL	_myitoa,_rev
	FNCALL	_Num_Disp,___wmul
	FNCALL	_Num_Disp,___lwdiv
	FNCALL	_Num_Disp,_Lcd_Data
	FNCALL	_Num_Disp,___lwmod
	FNCALL	_Lcd_String,_Lcd_Cmd
	FNCALL	_Lcd_String,_Lcd_Data
	FNCALL	_Lcd_Init,_Lcd_Cmd
	FNCALL	_Lcd_Init,_DelayMs
	FNCALL	_control_valve,_onthevalve
	FNCALL	_control_valve,___wmul
	FNCALL	_control_valve,_DelayMs
	FNCALL	_control_valve,_offthevalve
	FNCALL	_count_read,_eeprom_read
	FNCALL	_count_read,___wmul
	FNCALL	_Write_ValveIn_Memory,_eeprom_write
	FNCALL	_count_write,_eeprom_write
	FNCALL	_count_write,_eeprom_read
	FNCALL	_Read_ValveFrom_Memory,_eeprom_read
	FNCALL	_Inidcate_Buzzer,_DelayMs
	FNCALL	_rev,_strlen
	FNCALL	_Lcd_Data,_DelayMs
	FNCALL	_Lcd_Cmd,_DelayMs
	FNROOT	_main
	global	_asciitable
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\lcd.h"
	line	8

;initializer for _asciitable
	retlw	030h
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
	retlw	035h
	retlw	036h
	retlw	037h
	retlw	038h
	retlw	039h
	global	_MENU
	global	_ADC_value
	global	_i
	global	_j
	global	_password
	global	_temperature
	global	_time
	global	_Next
	global	_VALVE
	global	__DISABLE_MODE
	global	__ENABLE_MODE
	global	__OFF
	global	__ON
	global	__PRESSED
	global	__PREVIOUS_MODE
	global	__PREVIOUS_PROCESS
	global	__PROCESS
	global	__SHORTCUT_PRESSED
	global	_itoai
	global	_mem_index1
	global	_mem_index2
	global	_Enable_Coffee_Dication_Time
	global	_Enable_Coffee_Hot_Water_Valve
	global	_Enable_Coffee_Valve
	global	_Enable_Config_Mode
	global	_Enable_Count_Reset
	global	_Enable_Cup_Count
	global	_Enable_Dication_Delay
	global	_Enable_Heater1
	global	_Enable_Heater2
	global	_Enable_Hot_Water_Time
	global	_Enable_Hot_Water_Valve
	global	_Enable_Milk_Forward
	global	_Enable_Milk_Reverse
	global	_Enable_Milk_Reverse_Time
	global	_Enable_Mixing_Hot_Water_Valve
	global	_Enable_Normal_Mode
	global	_Enable_Password
	global	_Enable_Selection
	global	_Enable_Shortcut_Mode
	global	_Enable_Tea_Dication_Time
	global	_Enable_Tea_Hot_Water_Valve
	global	_Enable_Tea_Valve
	global	_Enable_Temperature
	global	_Enable_Valves
	global	_Enable_Viber_Motor
	global	__Demo
	global	__SHORTCUT
	global	__clear
	global	__temp_flag
	global	_buff
	global	_Selection_Next
	global	__CHOICE_SELECTED
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_GO_nDONE
_GO_nDONE	set	250
	global	_RA2
_RA2	set	42
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_CMCON
_CMCON	set	156
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
__stringbase:
psect	stringtext,class=STRCODE,delta=2,reloc=256
global __pstringtext
__pstringtext:
	
STR_21:	
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	72	;'H'
	retlw	65	;'A'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	73	;'I'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	33	;'!'
	retlw	0
psect	stringtext
	
STR_22:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	0
psect	stringtext
	
STR_35:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	87	;'W'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	77	;'M'
	retlw	80	;'P'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_23:	
	retlw	32	;' '
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	0
psect	stringtext
	
STR_31:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	70	;'F'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	66	;'B'
	retlw	76	;'L'
	retlw	65	;'A'
	retlw	67	;'C'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	32	;' '
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	77	;'M'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_40:	
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	65	;'A'
	retlw	89	;'Y'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	77	;'M'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	70	;'F'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	86	;'V'
	retlw	73	;'I'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_25:	
	retlw	77	;'M'
	retlw	73	;'I'
	retlw	76	;'L'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	0
psect	stringtext
	
STR_26:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	80	;'P'
	retlw	76	;'L'
	retlw	65	;'A'
	retlw	89	;'Y'
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	66	;'B'
	retlw	76	;'L'
	retlw	65	;'A'
	retlw	67	;'C'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	0
psect	stringtext
	
STR_24:	
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	0
psect	stringtext
	
STR_37:	
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	stringtext
	
STR_12:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	72	;'H'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	66	;'B'
	retlw	69	;'E'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	71	;'G'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	69	;'E'
	retlw	88	;'X'
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	0
psect	stringtext
	
STR_15:	
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	stringtext
	
STR_45:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_30:	
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	83	;'S'
	retlw	87	;'W'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	68	;'D'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	77	;'M'
	retlw	73	;'I'
	retlw	76	;'L'
	retlw	75	;'K'
	retlw	0
psect	stringtext
	
STR_17:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	stringtext
	
STR_44:	
	retlw	67	;'C'
	retlw	85	;'U'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	85	;'U'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_32:	
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	85	;'U'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_18:	
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_36:	
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_20:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	0
psect	stringtext
STR_19	equ	STR_40+9
STR_42	equ	STR_12+3
STR_33	equ	STR_17+0
STR_28	equ	STR_15+0
STR_16	equ	STR_37+4
STR_27	equ	STR_37+4
STR_29	equ	STR_24+4
STR_39	equ	STR_1+4
STR_34	equ	STR_31+9
STR_38	equ	STR_36+0
STR_41	equ	STR_36+0
STR_43	equ	STR_36+0
	file	"BEVERAGES_2014_10_08.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssBANK0,class=BANK0,bit,space=1
global __pbitbssBANK0
__pbitbssBANK0:
_Enable_Coffee_Dication_Time:
       ds      1

_Enable_Coffee_Hot_Water_Valve:
       ds      1

_Enable_Coffee_Valve:
       ds      1

_Enable_Config_Mode:
       ds      1

_Enable_Count_Reset:
       ds      1

_Enable_Cup_Count:
       ds      1

_Enable_Dication_Delay:
       ds      1

_Enable_Heater1:
       ds      1

_Enable_Heater2:
       ds      1

_Enable_Hot_Water_Time:
       ds      1

_Enable_Hot_Water_Valve:
       ds      1

_Enable_Milk_Forward:
       ds      1

_Enable_Milk_Reverse:
       ds      1

_Enable_Milk_Reverse_Time:
       ds      1

_Enable_Mixing_Hot_Water_Valve:
       ds      1

_Enable_Normal_Mode:
       ds      1

_Enable_Password:
       ds      1

_Enable_Selection:
       ds      1

_Enable_Shortcut_Mode:
       ds      1

_Enable_Tea_Dication_Time:
       ds      1

_Enable_Tea_Hot_Water_Valve:
       ds      1

_Enable_Tea_Valve:
       ds      1

_Enable_Temperature:
       ds      1

_Enable_Valves:
       ds      1

_Enable_Viber_Motor:
       ds      1

__Demo:
       ds      1

__SHORTCUT:
       ds      1

__clear:
       ds      1

__temp_flag:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_MENU:
       ds      9

_ADC_value:
       ds      2

_i:
       ds      2

_j:
       ds      2

_password:
       ds      2

_temperature:
       ds      2

_time:
       ds      2

_Next:
       ds      1

_VALVE:
       ds      1

__DISABLE_MODE:
       ds      1

__ENABLE_MODE:
       ds      1

__OFF:
       ds      1

__ON:
       ds      1

__PRESSED:
       ds      1

__PREVIOUS_MODE:
       ds      1

__PREVIOUS_PROCESS:
       ds      1

__PROCESS:
       ds      1

__SHORTCUT_PRESSED:
       ds      1

_itoai:
       ds      1

_mem_index1:
       ds      1

_mem_index2:
       ds      1

_buff:
       ds      4

_Selection_Next:
       ds      1

__CHOICE_SELECTED:
       ds      1

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\lcd.h"
_asciitable:
       ds      10

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BITBANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssBANK0/8)+0)&07Fh
	clrf	((__pbitbssBANK0/8)+1)&07Fh
	clrf	((__pbitbssBANK0/8)+2)&07Fh
	clrf	((__pbitbssBANK0/8)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+029h)
	fcall	clear_ram
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	movlw low(__pdataBANK1+10)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Lcd_Cmd
?_Lcd_Cmd:	; 0 bytes @ 0x0
	global	?_Inidcate_Buzzer
?_Inidcate_Buzzer:	; 0 bytes @ 0x0
	global	?_Print_Name
?_Print_Name:	; 0 bytes @ 0x0
	global	?_Mode_Init
?_Mode_Init:	; 0 bytes @ 0x0
	global	?_key_press
?_key_press:	; 0 bytes @ 0x0
	global	??_key_press
??_key_press:	; 0 bytes @ 0x0
	global	?_enable_valves
?_enable_valves:	; 0 bytes @ 0x0
	global	?_change_modes
?_change_modes:	; 0 bytes @ 0x0
	global	?_call_control_valve
?_call_control_valve:	; 0 bytes @ 0x0
	global	?_offthevalve
?_offthevalve:	; 0 bytes @ 0x0
	global	??_offthevalve
??_offthevalve:	; 0 bytes @ 0x0
	global	?_print_yes_no
?_print_yes_no:	; 0 bytes @ 0x0
	global	?_onthevalve
?_onthevalve:	; 0 bytes @ 0x0
	global	??_onthevalve
??_onthevalve:	; 0 bytes @ 0x0
	global	?_InitADC
?_InitADC:	; 0 bytes @ 0x0
	global	??_InitADC
??_InitADC:	; 0 bytes @ 0x0
	global	?_Lcd_Init
?_Lcd_Init:	; 0 bytes @ 0x0
	global	?_Lcd_Data
?_Lcd_Data:	; 0 bytes @ 0x0
	global	?_rev
?_rev:	; 0 bytes @ 0x0
	global	?_Port_Init
?_Port_Init:	; 0 bytes @ 0x0
	global	??_Port_Init
??_Port_Init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_Print_Menu
?_Print_Menu:	; 0 bytes @ 0x0
	global	?_Read_ValveFrom_Memory
?_Read_ValveFrom_Memory:	; 1 bytes @ 0x0
	global	?___bmul
?___bmul:	; 1 bytes @ 0x0
	global	?_strlen
?_strlen:	; 2 bytes @ 0x0
	global	?_GetADCValue
?_GetADCValue:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x1
	ds	1
	global	??_strlen
??_strlen:	; 0 bytes @ 0x2
	global	??_GetADCValue
??_GetADCValue:	; 0 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	?_eeprom_read
?_eeprom_read:	; 1 bytes @ 0x4
	global	GetADCValue@Channel
GetADCValue@Channel:	; 1 bytes @ 0x4
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0x4
	ds	1
	global	??_eeprom_read
??_eeprom_read:	; 0 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	??_Read_ValveFrom_Memory
??_Read_ValveFrom_Memory:	; 0 bytes @ 0x6
	global	?_eeprom_write
?_eeprom_write:	; 1 bytes @ 0x6
	global	?___wmul
?___wmul:	; 2 bytes @ 0x6
	global	eeprom_write@value
eeprom_write@value:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x6
	ds	1
	global	??_eeprom_write
??_eeprom_write:	; 0 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	eeprom_write@addr
eeprom_write@addr:	; 1 bytes @ 0x8
	global	strlen@s
strlen@s:	; 1 bytes @ 0x8
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x8
	ds	1
	global	?_count_write
?_count_write:	; 0 bytes @ 0x9
	global	?_Write_ValveIn_Memory
?_Write_ValveIn_Memory:	; 0 bytes @ 0x9
	global	count_write@addr2
count_write@addr2:	; 1 bytes @ 0x9
	global	Write_ValveIn_Memory@loc
Write_ValveIn_Memory@loc:	; 1 bytes @ 0x9
	global	Read_ValveFrom_Memory@MEM
Read_ValveFrom_Memory@MEM:	; 1 bytes @ 0x9
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x9
	ds	1
	global	??_Write_ValveIn_Memory
??_Write_ValveIn_Memory:	; 0 bytes @ 0xA
	global	??_rev
??_rev:	; 0 bytes @ 0xA
	global	??___wmul
??___wmul:	; 0 bytes @ 0xA
	global	count_write@count
count_write@count:	; 2 bytes @ 0xA
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0xA
	ds	1
	global	?_myitoa
?_myitoa:	; 0 bytes @ 0xB
	global	myitoa@val
myitoa@val:	; 2 bytes @ 0xB
	ds	1
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0xC
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0xC
	global	?_count_read
?_count_read:	; 2 bytes @ 0xC
	global	count_write@addr1
count_write@addr1:	; 1 bytes @ 0xC
	global	count_read@addr2
count_read@addr2:	; 1 bytes @ 0xC
	global	DelayMs@cnt
DelayMs@cnt:	; 2 bytes @ 0xC
	ds	1
	global	myitoa@p
myitoa@p:	; 1 bytes @ 0xD
	ds	1
	global	??_Inidcate_Buzzer
??_Inidcate_Buzzer:	; 0 bytes @ 0xE
	global	??_Print_Name
??_Print_Name:	; 0 bytes @ 0xE
	global	??_control_valve
??_control_valve:	; 0 bytes @ 0xE
	global	??_Lcd_Init
??_Lcd_Init:	; 0 bytes @ 0xE
	global	??_Lcd_String
??_Lcd_String:	; 0 bytes @ 0xE
	global	??_Print_Menu
??_Print_Menu:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x0
	global	??_count_write
??_count_write:	; 0 bytes @ 0x0
	global	??_count_read
??_count_read:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	rev@t
rev@t:	; 1 bytes @ 0x0
	global	_Write_ValveIn_Memory$4135
_Write_ValveIn_Memory$4135:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	rev@f
rev@f:	; 1 bytes @ 0x1
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x1
	ds	1
	global	rev@l
rev@l:	; 1 bytes @ 0x2
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x2
	global	_Write_ValveIn_Memory$4136
_Write_ValveIn_Memory$4136:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_Lcd_Cmd
??_Lcd_Cmd:	; 0 bytes @ 0x3
	global	?_control_valve
?_control_valve:	; 0 bytes @ 0x3
	global	??_Lcd_Data
??_Lcd_Data:	; 0 bytes @ 0x3
	global	rev@buf
rev@buf:	; 1 bytes @ 0x3
	global	control_valve@load_time
control_valve@load_time:	; 2 bytes @ 0x3
	ds	1
	global	??_myitoa
??_myitoa:	; 0 bytes @ 0x4
	global	Lcd_Cmd@s
Lcd_Cmd@s:	; 1 bytes @ 0x4
	global	Lcd_Data@x
Lcd_Data@x:	; 1 bytes @ 0x4
	global	_Write_ValveIn_Memory$4137
_Write_ValveIn_Memory$4137:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
	global	??_print_yes_no
??_print_yes_no:	; 0 bytes @ 0x5
	global	?_Lcd_String
?_Lcd_String:	; 0 bytes @ 0x5
	global	count_read@addr1
count_read@addr1:	; 1 bytes @ 0x5
	global	Lcd_String@st
Lcd_String@st:	; 2 bytes @ 0x5
	global	control_valve@delay_time
control_valve@delay_time:	; 2 bytes @ 0x5
	ds	1
	global	print_yes_no@MEM
print_yes_no@MEM:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	_Write_ValveIn_Memory$4138
_Write_ValveIn_Memory$4138:	; 2 bytes @ 0x6
	ds	1
	global	?_Num_Disp
?_Num_Disp:	; 0 bytes @ 0x7
	global	Lcd_String@clear
Lcd_String@clear:	; 1 bytes @ 0x7
	global	Num_Disp@dat
Num_Disp@dat:	; 2 bytes @ 0x7
	ds	1
	global	Lcd_String@second_line
Lcd_String@second_line:	; 1 bytes @ 0x8
	global	_Write_ValveIn_Memory$4139
_Write_ValveIn_Memory$4139:	; 2 bytes @ 0x8
	ds	1
	global	??_call_control_valve
??_call_control_valve:	; 0 bytes @ 0x9
	global	Num_Disp@digit
Num_Disp@digit:	; 1 bytes @ 0x9
	ds	1
	global	Num_Disp@dot
Num_Disp@dot:	; 1 bytes @ 0xA
	global	Write_ValveIn_Memory@VALVE
Write_ValveIn_Memory@VALVE:	; 1 bytes @ 0xA
	ds	1
	global	??_Num_Disp
??_Num_Disp:	; 0 bytes @ 0xB
	global	Write_ValveIn_Memory@chr
Write_ValveIn_Memory@chr:	; 1 bytes @ 0xB
	ds	2
	global	Num_Disp@i
Num_Disp@i:	; 2 bytes @ 0xD
	ds	2
	global	Num_Disp@temp
Num_Disp@temp:	; 2 bytes @ 0xF
	ds	2
	global	??_change_modes
??_change_modes:	; 0 bytes @ 0x11
	global	_call_control_valve$5508
_call_control_valve$5508:	; 2 bytes @ 0x11
	ds	2
	global	??_Mode_Init
??_Mode_Init:	; 0 bytes @ 0x13
	global	??_enable_valves
??_enable_valves:	; 0 bytes @ 0x13
	ds	2
	global	Mode_Init@option
Mode_Init@option:	; 1 bytes @ 0x15
	ds	3
	global	_enable_valves$5507
_enable_valves$5507:	; 2 bytes @ 0x18
	ds	2
	global	enable_valves@i
enable_valves@i:	; 2 bytes @ 0x1A
	ds	2
	global	enable_valves@index
enable_valves@index:	; 1 bytes @ 0x1C
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x1D
	ds	5
;;Data sizes: Strings 416, constant 0, data 10, bss 41, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     34      79
;; BANK1           80      0      10
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_count_read	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?_strlen	unsigned int  size(1) Largest target is 4
;;		 -> buff(BANK0[4]), 
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_GetADCValue	unsigned int  size(1) Largest target is 0
;;
;; strlen@s	PTR const unsigned char  size(1) Largest target is 4
;;		 -> buff(BANK0[4]), 
;;
;; strlen@cp	PTR const unsigned char  size(1) Largest target is 4
;;		 -> buff(BANK0[4]), 
;;
;; myitoa@p	PTR unsigned char  size(1) Largest target is 4
;;		 -> buff(BANK0[4]), 
;;
;; rev@l	PTR unsigned char  size(1) Largest target is 4
;;		 -> buff(BANK0[4]), 
;;
;; rev@buf	PTR unsigned char  size(1) Largest target is 4
;;		 -> buff(BANK0[4]), 
;;
;; rev@f	PTR unsigned char  size(1) Largest target is 4
;;		 -> buff(BANK0[4]), 
;;
;; Lcd_String@st	PTR const unsigned char  size(2) Largest target is 17
;;		 -> STR_45(CODE[12]), STR_44(CODE[10]), STR_43(CODE[6]), STR_42(CODE[10]), 
;;		 -> STR_41(CODE[6]), STR_40(CODE[15]), STR_39(CODE[12]), STR_38(CODE[6]), 
;;		 -> STR_37(CODE[13]), STR_36(CODE[6]), STR_35(CODE[16]), STR_34(CODE[6]), 
;;		 -> STR_33(CODE[10]), STR_32(CODE[7]), STR_31(CODE[15]), STR_30(CODE[11]), 
;;		 -> STR_29(CODE[9]), STR_28(CODE[12]), STR_27(CODE[9]), STR_26(CODE[14]), 
;;		 -> STR_25(CODE[14]), STR_24(CODE[13]), STR_23(CODE[15]), STR_22(CODE[16]), 
;;		 -> STR_21(CODE[17]), STR_20(CODE[4]), STR_19(CODE[6]), STR_18(CODE[6]), 
;;		 -> STR_17(CODE[10]), STR_16(CODE[9]), STR_15(CODE[12]), STR_14(CODE[9]), 
;;		 -> STR_13(CODE[12]), STR_12(CODE[13]), STR_11(CODE[11]), STR_10(CODE[13]), 
;;		 -> STR_9(CODE[15]), STR_8(CODE[13]), STR_7(CODE[15]), STR_6(CODE[14]), 
;;		 -> STR_5(CODE[15]), STR_4(CODE[13]), STR_3(CODE[14]), STR_2(CODE[17]), 
;;		 -> STR_1(CODE[16]), buff(BANK0[4]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_DelayMs
;;   _main->_myitoa
;;   _change_modes->_DelayMs
;;   _change_modes->_count_read
;;   _enable_valves->_DelayMs
;;   _enable_valves->_myitoa
;;   _enable_valves->_count_read
;;   _call_control_valve->_myitoa
;;   _myitoa->_rev
;;   _Num_Disp->_count_read
;;   _Lcd_Init->_DelayMs
;;   _control_valve->_DelayMs
;;   _count_read->___wmul
;;   _Write_ValveIn_Memory->_eeprom_write
;;   _count_write->_eeprom_write
;;   _Read_ValveFrom_Memory->_eeprom_read
;;   _Inidcate_Buzzer->_DelayMs
;;   _rev->_strlen
;;   _Lcd_Data->_DelayMs
;;   _Lcd_Cmd->_DelayMs
;;   ___lwdiv->___wmul
;;   ___wmul->_eeprom_read
;;   _eeprom_write->_eeprom_read
;;   _eeprom_read->___bmul
;;   _DelayMs->___wmul
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_enable_valves
;;   _change_modes->_Num_Disp
;;   _enable_valves->_call_control_valve
;;   _Mode_Init->_call_control_valve
;;   _call_control_valve->_Lcd_String
;;   _Print_Menu->_Lcd_String
;;   _Print_Name->_Lcd_String
;;   _print_yes_no->_Lcd_Cmd
;;   _print_yes_no->_Lcd_Data
;;   _myitoa->_rev
;;   _Num_Disp->___lwdiv
;;   _Lcd_String->_Lcd_Cmd
;;   _Lcd_String->_Lcd_Data
;;   _Lcd_Init->_Lcd_Cmd
;;   _control_valve->_DelayMs
;;   _Inidcate_Buzzer->_DelayMs
;;   _Lcd_Data->_DelayMs
;;   _Lcd_Cmd->_DelayMs
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 5, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 5     5      0   15088
;;                                             29 BANK0      5     5      0
;;                          _Port_Init
;;                           _Lcd_Init
;;                    _Inidcate_Buzzer
;;                         _Print_Name
;;                            _InitADC
;;                          _Mode_Init
;;                        _GetADCValue
;;                             ___wmul
;;                            ___lwdiv
;;                            _DelayMs
;;                        _eeprom_read
;;                             _myitoa
;;                         _Lcd_String
;;                            _Lcd_Cmd
;;                          _key_press
;;                      _enable_valves
;;                       _change_modes
;; ---------------------------------------------------------------------------------
;; (1) _change_modes                                         3     3      0    2429
;;                                             17 BANK0      3     3      0
;;                         _Print_Name
;;                         _Lcd_String
;;                            _DelayMs
;;                            _Lcd_Cmd
;;                           _Lcd_Data
;;                       _print_yes_no
;;                        _eeprom_read
;;                         _count_read
;;                           _Num_Disp
;; ---------------------------------------------------------------------------------
;; (1) _enable_valves                                       12    12      0    7479
;;                                             19 BANK0     10    10      0
;;                         _Print_Menu
;;                    _Inidcate_Buzzer
;;                        _eeprom_read
;;                        _count_write
;;                 _call_control_valve
;;                         _Print_Name
;;                          _key_press
;;                        _offthevalve
;;                       _eeprom_write
;;                            _Lcd_Cmd
;;                           _Num_Disp
;;                            _DelayMs
;;                             _myitoa
;;                         _Lcd_String
;;               _Write_ValveIn_Memory
;;                       _print_yes_no
;;                             ___bmul
;;                           _Lcd_Data
;;                            ___awdiv
;;                         _onthevalve
;;                             ___wmul
;;                         _count_read
;; ---------------------------------------------------------------------------------
;; (1) _Mode_Init                                            3     3      0    2762
;;                                             19 BANK0      3     3      0
;;              _Read_ValveFrom_Memory
;;                        _eeprom_read
;;                         _Lcd_String
;;                       _eeprom_write
;;                            _Lcd_Cmd
;;                 _call_control_valve
;; ---------------------------------------------------------------------------------
;; (2) _call_control_valve                                  12    12      0    2043
;;                                              9 BANK0     10    10      0
;;                             ___bmul
;;                        _eeprom_read
;;                      _control_valve
;;                            _Lcd_Cmd
;;                             _myitoa
;;                         _Lcd_String
;;                       _eeprom_write
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (2) _Print_Menu                                           0     0      0     313
;;                         _Lcd_String
;; ---------------------------------------------------------------------------------
;; (2) _Print_Name                                           0     0      0     313
;;                         _Lcd_String
;; ---------------------------------------------------------------------------------
;; (2) _print_yes_no                                         2     2      0     378
;;                                              5 BANK0      2     2      0
;;              _Read_ValveFrom_Memory
;;                            _Lcd_Cmd
;;                           _Lcd_Data
;; ---------------------------------------------------------------------------------
;; (2) _myitoa                                               5     2      3    1066
;;                                             11 COMMON     3     0      3
;;                                              4 BANK0      2     2      0
;;                            ___awmod
;;                            ___awdiv
;;                                _rev
;; ---------------------------------------------------------------------------------
;; (2) _Num_Disp                                            10     6      4     953
;;                                              7 BANK0     10     6      4
;;                             ___wmul
;;                            ___lwdiv
;;                           _Lcd_Data
;;                            ___lwmod
;;                         _count_read (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _Lcd_String                                           4     0      4     313
;;                                              5 BANK0      4     0      4
;;                            _Lcd_Cmd
;;                           _Lcd_Data
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Init                                             0     0      0     180
;;                            _Lcd_Cmd
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (3) _control_valve                                        4     0      4     204
;;                                              3 BANK0      4     0      4
;;                         _onthevalve
;;                             ___wmul
;;                            _DelayMs
;;                        _offthevalve
;;                        _eeprom_read (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _count_read                                           8     6      2     158
;;                                             12 COMMON     2     0      2
;;                                              0 BANK0      6     6      0
;;                        _eeprom_read
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (2) _Write_ValveIn_Memory                                15    14      1     550
;;                                              9 COMMON     3     2      1
;;                                              0 BANK0     12    12      0
;;                       _eeprom_write
;; ---------------------------------------------------------------------------------
;; (2) _count_write                                          7     4      3     248
;;                                              9 COMMON     4     1      3
;;                                              0 BANK0      3     3      0
;;                       _eeprom_write
;;                        _eeprom_read
;; ---------------------------------------------------------------------------------
;; (3) _Read_ValveFrom_Memory                                4     4      0     132
;;                                              6 COMMON     4     4      0
;;                        _eeprom_read
;; ---------------------------------------------------------------------------------
;; (2) _Inidcate_Buzzer                                      0     0      0      68
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (3) _rev                                                  5     5      0     337
;;                                             10 COMMON     1     1      0
;;                                              0 BANK0      4     4      0
;;                             _strlen
;; ---------------------------------------------------------------------------------
;; (3) _Lcd_Data                                             2     2      0     112
;;                                              3 BANK0      2     2      0
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (3) _Lcd_Cmd                                              2     2      0     112
;;                                              3 BANK0      2     2      0
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _GetADCValue                                          5     3      2      22
;;                                              0 COMMON     5     3      2
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (3) ___lwmod                                              6     2      4     159
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              8     4      4     162
;;                                             12 COMMON     1     1      0
;;                                              0 BANK0      7     3      4
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                              6 COMMON     6     2      4
;;                        _eeprom_read (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___bmul                                               4     3      1      92
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (2) _onthevalve                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _offthevalve                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _eeprom_write                                         3     2      1      50
;;                                              6 COMMON     3     2      1
;;                             ___bmul (ARG)
;;                        _eeprom_read (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _key_press                                            1     1      0       0
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _eeprom_read                                          2     1      1      22
;;                                              4 COMMON     2     1      1
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _Port_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _strlen                                              10     8      2      89
;;                                              0 COMMON    10     8      2
;; ---------------------------------------------------------------------------------
;; (4) _DelayMs                                              5     3      2      68
;;                                             12 COMMON     2     0      2
;;                                              0 BANK0      3     3      0
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _InitADC                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Port_Init
;;   _Lcd_Init
;;     _Lcd_Cmd
;;       _DelayMs
;;         ___wmul (ARG)
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
;;     _DelayMs
;;       ___wmul (ARG)
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;   _Inidcate_Buzzer
;;     _DelayMs
;;       ___wmul (ARG)
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;   _Print_Name
;;     _Lcd_String
;;       _Lcd_Cmd
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;       _Lcd_Data
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;   _InitADC
;;   _Mode_Init
;;     _Read_ValveFrom_Memory
;;       _eeprom_read
;;         ___bmul (ARG)
;;     _eeprom_read
;;       ___bmul (ARG)
;;     _Lcd_String
;;       _Lcd_Cmd
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;       _Lcd_Data
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;     _eeprom_write
;;       ___bmul (ARG)
;;       _eeprom_read (ARG)
;;         ___bmul (ARG)
;;     _Lcd_Cmd
;;       _DelayMs
;;         ___wmul (ARG)
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
;;     _call_control_valve
;;       ___bmul
;;       _eeprom_read
;;         ___bmul (ARG)
;;       _control_valve
;;         _onthevalve
;;         ___wmul
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;         _offthevalve
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;         ___bmul (ARG)
;;       _Lcd_Cmd
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;       _myitoa
;;         ___awmod
;;         ___awdiv
;;         _rev
;;           _strlen
;;       _Lcd_String
;;         _Lcd_Cmd
;;           _DelayMs
;;             ___wmul (ARG)
;;               _eeprom_read (ARG)
;;                 ___bmul (ARG)
;;         _Lcd_Data
;;           _DelayMs
;;             ___wmul (ARG)
;;               _eeprom_read (ARG)
;;                 ___bmul (ARG)
;;       _eeprom_write
;;         ___bmul (ARG)
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;       ___wmul
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;   _GetADCValue
;;   ___wmul
;;     _eeprom_read (ARG)
;;       ___bmul (ARG)
;;   ___lwdiv
;;     ___wmul (ARG)
;;       _eeprom_read (ARG)
;;         ___bmul (ARG)
;;   _DelayMs
;;     ___wmul (ARG)
;;       _eeprom_read (ARG)
;;         ___bmul (ARG)
;;   _eeprom_read
;;     ___bmul (ARG)
;;   _myitoa
;;     ___awmod
;;     ___awdiv
;;     _rev
;;       _strlen
;;   _Lcd_String
;;     _Lcd_Cmd
;;       _DelayMs
;;         ___wmul (ARG)
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
;;     _Lcd_Data
;;       _DelayMs
;;         ___wmul (ARG)
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
;;   _Lcd_Cmd
;;     _DelayMs
;;       ___wmul (ARG)
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;   _key_press
;;   _enable_valves
;;     _Print_Menu
;;       _Lcd_String
;;         _Lcd_Cmd
;;           _DelayMs
;;             ___wmul (ARG)
;;               _eeprom_read (ARG)
;;                 ___bmul (ARG)
;;         _Lcd_Data
;;           _DelayMs
;;             ___wmul (ARG)
;;               _eeprom_read (ARG)
;;                 ___bmul (ARG)
;;     _Inidcate_Buzzer
;;       _DelayMs
;;         ___wmul (ARG)
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
;;     _eeprom_read
;;       ___bmul (ARG)
;;     _count_write
;;       _eeprom_write
;;         ___bmul (ARG)
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;       _eeprom_read
;;         ___bmul (ARG)
;;     _call_control_valve
;;       ___bmul
;;       _eeprom_read
;;         ___bmul (ARG)
;;       _control_valve
;;         _onthevalve
;;         ___wmul
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;         _offthevalve
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;         ___bmul (ARG)
;;       _Lcd_Cmd
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;       _myitoa
;;         ___awmod
;;         ___awdiv
;;         _rev
;;           _strlen
;;       _Lcd_String
;;         _Lcd_Cmd
;;           _DelayMs
;;             ___wmul (ARG)
;;               _eeprom_read (ARG)
;;                 ___bmul (ARG)
;;         _Lcd_Data
;;           _DelayMs
;;             ___wmul (ARG)
;;               _eeprom_read (ARG)
;;                 ___bmul (ARG)
;;       _eeprom_write
;;         ___bmul (ARG)
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;       ___wmul
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;     _Print_Name
;;       _Lcd_String
;;         _Lcd_Cmd
;;           _DelayMs
;;             ___wmul (ARG)
;;               _eeprom_read (ARG)
;;                 ___bmul (ARG)
;;         _Lcd_Data
;;           _DelayMs
;;             ___wmul (ARG)
;;               _eeprom_read (ARG)
;;                 ___bmul (ARG)
;;     _key_press
;;     _offthevalve
;;     _eeprom_write
;;       ___bmul (ARG)
;;       _eeprom_read (ARG)
;;         ___bmul (ARG)
;;     _Lcd_Cmd
;;       _DelayMs
;;         ___wmul (ARG)
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
;;     _Num_Disp
;;       ___wmul
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;       ___lwdiv
;;         ___wmul (ARG)
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
;;       _Lcd_Data
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;       ___lwmod
;;       _count_read (ARG)
;;         _eeprom_read
;;           ___bmul (ARG)
;;         ___wmul
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
;;     _DelayMs
;;       ___wmul (ARG)
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;     _myitoa
;;       ___awmod
;;       ___awdiv
;;       _rev
;;         _strlen
;;     _Lcd_String
;;       _Lcd_Cmd
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;       _Lcd_Data
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;     _Write_ValveIn_Memory
;;       _eeprom_write
;;         ___bmul (ARG)
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;     _print_yes_no
;;       _Read_ValveFrom_Memory
;;         _eeprom_read
;;           ___bmul (ARG)
;;       _Lcd_Cmd
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;       _Lcd_Data
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;     ___bmul
;;     _Lcd_Data
;;       _DelayMs
;;         ___wmul (ARG)
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
;;     ___awdiv
;;     _onthevalve
;;     ___wmul
;;       _eeprom_read (ARG)
;;         ___bmul (ARG)
;;     _count_read
;;       _eeprom_read
;;         ___bmul (ARG)
;;       ___wmul
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;   _change_modes
;;     _Print_Name
;;       _Lcd_String
;;         _Lcd_Cmd
;;           _DelayMs
;;             ___wmul (ARG)
;;               _eeprom_read (ARG)
;;                 ___bmul (ARG)
;;         _Lcd_Data
;;           _DelayMs
;;             ___wmul (ARG)
;;               _eeprom_read (ARG)
;;                 ___bmul (ARG)
;;     _Lcd_String
;;       _Lcd_Cmd
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;       _Lcd_Data
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;     _DelayMs
;;       ___wmul (ARG)
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;     _Lcd_Cmd
;;       _DelayMs
;;         ___wmul (ARG)
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
;;     _Lcd_Data
;;       _DelayMs
;;         ___wmul (ARG)
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
;;     _print_yes_no
;;       _Read_ValveFrom_Memory
;;         _eeprom_read
;;           ___bmul (ARG)
;;       _Lcd_Cmd
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;       _Lcd_Data
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;     _eeprom_read
;;       ___bmul (ARG)
;;     _count_read
;;       _eeprom_read
;;         ___bmul (ARG)
;;       ___wmul
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;     _Num_Disp
;;       ___wmul
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;       ___lwdiv
;;         ___wmul (ARG)
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
;;       _Lcd_Data
;;         _DelayMs
;;           ___wmul (ARG)
;;             _eeprom_read (ARG)
;;               ___bmul (ARG)
;;       ___lwmod
;;       _count_read (ARG)
;;         _eeprom_read
;;           ___bmul (ARG)
;;         ___wmul
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       A       7       12.5%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      6C      12        0.0%
;;ABS                  0      0      67       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       5       2        0.0%
;;BANK0               50     22      4F       5       98.8%
;;BITBANK0            50      0       4       4        5.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 31 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Port_Init
;;		_Lcd_Init
;;		_Inidcate_Buzzer
;;		_Print_Name
;;		_InitADC
;;		_Mode_Init
;;		_GetADCValue
;;		___wmul
;;		___lwdiv
;;		_DelayMs
;;		_eeprom_read
;;		_myitoa
;;		_Lcd_String
;;		_Lcd_Cmd
;;		_key_press
;;		_enable_valves
;;		_change_modes
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage.c"
	line	31
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	33
	
l10164:	
;Beverage.c: 33: Port_Init();
	fcall	_Port_Init
	line	34
;Beverage.c: 34: Lcd_Init();
	fcall	_Lcd_Init
	line	35
;Beverage.c: 35: Inidcate_Buzzer();
	fcall	_Inidcate_Buzzer
	line	36
	
l10166:	
;Beverage.c: 36: Print_Name();
	fcall	_Print_Name
	line	37
	
l10168:	
;Beverage.c: 37: InitADC();
	fcall	_InitADC
	line	38
;Beverage.c: 38: Mode_Init();
	fcall	_Mode_Init
	line	40
	
l10170:	
;Beverage.c: 40: Enable_Config_Mode=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	goto	l10172
	line	42
;Beverage.c: 42: while(1)
	
l2248:	
	line	44
	
l10172:	
;Beverage.c: 43: {
;Beverage.c: 44: ADC_value=GetADCValue(0);
	movlw	(0)
	fcall	_GetADCValue
	movf	(1+(?_GetADCValue)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ADC_value+1)
	addwf	(_ADC_value+1)
	movf	(0+(?_GetADCValue)),w
	clrf	(_ADC_value)
	addwf	(_ADC_value)

	line	45
	
l10174:	
;Beverage.c: 45: temperature=(ADC_value*100)/204;
	movlw	low(0CCh)
	movwf	(?___lwdiv)
	movlw	high(0CCh)
	movwf	((?___lwdiv))+1
	movf	(_ADC_value+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(_ADC_value),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(0+(?___wmul)),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(_temperature+1)
	addwf	(_temperature+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_temperature)
	addwf	(_temperature)

	line	46
	
l10176:	
;Beverage.c: 46: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	48
	
l10178:	
;Beverage.c: 48: if(temperature+10<=(eeprom_read(120)) && Enable_Config_Mode==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temperature),w
	addlw	low(0Ah)
	movwf	(??_main+0)+0
	movf	(_temperature+1),w
	skipnc
	addlw	1
	addlw	high(0Ah)
	movwf	1+(??_main+0)+0
	movlw	(078h)
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+3)+0
	clrf	(??_main+3)+0+1
	movf	1+(??_main+0)+0,w
	subwf	1+(??_main+3)+0,w
	skipz
	goto	u7235
	movf	0+(??_main+0)+0,w
	subwf	0+(??_main+3)+0,w
u7235:
	skipc
	goto	u7231
	goto	u7230
u7231:
	goto	l2249
u7230:
	
l10180:	
	btfss	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	goto	u7241
	goto	u7240
u7241:
	goto	l2249
u7240:
	line	50
	
l10182:	
;Beverage.c: 49: {
;Beverage.c: 50: RC3=1;
	bsf	(59/8),(59)&7
	line	51
;Beverage.c: 51: Enable_Normal_Mode=0;
	bcf	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	line	52
	
l10184:	
;Beverage.c: 52: myitoa(temperature,buff);
	movf	(_temperature+1),w
	clrf	(?_myitoa+1)
	addwf	(?_myitoa+1)
	movf	(_temperature),w
	clrf	(?_myitoa)
	addwf	(?_myitoa)

	movlw	(_buff)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_myitoa)+02h
	fcall	_myitoa
	line	53
	
l10186:	
;Beverage.c: 53: if(_temp_flag==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(__temp_flag/8),(__temp_flag)&7
	goto	u7251
	goto	u7250
u7251:
	goto	l10190
u7250:
	line	54
	
l10188:	
;Beverage.c: 54: Lcd_String("LOW TEMPERATURE",1,0);
	movlw	low(STR_1|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_1|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	goto	l10190
	
l2250:	
	line	55
	
l10190:	
;Beverage.c: 55: Lcd_Cmd(0xC7);
	movlw	(0C7h)
	fcall	_Lcd_Cmd
	line	56
	
l10192:	
;Beverage.c: 56: Lcd_String(buff,0,0);
	movlw	(_buff&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	(0x0/2)
	movwf	(?_Lcd_String+1)
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	57
	
l10194:	
;Beverage.c: 57: _temp_flag=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(__temp_flag/8),(__temp_flag)&7
	line	58
	
l2249:	
	line	59
;Beverage.c: 58: }
;Beverage.c: 59: if(temperature>eeprom_read(120) && _temp_flag==1)
	movlw	(078h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	clrf	(??_main+1)+0+1
	movf	(_temperature+1),w
	subwf	1+(??_main+1)+0,w
	skipz
	goto	u7265
	movf	(_temperature),w
	subwf	0+(??_main+1)+0,w
u7265:
	skipnc
	goto	u7261
	goto	u7260
u7261:
	goto	l2251
u7260:
	
l10196:	
	btfss	(__temp_flag/8),(__temp_flag)&7
	goto	u7271
	goto	u7270
u7271:
	goto	l2251
u7270:
	line	61
	
l10198:	
;Beverage.c: 60: {
;Beverage.c: 61: RC3=0;
	bcf	(59/8),(59)&7
	line	62
	
l10200:	
;Beverage.c: 62: Lcd_String("HAVE A HOT SIP !",1,0);
	movlw	low(STR_2|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_2|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	63
	
l10202:	
;Beverage.c: 63: DelayMs(1500);
	movlw	low(05DCh)
	movwf	(?_DelayMs)
	movlw	high(05DCh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	64
	
l10204:	
;Beverage.c: 64: Enable_Normal_Mode=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	line	65
	
l10206:	
;Beverage.c: 65: Enable_Config_Mode=1;
	bsf	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	line	66
	
l10208:	
;Beverage.c: 66: Print_Name();
	fcall	_Print_Name
	line	67
	
l10210:	
;Beverage.c: 67: _temp_flag=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(__temp_flag/8),(__temp_flag)&7
	line	68
	
l2251:	
	line	69
;Beverage.c: 68: }
;Beverage.c: 69: key_press();
	fcall	_key_press
	line	70
	
l10212:	
;Beverage.c: 70: enable_valves();
	fcall	_enable_valves
	line	71
	
l10214:	
;Beverage.c: 71: change_modes();
	fcall	_change_modes
	goto	l10172
	line	72
	
l2252:	
	line	42
	goto	l10172
	
l2253:	
	line	73
	
l2254:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_change_modes
psect	text779,local,class=CODE,delta=2
global __ptext779
__ptext779:

;; *************** function _change_modes *****************
;; Defined at:
;;		line 741 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Print_Name
;;		_Lcd_String
;;		_DelayMs
;;		_Lcd_Cmd
;;		_Lcd_Data
;;		_print_yes_no
;;		_eeprom_read
;;		_count_read
;;		_Num_Disp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text779
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	741
	global	__size_of_change_modes
	__size_of_change_modes	equ	__end_of_change_modes-_change_modes
	
_change_modes:	
	opt	stack 3
; Regs used in _change_modes: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	742
	
l10044:	
;Beverage_services.c: 742: switch (_DISABLE_MODE)
	goto	l10048
	line	744
;Beverage_services.c: 743: {
;Beverage_services.c: 744: case _Normal_Mode: Enable_Normal_Mode=0;
	
l3325:	
	bcf	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	line	745
;Beverage_services.c: 745: break;
	goto	l10052
	line	746
;Beverage_services.c: 746: case _Password: Enable_Password=0;
	
l3327:	
	bcf	(_Enable_Password/8),(_Enable_Password)&7
	line	747
;Beverage_services.c: 747: break;
	goto	l10052
	line	748
;Beverage_services.c: 748: case _Config_Mode: Enable_Config_Mode=0;
	
l3328:	
	bcf	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	line	749
;Beverage_services.c: 749: break;
	goto	l10052
	line	750
;Beverage_services.c: 750: case _Valves: Enable_Valves=0;
	
l3329:	
	bcf	(_Enable_Valves/8),(_Enable_Valves)&7
	line	751
;Beverage_services.c: 751: break;
	goto	l10052
	line	752
;Beverage_services.c: 752: case _Selection: Enable_Selection=0;
	
l3330:	
	bcf	(_Enable_Selection/8),(_Enable_Selection)&7
	line	753
;Beverage_services.c: 753: break;
	goto	l10052
	line	754
;Beverage_services.c: 754: case _Coffee_Dication_Time: Enable_Coffee_Dication_Time=0;
	
l3331:	
	bcf	(_Enable_Coffee_Dication_Time/8),(_Enable_Coffee_Dication_Time)&7
	line	755
;Beverage_services.c: 755: break;
	goto	l10052
	line	756
;Beverage_services.c: 756: case _Tea_Dication_Time: Enable_Tea_Dication_Time=0;
	
l3332:	
	bcf	(_Enable_Tea_Dication_Time/8),(_Enable_Tea_Dication_Time)&7
	line	757
;Beverage_services.c: 757: break;
	goto	l10052
	line	758
;Beverage_services.c: 758: case _Dication_Delay: Enable_Dication_Delay=0;
	
l3333:	
	bcf	(_Enable_Dication_Delay/8),(_Enable_Dication_Delay)&7
	line	759
;Beverage_services.c: 759: break;
	goto	l10052
	line	760
;Beverage_services.c: 760: case _Hot_Water_Time: Enable_Hot_Water_Time=0;
	
l3334:	
	bcf	(_Enable_Hot_Water_Time/8),(_Enable_Hot_Water_Time)&7
	line	761
;Beverage_services.c: 761: break;
	goto	l10052
	line	762
;Beverage_services.c: 762: case _Temperature: Enable_Temperature=0;
	
l3335:	
	bcf	(_Enable_Temperature/8),(_Enable_Temperature)&7
	line	763
;Beverage_services.c: 763: break;
	goto	l10052
	line	764
;Beverage_services.c: 764: case _Cup_Count: Enable_Cup_Count=0;
	
l3336:	
	bcf	(_Enable_Cup_Count/8),(_Enable_Cup_Count)&7
	line	765
;Beverage_services.c: 765: break;
	goto	l10052
	line	766
;Beverage_services.c: 766: case _Count_Reset: Enable_Count_Reset=0;
	
l3337:	
	bcf	(_Enable_Count_Reset/8),(_Enable_Count_Reset)&7
	line	767
;Beverage_services.c: 767: break;
	goto	l10052
	line	768
;Beverage_services.c: 768: case _Shortcut_Mode: Enable_Shortcut_Mode=0;
	
l3338:	
	bcf	(_Enable_Shortcut_Mode/8),(_Enable_Shortcut_Mode)&7
	line	769
;Beverage_services.c: 769: break;
	goto	l10052
	line	770
	
l10046:	
;Beverage_services.c: 770: }
	goto	l10052
	line	742
	
l3324:	
	
l10048:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__DISABLE_MODE),w
	; Switch size 1, requested type "space"
; Number of cases is 13, Range of values is 1 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           40    21 (average)
; direct_byte           53    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l3325
	xorlw	2^1	; case 2
	skipnz
	goto	l3327
	xorlw	3^2	; case 3
	skipnz
	goto	l3328
	xorlw	4^3	; case 4
	skipnz
	goto	l3329
	xorlw	5^4	; case 5
	skipnz
	goto	l3330
	xorlw	6^5	; case 6
	skipnz
	goto	l3331
	xorlw	7^6	; case 7
	skipnz
	goto	l3332
	xorlw	8^7	; case 8
	skipnz
	goto	l3333
	xorlw	9^8	; case 9
	skipnz
	goto	l3334
	xorlw	11^9	; case 11
	skipnz
	goto	l3335
	xorlw	12^11	; case 12
	skipnz
	goto	l3336
	xorlw	13^12	; case 13
	skipnz
	goto	l3337
	xorlw	14^13	; case 14
	skipnz
	goto	l3338
	goto	l10052
	opt asmopt_on

	line	770
	
l3326:	
	line	771
;Beverage_services.c: 771: switch (_ENABLE_MODE)
	goto	l10052
	line	773
;Beverage_services.c: 772: {
;Beverage_services.c: 773: case _Normal_Mode: Enable_Normal_Mode=1;
	
l3340:	
	bsf	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	line	774
;Beverage_services.c: 774: break;
	goto	l3341
	line	775
;Beverage_services.c: 775: case _Password: Enable_Password=1;
	
l3342:	
	bsf	(_Enable_Password/8),(_Enable_Password)&7
	line	776
;Beverage_services.c: 776: break;
	goto	l3341
	line	777
;Beverage_services.c: 777: case _Config_Mode: Enable_Config_Mode=1;
	
l3343:	
	bsf	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	line	778
;Beverage_services.c: 778: break;
	goto	l3341
	line	779
;Beverage_services.c: 779: case _Valves: Enable_Valves=1;
	
l3344:	
	bsf	(_Enable_Valves/8),(_Enable_Valves)&7
	line	780
;Beverage_services.c: 780: break;
	goto	l3341
	line	781
;Beverage_services.c: 781: case _Selection: Enable_Selection=1;
	
l3345:	
	bsf	(_Enable_Selection/8),(_Enable_Selection)&7
	line	782
;Beverage_services.c: 782: break;
	goto	l3341
	line	783
;Beverage_services.c: 783: case _Coffee_Dication_Time: Enable_Coffee_Dication_Time=1;
	
l3346:	
	bsf	(_Enable_Coffee_Dication_Time/8),(_Enable_Coffee_Dication_Time)&7
	line	784
;Beverage_services.c: 784: break;
	goto	l3341
	line	785
;Beverage_services.c: 785: case _Tea_Dication_Time: Enable_Tea_Dication_Time=1;
	
l3347:	
	bsf	(_Enable_Tea_Dication_Time/8),(_Enable_Tea_Dication_Time)&7
	line	786
;Beverage_services.c: 786: break;
	goto	l3341
	line	787
;Beverage_services.c: 787: case _Dication_Delay: Enable_Dication_Delay=1;
	
l3348:	
	bsf	(_Enable_Dication_Delay/8),(_Enable_Dication_Delay)&7
	line	788
;Beverage_services.c: 788: break;
	goto	l3341
	line	789
;Beverage_services.c: 789: case _Hot_Water_Time: Enable_Hot_Water_Time=1;
	
l3349:	
	bsf	(_Enable_Hot_Water_Time/8),(_Enable_Hot_Water_Time)&7
	line	790
;Beverage_services.c: 790: break;
	goto	l3341
	line	791
;Beverage_services.c: 791: case _Temperature: Enable_Temperature=1;
	
l3350:	
	bsf	(_Enable_Temperature/8),(_Enable_Temperature)&7
	line	792
;Beverage_services.c: 792: break;
	goto	l3341
	line	793
;Beverage_services.c: 793: case _Cup_Count: Enable_Cup_Count=1;
	
l3351:	
	bsf	(_Enable_Cup_Count/8),(_Enable_Cup_Count)&7
	line	794
;Beverage_services.c: 794: break;
	goto	l3341
	line	795
;Beverage_services.c: 795: case _Count_Reset: Enable_Count_Reset=1;
	
l3352:	
	bsf	(_Enable_Count_Reset/8),(_Enable_Count_Reset)&7
	line	796
;Beverage_services.c: 796: break;
	goto	l3341
	line	797
;Beverage_services.c: 797: case _Shortcut_Mode: Enable_Shortcut_Mode=1;
	
l3353:	
	bsf	(_Enable_Shortcut_Mode/8),(_Enable_Shortcut_Mode)&7
	line	798
;Beverage_services.c: 798: break;
	goto	l3341
	line	799
	
l10050:	
;Beverage_services.c: 799: }
	goto	l3341
	line	771
	
l3339:	
	
l10052:	
	movf	(__ENABLE_MODE),w
	; Switch size 1, requested type "space"
; Number of cases is 13, Range of values is 1 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           40    21 (average)
; direct_byte           53    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l3340
	xorlw	2^1	; case 2
	skipnz
	goto	l3342
	xorlw	3^2	; case 3
	skipnz
	goto	l3343
	xorlw	4^3	; case 4
	skipnz
	goto	l3344
	xorlw	5^4	; case 5
	skipnz
	goto	l3345
	xorlw	6^5	; case 6
	skipnz
	goto	l3346
	xorlw	7^6	; case 7
	skipnz
	goto	l3347
	xorlw	8^7	; case 8
	skipnz
	goto	l3348
	xorlw	9^8	; case 9
	skipnz
	goto	l3349
	xorlw	11^9	; case 11
	skipnz
	goto	l3350
	xorlw	12^11	; case 12
	skipnz
	goto	l3351
	xorlw	13^12	; case 13
	skipnz
	goto	l3352
	xorlw	14^13	; case 14
	skipnz
	goto	l3353
	goto	l3341
	opt asmopt_on

	line	799
	
l3341:	
	line	801
;Beverage_services.c: 801: if(Enable_Normal_Mode && (_PREVIOUS_MODE != _ENABLE_MODE))
	btfss	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	goto	u7011
	goto	u7010
u7011:
	goto	l10058
u7010:
	
l10054:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u7021
	goto	u7020
u7021:
	goto	l10058
u7020:
	line	803
	
l10056:	
;Beverage_services.c: 802: {
;Beverage_services.c: 803: Print_Name();
	fcall	_Print_Name
	goto	l10058
	line	804
	
l3354:	
	line	805
	
l10058:	
;Beverage_services.c: 804: }
;Beverage_services.c: 805: if(Enable_Password && (_PREVIOUS_MODE != _ENABLE_MODE))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Password/8),(_Enable_Password)&7
	goto	u7031
	goto	u7030
u7031:
	goto	l10064
u7030:
	
l10060:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u7041
	goto	u7040
u7041:
	goto	l10064
u7040:
	line	807
	
l10062:	
;Beverage_services.c: 806: {
;Beverage_services.c: 807: Lcd_String("PASSWORD: ",1,0);
	movlw	low(STR_30|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_30|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	goto	l10064
	line	808
	
l3355:	
	line	809
	
l10064:	
;Beverage_services.c: 808: }
;Beverage_services.c: 809: if(Enable_Valves && (_PREVIOUS_MODE != _ENABLE_MODE))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Valves/8),(_Enable_Valves)&7
	goto	u7051
	goto	u7050
u7051:
	goto	l10074
u7050:
	
l10066:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u7061
	goto	u7060
u7061:
	goto	l10074
u7060:
	line	811
	
l10068:	
;Beverage_services.c: 810: {
;Beverage_services.c: 811: Lcd_String("CONFIGURE MODE",1,0);
	movlw	low(STR_31|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_31|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	812
	
l10070:	
;Beverage_services.c: 812: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	813
	
l10072:	
;Beverage_services.c: 813: Lcd_String("MENU: ",1,0);
	movlw	low(STR_32|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_32|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	814
;Beverage_services.c: 814: Lcd_Cmd(0x86);
	movlw	(086h)
	fcall	_Lcd_Cmd
	line	815
;Beverage_services.c: 815: Lcd_Data('1');
	movlw	(031h)
	fcall	_Lcd_Data
	line	816
;Beverage_services.c: 816: print_yes_no(Next);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Next),w
	fcall	_print_yes_no
	goto	l10074
	line	817
	
l3356:	
	line	818
	
l10074:	
;Beverage_services.c: 817: }
;Beverage_services.c: 818: if(Enable_Selection && (_PREVIOUS_MODE != _ENABLE_MODE))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Selection/8),(_Enable_Selection)&7
	goto	u7071
	goto	u7070
u7071:
	goto	l10088
u7070:
	
l10076:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u7081
	goto	u7080
u7081:
	goto	l10088
u7080:
	line	820
	
l10078:	
;Beverage_services.c: 819: {
;Beverage_services.c: 820: Lcd_Cmd(0x01);
	movlw	(01h)
	fcall	_Lcd_Cmd
	line	821
	
l10080:	
;Beverage_services.c: 821: Lcd_String("SELECTION",0,0);
	movlw	low(STR_33|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_33|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	822
	
l10082:	
;Beverage_services.c: 822: Lcd_String(" MODE",0,0);
	movlw	low(STR_34|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_34|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	823
;Beverage_services.c: 823: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	824
;Beverage_services.c: 824: time=eeprom_read(10);
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_change_modes+1)+0
	clrf	(??_change_modes+1)+0+1
	movf	0+(??_change_modes+1)+0,w
	movwf	(_time)
	movf	1+(??_change_modes+1)+0,w
	movwf	(_time+1)
	line	825
	
l10084:	
;Beverage_services.c: 825: _PRESSED=_NORMAL_COFFEE_BUTTON;
	clrf	(__PRESSED)
	bsf	status,0
	rlf	(__PRESSED),f
	line	826
	
l10086:	
;Beverage_services.c: 826: Lcd_Cmd(0x01);
	movlw	(01h)
	fcall	_Lcd_Cmd
	goto	l10088
	line	827
	
l3357:	
	line	828
	
l10088:	
;Beverage_services.c: 827: }
;Beverage_services.c: 828: if(Enable_Coffee_Dication_Time && (_PREVIOUS_MODE != _ENABLE_MODE))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Coffee_Dication_Time/8),(_Enable_Coffee_Dication_Time)&7
	goto	u7091
	goto	u7090
u7091:
	goto	l10098
u7090:
	
l10090:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u7101
	goto	u7100
u7101:
	goto	l10098
u7100:
	line	830
	
l10092:	
;Beverage_services.c: 829: {
;Beverage_services.c: 830: Lcd_String("COFFEE DICATION",1,0);
	movlw	low(STR_35|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_35|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	831
;Beverage_services.c: 831: Lcd_String("TIME:",0,1);
	movlw	low(STR_36|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_36|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	bsf	status,0
	rlf	0+(?_Lcd_String)+03h,f
	fcall	_Lcd_String
	line	832
	
l10094:	
;Beverage_services.c: 832: time=eeprom_read(118);
	movlw	(076h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_change_modes+1)+0
	clrf	(??_change_modes+1)+0+1
	movf	0+(??_change_modes+1)+0,w
	movwf	(_time)
	movf	1+(??_change_modes+1)+0,w
	movwf	(_time+1)
	line	833
	
l10096:	
;Beverage_services.c: 833: _PRESSED=_NORMAL_TEA_BUTTON;
	movlw	(02h)
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(__PRESSED)
	goto	l10098
	line	834
	
l3358:	
	line	835
	
l10098:	
;Beverage_services.c: 834: }
;Beverage_services.c: 835: if(Enable_Tea_Dication_Time && (_PREVIOUS_MODE != _ENABLE_MODE))
	btfss	(_Enable_Tea_Dication_Time/8),(_Enable_Tea_Dication_Time)&7
	goto	u7111
	goto	u7110
u7111:
	goto	l10108
u7110:
	
l10100:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u7121
	goto	u7120
u7121:
	goto	l10108
u7120:
	line	837
	
l10102:	
;Beverage_services.c: 836: {
;Beverage_services.c: 837: Lcd_String("TEA DICATION",1,0);
	movlw	low(STR_37|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_37|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	838
;Beverage_services.c: 838: Lcd_String("TIME:",0,1);
	movlw	low(STR_38|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_38|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	bsf	status,0
	rlf	0+(?_Lcd_String)+03h,f
	fcall	_Lcd_String
	line	839
	
l10104:	
;Beverage_services.c: 839: time=eeprom_read(119);
	movlw	(077h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_change_modes+1)+0
	clrf	(??_change_modes+1)+0+1
	movf	0+(??_change_modes+1)+0,w
	movwf	(_time)
	movf	1+(??_change_modes+1)+0,w
	movwf	(_time+1)
	line	840
	
l10106:	
;Beverage_services.c: 840: _PRESSED=_NORMAL_TEA_BUTTON;
	movlw	(02h)
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(__PRESSED)
	goto	l10108
	line	841
	
l3359:	
	line	842
	
l10108:	
;Beverage_services.c: 841: }
;Beverage_services.c: 842: if(Enable_Temperature && (_PREVIOUS_MODE != _ENABLE_MODE))
	btfss	(_Enable_Temperature/8),(_Enable_Temperature)&7
	goto	u7131
	goto	u7130
u7131:
	goto	l10118
u7130:
	
l10110:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u7141
	goto	u7140
u7141:
	goto	l10118
u7140:
	line	844
	
l10112:	
;Beverage_services.c: 843: {
;Beverage_services.c: 844: Lcd_String("TEMPERATURE",1,0);
	movlw	low(STR_39|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_39|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	845
	
l10114:	
;Beverage_services.c: 845: time=eeprom_read(120);
	movlw	(078h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_change_modes+1)+0
	clrf	(??_change_modes+1)+0+1
	movf	0+(??_change_modes+1)+0,w
	movwf	(_time)
	movf	1+(??_change_modes+1)+0,w
	movwf	(_time+1)
	line	846
	
l10116:	
;Beverage_services.c: 846: _PRESSED=_NORMAL_TEA_BUTTON;
	movlw	(02h)
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(__PRESSED)
	goto	l10118
	line	847
	
l3360:	
	line	848
	
l10118:	
;Beverage_services.c: 847: }
;Beverage_services.c: 848: if(Enable_Dication_Delay && (_PREVIOUS_MODE != _ENABLE_MODE))
	btfss	(_Enable_Dication_Delay/8),(_Enable_Dication_Delay)&7
	goto	u7151
	goto	u7150
u7151:
	goto	l10128
u7150:
	
l10120:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u7161
	goto	u7160
u7161:
	goto	l10128
u7160:
	line	850
	
l10122:	
;Beverage_services.c: 849: {
;Beverage_services.c: 850: Lcd_String("DICATION DELAY",1,0);
	movlw	low(STR_40|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_40|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	851
;Beverage_services.c: 851: Lcd_String("TIME:",0,1);
	movlw	low(STR_41|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_41|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	bsf	status,0
	rlf	0+(?_Lcd_String)+03h,f
	fcall	_Lcd_String
	line	852
	
l10124:	
;Beverage_services.c: 852: time=eeprom_read(121);
	movlw	(079h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_change_modes+1)+0
	clrf	(??_change_modes+1)+0+1
	movf	0+(??_change_modes+1)+0,w
	movwf	(_time)
	movf	1+(??_change_modes+1)+0,w
	movwf	(_time+1)
	line	853
	
l10126:	
;Beverage_services.c: 853: _PRESSED=_NORMAL_TEA_BUTTON;
	movlw	(02h)
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(__PRESSED)
	goto	l10128
	line	854
	
l3361:	
	line	855
	
l10128:	
;Beverage_services.c: 854: }
;Beverage_services.c: 855: if(Enable_Hot_Water_Time && (_PREVIOUS_MODE != _ENABLE_MODE))
	btfss	(_Enable_Hot_Water_Time/8),(_Enable_Hot_Water_Time)&7
	goto	u7171
	goto	u7170
u7171:
	goto	l10138
u7170:
	
l10130:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u7181
	goto	u7180
u7181:
	goto	l10138
u7180:
	line	857
	
l10132:	
;Beverage_services.c: 856: {
;Beverage_services.c: 857: Lcd_String("HOT WATER",1,0);
	movlw	low(STR_42|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_42|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	858
;Beverage_services.c: 858: Lcd_String("TIME:",0,1);
	movlw	low(STR_43|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_43|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	bsf	status,0
	rlf	0+(?_Lcd_String)+03h,f
	fcall	_Lcd_String
	line	859
	
l10134:	
;Beverage_services.c: 859: time=eeprom_read(147);
	movlw	(093h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_change_modes+1)+0
	clrf	(??_change_modes+1)+0+1
	movf	0+(??_change_modes+1)+0,w
	movwf	(_time)
	movf	1+(??_change_modes+1)+0,w
	movwf	(_time+1)
	line	860
	
l10136:	
;Beverage_services.c: 860: _PRESSED=_NORMAL_TEA_BUTTON;
	movlw	(02h)
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(__PRESSED)
	goto	l10138
	line	861
	
l3362:	
	line	862
	
l10138:	
;Beverage_services.c: 861: }
;Beverage_services.c: 862: if(Enable_Cup_Count && (_PREVIOUS_MODE != _ENABLE_MODE))
	btfss	(_Enable_Cup_Count/8),(_Enable_Cup_Count)&7
	goto	u7191
	goto	u7190
u7191:
	goto	l10150
u7190:
	
l10140:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u7201
	goto	u7200
u7201:
	goto	l10150
u7200:
	line	864
	
l10142:	
;Beverage_services.c: 863: {
;Beverage_services.c: 864: Lcd_String("CUP COUNT",1,0);
	movlw	low(STR_44|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_44|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	865
	
l10144:	
;Beverage_services.c: 865: Lcd_Cmd(0xC8); Num_Disp(count_read(126,127),5,0);
	movlw	(0C8h)
	fcall	_Lcd_Cmd
	
l10146:	
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(?_count_read)
	movlw	(07Eh)
	fcall	_count_read
	movf	(1+(?_count_read)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_Num_Disp+1)
	addwf	(?_Num_Disp+1)
	movf	(0+(?_count_read)),w
	clrf	(?_Num_Disp)
	addwf	(?_Num_Disp)

	movlw	(05h)
	movwf	(??_change_modes+1)+0
	movf	(??_change_modes+1)+0,w
	movwf	0+(?_Num_Disp)+02h
	clrf	0+(?_Num_Disp)+03h
	fcall	_Num_Disp
	line	866
	
l10148:	
;Beverage_services.c: 866: DelayMs(50);
	movlw	low(032h)
	movwf	(?_DelayMs)
	movlw	high(032h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l10150
	line	867
	
l3363:	
	line	868
	
l10150:	
;Beverage_services.c: 867: }
;Beverage_services.c: 868: if(Enable_Count_Reset && (_PREVIOUS_MODE != _ENABLE_MODE))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Count_Reset/8),(_Enable_Count_Reset)&7
	goto	u7211
	goto	u7210
u7211:
	goto	l10158
u7210:
	
l10152:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u7221
	goto	u7220
u7221:
	goto	l10158
u7220:
	line	870
	
l10154:	
;Beverage_services.c: 869: {
;Beverage_services.c: 870: Lcd_String("COUNT RESET",1,0);
	movlw	low(STR_45|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_45|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	871
	
l10156:	
;Beverage_services.c: 871: _PRESSED=_MILK_BUTTON;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(__PRESSED)
	goto	l10158
	line	872
	
l3364:	
	line	874
	
l10158:	
;Beverage_services.c: 872: }
;Beverage_services.c: 874: _ENABLE_MODE=0;
	clrf	(__ENABLE_MODE)
	line	875
	
l10160:	
;Beverage_services.c: 875: _DISABLE_MODE=0;
	clrf	(__DISABLE_MODE)
	line	876
	
l10162:	
;Beverage_services.c: 876: _PREVIOUS_MODE=_ENABLE_MODE;
	movf	(__ENABLE_MODE),w
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(__PREVIOUS_MODE)
	line	877
	
l3365:	
	return
	opt stack 0
GLOBAL	__end_of_change_modes
	__end_of_change_modes:
;; =============== function _change_modes ends ============

	signat	_change_modes,88
	global	_enable_valves
psect	text780,local,class=CODE,delta=2
global __ptext780
__ptext780:

;; *************** function _enable_valves *****************
;; Defined at:
;;		line 155 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  index           1   28[BANK0 ] unsigned char 
;;  i               2   26[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Print_Menu
;;		_Inidcate_Buzzer
;;		_eeprom_read
;;		_count_write
;;		_call_control_valve
;;		_Print_Name
;;		_key_press
;;		_offthevalve
;;		_eeprom_write
;;		_Lcd_Cmd
;;		_Num_Disp
;;		_DelayMs
;;		_myitoa
;;		_Lcd_String
;;		_Write_ValveIn_Memory
;;		_print_yes_no
;;		___bmul
;;		_Lcd_Data
;;		___awdiv
;;		_onthevalve
;;		___wmul
;;		_count_read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text780
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	155
	global	__size_of_enable_valves
	__size_of_enable_valves	equ	__end_of_enable_valves-_enable_valves
	
_enable_valves:	
	opt	stack 3
; Regs used in _enable_valves: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	156
	
l9300:	
;Beverage_services.c: 156: if(Enable_Normal_Mode && (_PRESSED!=_MENU_BUTTON))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	goto	u5741
	goto	u5740
u5741:
	goto	l9342
u5740:
	
l9302:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u5751
	goto	u5750
u5751:
	goto	l9342
u5750:
	line	158
	
l9304:	
;Beverage_services.c: 157: {
;Beverage_services.c: 158: Print_Menu();
	fcall	_Print_Menu
	line	159
	
l9306:	
;Beverage_services.c: 159: if(_PRESSED==_HOT_WATER_BUTTON)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	xorlw	09h
	skipz
	goto	u5761
	goto	u5760
u5761:
	goto	l9310
u5760:
	line	160
	
l9308:	
;Beverage_services.c: 160: Enable_Hot_Water_Valve=1;
	bsf	(_Enable_Hot_Water_Valve/8),(_Enable_Hot_Water_Valve)&7
	goto	l9310
	
l3138:	
	line	162
	
l9310:	
;Beverage_services.c: 162: if(_PRESSED)
	movf	(__PRESSED),w
	skipz
	goto	u5770
	goto	l9342
u5770:
	line	164
	
l9312:	
;Beverage_services.c: 163: {
;Beverage_services.c: 164: if(MENU[_PRESSED-1].COFFEE_DICATION)
	movf	(__PRESSED),w
	addlw	0FFh
	addlw	_MENU&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u5781
	goto	u5780
u5781:
	goto	l9316
u5780:
	line	166
	
l9314:	
;Beverage_services.c: 165: {
;Beverage_services.c: 166: Enable_Coffee_Valve = 1;
	bsf	(_Enable_Coffee_Valve/8),(_Enable_Coffee_Valve)&7
	goto	l9316
	line	167
	
l3140:	
	line	168
	
l9316:	
;Beverage_services.c: 167: }
;Beverage_services.c: 168: if(MENU[_PRESSED-1].TEA_DICATION)
	movf	(__PRESSED),w
	addlw	0FFh
	addlw	_MENU&0ffh
	movwf	fsr0
	btfss	indf,1
	goto	u5791
	goto	u5790
u5791:
	goto	l9320
u5790:
	line	170
	
l9318:	
;Beverage_services.c: 169: {
;Beverage_services.c: 170: Enable_Tea_Valve = 1;
	bsf	(_Enable_Tea_Valve/8),(_Enable_Tea_Valve)&7
	goto	l9320
	line	171
	
l3141:	
	line	172
	
l9320:	
;Beverage_services.c: 171: }
;Beverage_services.c: 172: if(MENU[_PRESSED-1].MIXING_HOT_WATER)
	movf	(__PRESSED),w
	addlw	0FFh
	addlw	_MENU&0ffh
	movwf	fsr0
	btfss	indf,2
	goto	u5801
	goto	u5800
u5801:
	goto	l9324
u5800:
	line	174
	
l9322:	
;Beverage_services.c: 173: {
;Beverage_services.c: 174: Enable_Mixing_Hot_Water_Valve = 1;
	bsf	(_Enable_Mixing_Hot_Water_Valve/8),(_Enable_Mixing_Hot_Water_Valve)&7
	goto	l9324
	line	175
	
l3142:	
	line	176
	
l9324:	
;Beverage_services.c: 175: }
;Beverage_services.c: 176: if(MENU[_PRESSED-1].MILK)
	movf	(__PRESSED),w
	addlw	0FFh
	addlw	_MENU&0ffh
	movwf	fsr0
	btfss	indf,3
	goto	u5811
	goto	u5810
u5811:
	goto	l9328
u5810:
	line	178
	
l9326:	
;Beverage_services.c: 177: {
;Beverage_services.c: 178: Enable_Milk_Forward = 1;
	bsf	(_Enable_Milk_Forward/8),(_Enable_Milk_Forward)&7
	line	179
;Beverage_services.c: 179: Enable_Milk_Reverse = 1;
	bsf	(_Enable_Milk_Reverse/8),(_Enable_Milk_Reverse)&7
	goto	l9328
	line	180
	
l3143:	
	line	181
	
l9328:	
;Beverage_services.c: 180: }
;Beverage_services.c: 181: if(MENU[_PRESSED-1].VIBR_MOTOR)
	movf	(__PRESSED),w
	addlw	0FFh
	addlw	_MENU&0ffh
	movwf	fsr0
	btfss	indf,4
	goto	u5821
	goto	u5820
u5821:
	goto	l9332
u5820:
	line	183
	
l9330:	
;Beverage_services.c: 182: {
;Beverage_services.c: 183: Enable_Viber_Motor = 1;
	bsf	(_Enable_Viber_Motor/8),(_Enable_Viber_Motor)&7
	goto	l9332
	line	184
	
l3144:	
	line	186
	
l9332:	
;Beverage_services.c: 184: }
;Beverage_services.c: 186: Inidcate_Buzzer();
	fcall	_Inidcate_Buzzer
	line	187
	
l9334:	
;Beverage_services.c: 187: if(_PRESSED!=_EXTRA_BUTTON)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u5831
	goto	u5830
u5831:
	goto	l9338
u5830:
	line	189
	
l9336:	
;Beverage_services.c: 188: {
;Beverage_services.c: 189: count_write(126,127,eeprom_read(126)+1);
	movlw	(07Eh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	addlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_enable_valves$5507)
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((_enable_valves$5507))+1
;Beverage_services.c: 188: {
;Beverage_services.c: 189: count_write(126,127,eeprom_read(126)+1);
	movlw	(07Fh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_count_write)
	movf	(_enable_valves$5507+1),w
	clrf	1+(?_count_write)+01h
	addwf	1+(?_count_write)+01h
	movf	(_enable_valves$5507),w
	clrf	0+(?_count_write)+01h
	addwf	0+(?_count_write)+01h

	movlw	(07Eh)
	fcall	_count_write
	line	190
;Beverage_services.c: 190: count_write(126+(_PRESSED*2),127+(_PRESSED*2),eeprom_read(126+(_PRESSED*2))+1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	movwf	(??_enable_valves+0)+0
	addwf	(??_enable_valves+0)+0,w
	addlw	07Eh
	movwf	(??_enable_valves+1)+0
	movf	(??_enable_valves+1)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	addlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_enable_valves$5507)
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((_enable_valves$5507))+1
;Beverage_services.c: 190: count_write(126+(_PRESSED*2),127+(_PRESSED*2),eeprom_read(126+(_PRESSED*2))+1);
	movf	(__PRESSED),w
	movwf	(??_enable_valves+0)+0
	addwf	(??_enable_valves+0)+0,w
	addlw	07Fh
	movwf	(??_enable_valves+1)+0
	movf	(??_enable_valves+1)+0,w
	movwf	(?_count_write)
	movf	(_enable_valves$5507+1),w
	clrf	1+(?_count_write)+01h
	addwf	1+(?_count_write)+01h
	movf	(_enable_valves$5507),w
	clrf	0+(?_count_write)+01h
	addwf	0+(?_count_write)+01h

	movf	(__PRESSED),w
	movwf	(??_enable_valves+2)+0
	addwf	(??_enable_valves+2)+0,w
	addlw	07Eh
	fcall	_count_write
	goto	l9338
	line	191
	
l3145:	
	line	192
	
l9338:	
;Beverage_services.c: 191: }
;Beverage_services.c: 192: call_control_valve();
	fcall	_call_control_valve
	line	193
	
l9340:	
;Beverage_services.c: 193: Print_Name();
	fcall	_Print_Name
	goto	l9342
	line	194
	
l3139:	
	goto	l9342
	line	195
	
l3137:	
	line	197
	
l9342:	
;Beverage_services.c: 194: }
;Beverage_services.c: 195: }
;Beverage_services.c: 197: if(Enable_Config_Mode || Enable_Normal_Mode || Enable_Shortcut_Mode)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	goto	u5841
	goto	u5840
u5841:
	goto	l9408
u5840:
	
l9344:	
	btfsc	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	goto	u5851
	goto	u5850
u5851:
	goto	l9408
u5850:
	
l9346:	
	btfss	(_Enable_Shortcut_Mode/8),(_Enable_Shortcut_Mode)&7
	goto	u5861
	goto	u5860
u5861:
	goto	l3146
u5860:
	goto	l9408
	
l3148:	
	line	199
;Beverage_services.c: 198: {
;Beverage_services.c: 199: switch(_PRESSED)
	goto	l9408
	line	201
;Beverage_services.c: 200: {
;Beverage_services.c: 201: case _MENU_BUTTON: while(RB7==0 && (Enable_Normal_Mode || Enable_Config_Mode))
	
l3150:	
	goto	l9370
	
l3152:	
	line	203
	
l9348:	
;Beverage_services.c: 202: {
;Beverage_services.c: 203: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	line	204
;Beverage_services.c: 204: if(i==39999)
	movlw	high(09C3Fh)
	xorwf	(_i+1),w
	skipz
	goto	u5875
	movlw	low(09C3Fh)
	xorwf	(_i),w
u5875:

	skipz
	goto	u5871
	goto	u5870
u5871:
	goto	l9356
u5870:
	line	206
	
l9350:	
;Beverage_services.c: 205: {
;Beverage_services.c: 206: j++;
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	line	207
	
l9352:	
;Beverage_services.c: 207: i=0;
	clrf	(_i)
	clrf	(_i+1)
	line	208
	
l9354:	
;Beverage_services.c: 208: key_press();
	fcall	_key_press
	goto	l9356
	line	209
	
l3153:	
	line	210
	
l9356:	
;Beverage_services.c: 209: }
;Beverage_services.c: 210: if(j==5)
	movlw	05h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_j),w
	iorwf	(_j+1),w
	skipz
	goto	u5881
	goto	u5880
u5881:
	goto	l9370
u5880:
	line	212
	
l9358:	
;Beverage_services.c: 211: {
;Beverage_services.c: 212: Enable_Normal_Mode=0;
	bcf	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	line	213
;Beverage_services.c: 213: Enable_Config_Mode=0;
	bcf	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	line	214
	
l9360:	
;Beverage_services.c: 214: _DISABLE_MODE=_Normal_Mode;
	clrf	(__DISABLE_MODE)
	bsf	status,0
	rlf	(__DISABLE_MODE),f
	line	215
	
l9362:	
;Beverage_services.c: 215: _ENABLE_MODE=_Password;
	movlw	(02h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	216
	
l9364:	
;Beverage_services.c: 216: j=0;
	clrf	(_j)
	clrf	(_j+1)
	line	217
	
l9366:	
;Beverage_services.c: 217: Enable_Config_Mode=0;
	bcf	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	line	218
	
l9368:	
;Beverage_services.c: 218: _SHORTCUT=0;
	bcf	(__SHORTCUT/8),(__SHORTCUT)&7
	goto	l9370
	line	219
	
l3154:	
	goto	l9370
	line	220
	
l3151:	
	line	201
	
l9370:	
	btfsc	(55/8),(55)&7
	goto	u5891
	goto	u5890
u5891:
	goto	l3157
u5890:
	
l9372:	
	btfsc	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	goto	u5901
	goto	u5900
u5901:
	goto	l9348
u5900:
	
l9374:	
	btfsc	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	goto	u5911
	goto	u5910
u5911:
	goto	l9348
u5910:
	goto	l3157
	
l3156:	
	
l3157:	
	line	221
;Beverage_services.c: 219: }
;Beverage_services.c: 220: }
;Beverage_services.c: 221: if(_SHORTCUT==1 && Enable_Shortcut_Mode==0)
	btfss	(__SHORTCUT/8),(__SHORTCUT)&7
	goto	u5921
	goto	u5920
u5921:
	goto	l9388
u5920:
	
l9376:	
	btfsc	(_Enable_Shortcut_Mode/8),(_Enable_Shortcut_Mode)&7
	goto	u5931
	goto	u5930
u5931:
	goto	l9388
u5930:
	line	223
	
l9378:	
;Beverage_services.c: 222: {
;Beverage_services.c: 223: Enable_Normal_Mode=0;
	bcf	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	line	224
;Beverage_services.c: 224: Enable_Config_Mode=0;
	bcf	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	line	225
	
l9380:	
;Beverage_services.c: 225: _ENABLE_MODE=_Shortcut_Mode;
	movlw	(0Eh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	226
	
l9382:	
;Beverage_services.c: 226: _PROCESS=_Countdisplay;
	clrf	(__PROCESS)
	bsf	status,0
	rlf	(__PROCESS),f
	line	227
	
l9384:	
;Beverage_services.c: 227: i=0;j=0;
	clrf	(_i)
	clrf	(_i+1)
	
l9386:	
	clrf	(_j)
	clrf	(_j+1)
	goto	l9388
	line	228
	
l3158:	
	line	229
	
l9388:	
;Beverage_services.c: 228: }
;Beverage_services.c: 229: if(_SHORTCUT==0 && Enable_Shortcut_Mode==1)
	btfsc	(__SHORTCUT/8),(__SHORTCUT)&7
	goto	u5941
	goto	u5940
u5941:
	goto	l3146
u5940:
	
l9390:	
	btfss	(_Enable_Shortcut_Mode/8),(_Enable_Shortcut_Mode)&7
	goto	u5951
	goto	u5950
u5951:
	goto	l3146
u5950:
	line	231
	
l9392:	
;Beverage_services.c: 230: {
;Beverage_services.c: 231: _OFF=_Mixing_Hot_Water_Valve;
	movlw	(03h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__OFF)
	line	232
	
l9394:	
;Beverage_services.c: 232: offthevalve();
	fcall	_offthevalve
	line	233
	
l9396:	
;Beverage_services.c: 233: _OFF=_Viber_Motor;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__OFF)
	line	234
;Beverage_services.c: 234: offthevalve();
	fcall	_offthevalve
	line	235
	
l9398:	
;Beverage_services.c: 235: _DISABLE_MODE=_Shortcut_Mode;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	236
	
l9400:	
;Beverage_services.c: 236: _ENABLE_MODE=_Normal_Mode;
	clrf	(__ENABLE_MODE)
	bsf	status,0
	rlf	(__ENABLE_MODE),f
	line	237
	
l9402:	
;Beverage_services.c: 237: _PROCESS=0;
	clrf	(__PROCESS)
	line	238
	
l9404:	
;Beverage_services.c: 238: _PREVIOUS_PROCESS=0;
	clrf	(__PREVIOUS_PROCESS)
	goto	l3146
	line	239
	
l3159:	
	line	240
;Beverage_services.c: 239: }
;Beverage_services.c: 240: break;
	goto	l3146
	line	241
	
l9406:	
;Beverage_services.c: 241: }
	goto	l3146
	line	199
	
l3149:	
	
l9408:	
	movf	(__PRESSED),w
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 10 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	10^0	; case 10
	skipnz
	goto	l9370
	goto	l3146
	opt asmopt_on

	line	241
	
l3160:	
	line	242
	
l3146:	
	line	243
;Beverage_services.c: 242: }
;Beverage_services.c: 243: if(Enable_Password)
	btfss	(_Enable_Password/8),(_Enable_Password)&7
	goto	u5961
	goto	u5960
u5961:
	goto	l9452
u5960:
	goto	l9440
	line	245
	
l9410:	
;Beverage_services.c: 244: {
;Beverage_services.c: 245: switch(_PRESSED)
	goto	l9440
	line	247
;Beverage_services.c: 246: {
;Beverage_services.c: 247: case _NORMAL_COFFEE_BUTTON:
	
l3163:	
	line	248
	
l9412:	
;Beverage_services.c: 248: for(unsigned int i=0;i<256;i++)
	clrf	(enable_valves@i)
	clrf	(enable_valves@i+1)
	
l9414:	
	movlw	high(0100h)
	subwf	(enable_valves@i+1),w
	movlw	low(0100h)
	skipnz
	subwf	(enable_valves@i),w
	skipc
	goto	u5971
	goto	u5970
u5971:
	goto	l9418
u5970:
	goto	l9442
	
l9416:	
	goto	l9442
	line	249
	
l3164:	
	line	250
	
l9418:	
;Beverage_services.c: 249: {
;Beverage_services.c: 250: eeprom_write(i,0x00);
	clrf	(?_eeprom_write)
	movf	(enable_valves@i),w
	fcall	_eeprom_write
	line	248
	
l9420:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(enable_valves@i),f
	skipnc
	incf	(enable_valves@i+1),f
	movlw	high(01h)
	addwf	(enable_valves@i+1),f
	
l9422:	
	movlw	high(0100h)
	subwf	(enable_valves@i+1),w
	movlw	low(0100h)
	skipnz
	subwf	(enable_valves@i),w
	skipc
	goto	u5981
	goto	u5980
u5981:
	goto	l9418
u5980:
	goto	l9442
	
l3165:	
	line	252
;Beverage_services.c: 251: }
;Beverage_services.c: 252: break;
	goto	l9442
	line	253
;Beverage_services.c: 253: case _MILK_BUTTON: if(password>0)
	
l3167:	
	
l9424:	
	movf	(_password+1),w
	iorwf	(_password),w
	skipnz
	goto	u5991
	goto	u5990
u5991:
	goto	l9442
u5990:
	line	255
	
l9426:	
;Beverage_services.c: 254: {
;Beverage_services.c: 255: password--;
	movlw	low(01h)
	subwf	(_password),f
	movlw	high(01h)
	skipc
	decf	(_password+1),f
	subwf	(_password+1),f
	goto	l9442
	line	256
	
l3168:	
	line	257
;Beverage_services.c: 256: }
;Beverage_services.c: 257: break;
	goto	l9442
	line	258
;Beverage_services.c: 258: case _HOT_WATER_BUTTON: password++;
	
l3169:	
	
l9428:	
	movlw	low(01h)
	addwf	(_password),f
	skipnc
	incf	(_password+1),f
	movlw	high(01h)
	addwf	(_password+1),f
	line	259
;Beverage_services.c: 259: break;
	goto	l9442
	line	260
;Beverage_services.c: 260: case _MENU_BUTTON: if(password==(0+2))
	
l3170:	
	
l9430:	
	movlw	02h
	xorwf	(_password),w
	iorwf	(_password+1),w
	skipz
	goto	u6001
	goto	u6000
u6001:
	goto	l9442
u6000:
	line	262
	
l9432:	
;Beverage_services.c: 261: {
;Beverage_services.c: 262: password=0;
	clrf	(_password)
	clrf	(_password+1)
	line	263
	
l9434:	
;Beverage_services.c: 263: _DISABLE_MODE=_Password;
	movlw	(02h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	264
	
l9436:	
;Beverage_services.c: 264: _ENABLE_MODE=_Valves;
	movlw	(04h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	goto	l9442
	line	265
	
l3171:	
	line	266
;Beverage_services.c: 265: }
;Beverage_services.c: 266: break;
	goto	l9442
	line	267
	
l9438:	
;Beverage_services.c: 267: }
	goto	l9442
	line	245
	
l3162:	
	
l9440:	
	movf	(__PRESSED),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           41    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l9412
	xorlw	7^1	; case 7
	skipnz
	goto	l9424
	xorlw	9^7	; case 9
	skipnz
	goto	l9428
	xorlw	10^9	; case 10
	skipnz
	goto	l9430
	goto	l9442
	opt asmopt_on

	line	267
	
l3166:	
	line	268
	
l9442:	
;Beverage_services.c: 268: if(_PRESSED==_MILK_BUTTON || _PRESSED==_HOT_WATER_BUTTON)
	movf	(__PRESSED),w
	xorlw	07h
	skipnz
	goto	u6011
	goto	u6010
u6011:
	goto	l9446
u6010:
	
l9444:	
	movf	(__PRESSED),w
	xorlw	09h
	skipz
	goto	u6021
	goto	u6020
u6021:
	goto	l9452
u6020:
	goto	l9446
	
l3174:	
	line	270
	
l9446:	
;Beverage_services.c: 269: {
;Beverage_services.c: 270: Lcd_Cmd(0x8C);
	movlw	(08Ch)
	fcall	_Lcd_Cmd
	line	271
	
l9448:	
;Beverage_services.c: 271: Num_Disp(password,4,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_password+1),w
	clrf	(?_Num_Disp+1)
	addwf	(?_Num_Disp+1)
	movf	(_password),w
	clrf	(?_Num_Disp)
	addwf	(?_Num_Disp)

	movlw	(04h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	0+(?_Num_Disp)+02h
	clrf	0+(?_Num_Disp)+03h
	fcall	_Num_Disp
	line	272
	
l9450:	
;Beverage_services.c: 272: DelayMs(150);
	movlw	low(096h)
	movwf	(?_DelayMs)
	movlw	high(096h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l9452
	line	273
	
l3172:	
	goto	l9452
	line	274
	
l3161:	
	line	275
	
l9452:	
;Beverage_services.c: 273: }
;Beverage_services.c: 274: }
;Beverage_services.c: 275: if(Enable_Valves)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Valves/8),(_Enable_Valves)&7
	goto	u6031
	goto	u6030
u6031:
	goto	l9502
u6030:
	goto	l9480
	line	277
	
l9454:	
;Beverage_services.c: 276: {
;Beverage_services.c: 277: switch(_PRESSED)
	goto	l9480
	line	279
;Beverage_services.c: 278: {
;Beverage_services.c: 279: case _NORMAL_COFFEE_BUTTON: MENU[Next].COFFEE_DICATION=~MENU[Next].COFFEE_DICATION;
	
l3177:	
	
l9456:	
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	clrc
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	setc
	btfsc	status,0
	goto	u6041
	goto	u6040
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	
u6041:
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	goto	u6054
u6040:
	bcf	status, 7	;select IRP bank0
	bcf	indf,0
u6054:
	line	280
;Beverage_services.c: 280: break;
	goto	l9482
	line	281
;Beverage_services.c: 281: case _NORMAL_TEA_BUTTON: MENU[Next].TEA_DICATION=~MENU[Next].TEA_DICATION;
	
l3179:	
	
l9458:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	clrc
	bcf	status, 7	;select IRP bank0
	btfss	indf,1
	setc
	btfsc	status,0
	goto	u6061
	goto	u6060
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	
u6061:
	bcf	status, 7	;select IRP bank0
	bsf	indf,1
	goto	u6074
u6060:
	bcf	status, 7	;select IRP bank0
	bcf	indf,1
u6074:
	line	282
;Beverage_services.c: 282: break;
	goto	l9482
	line	283
;Beverage_services.c: 283: case _LIGHT_COFFEE_BUTTON: MENU[Next].MIXING_HOT_WATER=~MENU[Next].MIXING_HOT_WATER;
	
l3180:	
	
l9460:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	clrc
	bcf	status, 7	;select IRP bank0
	btfss	indf,2
	setc
	btfsc	status,0
	goto	u6081
	goto	u6080
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	
u6081:
	bcf	status, 7	;select IRP bank0
	bsf	indf,2
	goto	u6094
u6080:
	bcf	status, 7	;select IRP bank0
	bcf	indf,2
u6094:
	line	284
;Beverage_services.c: 284: break;
	goto	l9482
	line	285
;Beverage_services.c: 285: case _LIGHT_TEA_BUTTON: MENU[Next].MILK=~MENU[Next].MILK;
	
l3181:	
	
l9462:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	clrc
	bcf	status, 7	;select IRP bank0
	btfss	indf,3
	setc
	btfsc	status,0
	goto	u6101
	goto	u6100
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	
u6101:
	bcf	status, 7	;select IRP bank0
	bsf	indf,3
	goto	u6114
u6100:
	bcf	status, 7	;select IRP bank0
	bcf	indf,3
u6114:
	line	286
;Beverage_services.c: 286: break;
	goto	l9482
	line	287
;Beverage_services.c: 287: case _BLACK_COFFEE_BUTTON: MENU[Next].VIBR_MOTOR=~MENU[Next].VIBR_MOTOR;
	
l3182:	
	
l9464:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	clrc
	bcf	status, 7	;select IRP bank0
	btfss	indf,4
	setc
	btfsc	status,0
	goto	u6121
	goto	u6120
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	
u6121:
	bcf	status, 7	;select IRP bank0
	bsf	indf,4
	goto	u6134
u6120:
	bcf	status, 7	;select IRP bank0
	bcf	indf,4
u6134:
	line	288
;Beverage_services.c: 288: break;
	goto	l9482
	line	289
;Beverage_services.c: 289: case _MILK_BUTTON: if(Next>0)
	
l3183:	
	
l9466:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Next),w
	skipz
	goto	u6140
	goto	l9482
u6140:
	line	291
	
l9468:	
;Beverage_services.c: 290: {
;Beverage_services.c: 291: Next--;
	movlw	low(01h)
	subwf	(_Next),f
	goto	l9482
	line	292
	
l3184:	
	line	293
;Beverage_services.c: 292: }
;Beverage_services.c: 293: break;
	goto	l9482
	line	294
;Beverage_services.c: 294: case _HOT_WATER_BUTTON: if(Next<7)
	
l3185:	
	
l9470:	
	movlw	(07h)
	subwf	(_Next),w
	skipnc
	goto	u6151
	goto	u6150
u6151:
	goto	l9482
u6150:
	line	296
	
l9472:	
;Beverage_services.c: 295: {
;Beverage_services.c: 296: Next++;
	movlw	(01h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	addwf	(_Next),f
	goto	l9482
	line	297
	
l3186:	
	line	298
;Beverage_services.c: 297: }
;Beverage_services.c: 298: break;
	goto	l9482
	line	299
;Beverage_services.c: 299: case _MENU_BUTTON: _DISABLE_MODE=_Valves;
	
l3187:	
	
l9474:	
	movlw	(04h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	300
;Beverage_services.c: 300: _ENABLE_MODE=_Selection;
	movlw	(05h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	301
	
l9476:	
;Beverage_services.c: 301: Next=0;
	clrf	(_Next)
	line	302
;Beverage_services.c: 302: break;
	goto	l9482
	line	303
	
l9478:	
;Beverage_services.c: 303: }
	goto	l9482
	line	277
	
l3176:	
	
l9480:	
	movf	(__PRESSED),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; direct_byte           41    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l9456
	xorlw	2^1	; case 2
	skipnz
	goto	l9458
	xorlw	3^2	; case 3
	skipnz
	goto	l9460
	xorlw	4^3	; case 4
	skipnz
	goto	l9462
	xorlw	5^4	; case 5
	skipnz
	goto	l9464
	xorlw	7^5	; case 7
	skipnz
	goto	l9466
	xorlw	9^7	; case 9
	skipnz
	goto	l9470
	xorlw	10^9	; case 10
	skipnz
	goto	l9474
	goto	l9482
	opt asmopt_on

	line	303
	
l3178:	
	line	304
	
l9482:	
;Beverage_services.c: 304: if(_PRESSED==_MILK_BUTTON || _PRESSED==_HOT_WATER_BUTTON)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	xorlw	07h
	skipnz
	goto	u6161
	goto	u6160
u6161:
	goto	l9486
u6160:
	
l9484:	
	movf	(__PRESSED),w
	xorlw	09h
	skipz
	goto	u6171
	goto	u6170
u6171:
	goto	l9492
u6170:
	goto	l9486
	
l3190:	
	line	306
	
l9486:	
;Beverage_services.c: 305: {
;Beverage_services.c: 306: Lcd_Cmd(0x86);
	movlw	(086h)
	fcall	_Lcd_Cmd
	line	307
	
l9488:	
;Beverage_services.c: 307: myitoa(Next+1,buff);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Next),w
	addlw	low(01h)
	movwf	(?_myitoa)
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((?_myitoa))+1
	movlw	(_buff)&0ffh
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	0+(?_myitoa)+02h
	fcall	_myitoa
	line	308
	
l9490:	
;Beverage_services.c: 308: Lcd_String(buff,0,0);
	movlw	(_buff&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	(0x0/2)
	movwf	(?_Lcd_String+1)
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	goto	l9492
	line	309
	
l3188:	
	line	310
	
l9492:	
;Beverage_services.c: 309: }
;Beverage_services.c: 310: if(_PRESSED && (_PRESSED!=_MENU_BUTTON))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	skipz
	goto	u6180
	goto	l9502
u6180:
	
l9494:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u6191
	goto	u6190
u6191:
	goto	l9502
u6190:
	line	312
	
l9496:	
;Beverage_services.c: 311: {
;Beverage_services.c: 312: Write_ValveIn_Memory(MENU[Next],Next);
	movf	(_Next),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_Write_ValveIn_Memory)
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_Write_ValveIn_Memory
	line	313
	
l9498:	
;Beverage_services.c: 313: print_yes_no(Next);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Next),w
	fcall	_print_yes_no
	line	314
	
l9500:	
;Beverage_services.c: 314: DelayMs(50);
	movlw	low(032h)
	movwf	(?_DelayMs)
	movlw	high(032h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l9502
	line	315
	
l3191:	
	goto	l9502
	line	316
	
l3175:	
	line	317
	
l9502:	
;Beverage_services.c: 315: }
;Beverage_services.c: 316: }
;Beverage_services.c: 317: if(Enable_Selection)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Selection/8),(_Enable_Selection)&7
	goto	u6201
	goto	u6200
u6201:
	goto	l9614
u6200:
	goto	l9544
	line	319
	
l9504:	
;Beverage_services.c: 318: {
;Beverage_services.c: 319: switch(_PRESSED)
	goto	l9544
	line	321
;Beverage_services.c: 320: {
;Beverage_services.c: 321: case _NORMAL_COFFEE_BUTTON: if(Selection_Next>0)
	
l3194:	
	
l9506:	
	movf	(_Selection_Next),w
	skipz
	goto	u6210
	goto	l9546
u6210:
	line	323
	
l9508:	
;Beverage_services.c: 322: {
;Beverage_services.c: 323: Selection_Next--;
	movlw	low(01h)
	subwf	(_Selection_Next),f
	line	324
	
l9510:	
;Beverage_services.c: 324: Next=0;
	clrf	(_Next)
	goto	l9546
	line	325
	
l3195:	
	line	326
;Beverage_services.c: 325: }
;Beverage_services.c: 326: break;
	goto	l9546
	line	327
;Beverage_services.c: 327: case _NORMAL_TEA_BUTTON: if(Selection_Next<7)
	
l3197:	
	
l9512:	
	movlw	(07h)
	subwf	(_Selection_Next),w
	skipnc
	goto	u6221
	goto	u6220
u6221:
	goto	l9546
u6220:
	line	329
	
l9514:	
;Beverage_services.c: 328: {
;Beverage_services.c: 329: Selection_Next++;
	movlw	(01h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	addwf	(_Selection_Next),f
	line	330
	
l9516:	
;Beverage_services.c: 330: Next=0;
	clrf	(_Next)
	goto	l9546
	line	331
	
l3198:	
	line	332
;Beverage_services.c: 331: }
;Beverage_services.c: 332: break;
	goto	l9546
	line	333
;Beverage_services.c: 333: case _LIGHT_COFFEE_BUTTON: if(Next>0)
	
l3199:	
	
l9518:	
	movf	(_Next),w
	skipz
	goto	u6230
	goto	l9546
u6230:
	line	335
	
l9520:	
;Beverage_services.c: 334: {
;Beverage_services.c: 335: Next--;
	movlw	low(01h)
	subwf	(_Next),f
	goto	l9546
	line	336
	
l3200:	
	line	337
;Beverage_services.c: 336: }
;Beverage_services.c: 337: break;
	goto	l9546
	line	338
;Beverage_services.c: 338: case _LIGHT_TEA_BUTTON: if(Next<9)
	
l3201:	
	
l9522:	
	movlw	(09h)
	subwf	(_Next),w
	skipnc
	goto	u6241
	goto	u6240
u6241:
	goto	l9546
u6240:
	line	340
	
l9524:	
;Beverage_services.c: 339: {
;Beverage_services.c: 340: Next++;
	movlw	(01h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	addwf	(_Next),f
	goto	l9546
	line	341
	
l3202:	
	line	342
;Beverage_services.c: 341: }
;Beverage_services.c: 342: break;
	goto	l9546
	line	343
;Beverage_services.c: 343: case _BLACK_COFFEE_BUTTON:
	
l3203:	
	line	344
;Beverage_services.c: 344: break;
	goto	l9546
	line	345
;Beverage_services.c: 345: case _BLACK_TEA_BUTTON: _Demo=1;
	
l3204:	
	bsf	(__Demo/8),(__Demo)&7
	line	346
;Beverage_services.c: 346: break;
	goto	l9546
	line	347
;Beverage_services.c: 347: case _MILK_BUTTON: if(time>0)
	
l3205:	
	
l9526:	
	movf	(_time+1),w
	iorwf	(_time),w
	skipnz
	goto	u6251
	goto	u6250
u6251:
	goto	l9546
u6250:
	line	349
	
l9528:	
;Beverage_services.c: 348: {
;Beverage_services.c: 349: time--;
	movlw	low(01h)
	subwf	(_time),f
	movlw	high(01h)
	skipc
	decf	(_time+1),f
	subwf	(_time+1),f
	goto	l9546
	line	350
	
l3206:	
	line	351
;Beverage_services.c: 350: }
;Beverage_services.c: 351: break;
	goto	l9546
	line	352
;Beverage_services.c: 352: case _HOT_WATER_BUTTON: time++;
	
l3207:	
	
l9530:	
	movlw	low(01h)
	addwf	(_time),f
	skipnc
	incf	(_time+1),f
	movlw	high(01h)
	addwf	(_time+1),f
	line	353
;Beverage_services.c: 353: break;
	goto	l9546
	line	354
;Beverage_services.c: 354: case _EXTRA_BUTTON: _DISABLE_MODE=_Selection;
	
l3208:	
	
l9532:	
	movlw	(05h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	355
;Beverage_services.c: 355: _ENABLE_MODE=_Valves;
	movlw	(04h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	356
	
l9534:	
;Beverage_services.c: 356: Selection_Next=0;
	clrf	(_Selection_Next)
	line	357
	
l9536:	
;Beverage_services.c: 357: Next=0;
	clrf	(_Next)
	line	358
;Beverage_services.c: 358: break;
	goto	l9546
	line	359
;Beverage_services.c: 359: case _MENU_BUTTON: _DISABLE_MODE=_Selection;
	
l3209:	
	
l9538:	
	movlw	(05h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	360
;Beverage_services.c: 360: _ENABLE_MODE=_Coffee_Dication_Time;
	movlw	(06h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	361
	
l9540:	
;Beverage_services.c: 361: Selection_Next=0;
	clrf	(_Selection_Next)
	line	362
;Beverage_services.c: 362: break;
	goto	l9546
	line	363
	
l9542:	
;Beverage_services.c: 363: }
	goto	l9546
	line	319
	
l3193:	
	
l9544:	
	movf	(__PRESSED),w
	; Switch size 1, requested type "space"
; Number of cases is 10, Range of values is 1 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           31    16 (average)
; direct_byte           41    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l9506
	xorlw	2^1	; case 2
	skipnz
	goto	l9512
	xorlw	3^2	; case 3
	skipnz
	goto	l9518
	xorlw	4^3	; case 4
	skipnz
	goto	l9522
	xorlw	5^4	; case 5
	skipnz
	goto	l9546
	xorlw	6^5	; case 6
	skipnz
	goto	l3204
	xorlw	7^6	; case 7
	skipnz
	goto	l9526
	xorlw	8^7	; case 8
	skipnz
	goto	l9532
	xorlw	9^8	; case 9
	skipnz
	goto	l9530
	xorlw	10^9	; case 10
	skipnz
	goto	l9538
	goto	l9546
	opt asmopt_on

	line	363
	
l3196:	
	line	364
	
l9546:	
;Beverage_services.c: 364: if(_PRESSED==_NORMAL_COFFEE_BUTTON || _PRESSED==_NORMAL_TEA_BUTTON || _PRESSED==_LIGHT_COFFEE_BUTTON || _PRESSED==_LIGHT_TEA_BUTTON)
	movf	(__PRESSED),w
	xorlw	01h
	skipnz
	goto	u6261
	goto	u6260
u6261:
	goto	l9554
u6260:
	
l9548:	
	movf	(__PRESSED),w
	xorlw	02h
	skipnz
	goto	u6271
	goto	u6270
u6271:
	goto	l9554
u6270:
	
l9550:	
	movf	(__PRESSED),w
	xorlw	03h
	skipnz
	goto	u6281
	goto	u6280
u6281:
	goto	l9554
u6280:
	
l9552:	
	movf	(__PRESSED),w
	xorlw	04h
	skipz
	goto	u6291
	goto	u6290
u6291:
	goto	l9556
u6290:
	goto	l9554
	
l3212:	
	line	366
	
l9554:	
;Beverage_services.c: 365: {
;Beverage_services.c: 366: time=eeprom_read(((12*(Selection_Next+1))-2)+Next);
	movlw	(0Ch)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?___bmul)
	movf	(_Selection_Next),w
	addlw	01h
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+1)+0
	movf	(_Next),w
	addwf	0+(??_enable_valves+1)+0,w
	addlw	0FEh
	movwf	(??_enable_valves+2)+0
	movf	(??_enable_valves+2)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+3)+0
	clrf	(??_enable_valves+3)+0+1
	movf	0+(??_enable_valves+3)+0,w
	movwf	(_time)
	movf	1+(??_enable_valves+3)+0,w
	movwf	(_time+1)
	goto	l9556
	line	367
	
l3210:	
	line	368
	
l9556:	
;Beverage_services.c: 367: }
;Beverage_services.c: 368: if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
	movf	(__PRESSED),w
	skipz
	goto	u6300
	goto	l9614
u6300:
	
l9558:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u6311
	goto	u6310
u6311:
	goto	l9614
u6310:
	
l9560:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u6321
	goto	u6320
u6321:
	goto	l9614
u6320:
	line	370
	
l9562:	
;Beverage_services.c: 369: {
;Beverage_services.c: 370: Lcd_Cmd(0x80);
	movlw	(080h)
	fcall	_Lcd_Cmd
	line	371
	
l9564:	
;Beverage_services.c: 371: Lcd_String("SELECTION",0,0);
	movlw	low(STR_17|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_17|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	372
	
l9566:	
;Beverage_services.c: 372: Lcd_Data(':');
	movlw	(03Ah)
	fcall	_Lcd_Data
	line	373
	
l9568:	
;Beverage_services.c: 373: Lcd_Cmd(0x8C);
	movlw	(08Ch)
	fcall	_Lcd_Cmd
	line	374
	
l9570:	
;Beverage_services.c: 374: myitoa(Selection_Next+1,buff);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Selection_Next),w
	addlw	low(01h)
	movwf	(?_myitoa)
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((?_myitoa))+1
	movlw	(_buff)&0ffh
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	0+(?_myitoa)+02h
	fcall	_myitoa
	line	375
	
l9572:	
;Beverage_services.c: 375: Lcd_String(buff,0,0);
	movlw	(_buff&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	(0x0/2)
	movwf	(?_Lcd_String+1)
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	376
	
l9574:	
;Beverage_services.c: 376: if(!(Next%2))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_Next),(0)&7
	goto	u6331
	goto	u6330
u6331:
	goto	l9602
u6330:
	line	378
	
l9576:	
;Beverage_services.c: 377: {
;Beverage_services.c: 378: Lcd_String("LOAD ",0,1);
	movlw	low(STR_18|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_18|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	bsf	status,0
	rlf	0+(?_Lcd_String)+03h,f
	fcall	_Lcd_String
	line	379
	
l9578:	
;Beverage_services.c: 379: Lcd_Data(asciitable[(Next/2)+1]);
	movlw	low(02h)
	movwf	(?___awdiv)
	movlw	high(02h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Next),w
	movwf	(??_enable_valves+0)+0
	clrf	(??_enable_valves+0)+0+1
	movf	0+(??_enable_valves+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_enable_valves+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	01h
	addlw	_asciitable&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_Lcd_Data
	line	380
	
l9580:	
;Beverage_services.c: 380: if(_Demo==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(__Demo/8),(__Demo)&7
	goto	u6341
	goto	u6340
u6341:
	goto	l9606
u6340:
	line	382
	
l9582:	
;Beverage_services.c: 381: {
;Beverage_services.c: 382: if(Next==0)
	movf	(_Next),f
	skipz
	goto	u6351
	goto	u6350
u6351:
	goto	l3216
u6350:
	line	383
	
l9584:	
;Beverage_services.c: 383: _ON=_OFF=_Coffee_Valve;
	movlw	(06h)
	movwf	(__OFF)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	
l3216:	
	line	384
;Beverage_services.c: 384: if(Next==2)
	movf	(_Next),w
	xorlw	02h
	skipz
	goto	u6361
	goto	u6360
u6361:
	goto	l3217
u6360:
	line	385
	
l9586:	
;Beverage_services.c: 385: _ON=_OFF=_Tea_Valve;
	movlw	(08h)
	movwf	(__OFF)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	
l3217:	
	line	386
;Beverage_services.c: 386: if(Next==4)
	movf	(_Next),w
	xorlw	04h
	skipz
	goto	u6371
	goto	u6370
u6371:
	goto	l3218
u6370:
	line	387
	
l9588:	
;Beverage_services.c: 387: _ON=_OFF=_Mixing_Hot_Water_Valve;
	movlw	(03h)
	movwf	(__OFF)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	
l3218:	
	line	388
;Beverage_services.c: 388: if(Next==6)
	movf	(_Next),w
	xorlw	06h
	skipz
	goto	u6381
	goto	u6380
u6381:
	goto	l3219
u6380:
	line	389
	
l9590:	
;Beverage_services.c: 389: _ON=_OFF=_Milk_Valve_Forward;
	movlw	(01h)
	movwf	(__OFF)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	
l3219:	
	line	390
;Beverage_services.c: 390: if(Next==8)
	movf	(_Next),w
	xorlw	08h
	skipz
	goto	u6391
	goto	u6390
u6391:
	goto	l9594
u6390:
	line	391
	
l9592:	
;Beverage_services.c: 391: _ON=_OFF=_Viber_Motor;
	movlw	(09h)
	movwf	(__OFF)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	goto	l9594
	
l3220:	
	line	392
	
l9594:	
;Beverage_services.c: 392: onthevalve();
	fcall	_onthevalve
	line	393
	
l9596:	
;Beverage_services.c: 393: DelayMs(time*100);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_time+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(_time),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	clrf	(?_DelayMs+1)
	addwf	(?_DelayMs+1)
	movf	(0+(?___wmul)),w
	clrf	(?_DelayMs)
	addwf	(?_DelayMs)

	fcall	_DelayMs
	line	394
	
l9598:	
;Beverage_services.c: 394: offthevalve();
	fcall	_offthevalve
	line	395
	
l9600:	
;Beverage_services.c: 395: _Demo=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(__Demo/8),(__Demo)&7
	goto	l9606
	line	396
	
l3215:	
	line	397
;Beverage_services.c: 396: }
;Beverage_services.c: 397: }
	goto	l9606
	line	398
	
l3214:	
	line	400
	
l9602:	
;Beverage_services.c: 398: else
;Beverage_services.c: 399: {
;Beverage_services.c: 400: Lcd_String("DELAY",0,1);
	movlw	low(STR_19|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_19|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	bsf	status,0
	rlf	0+(?_Lcd_String)+03h,f
	fcall	_Lcd_String
	line	401
	
l9604:	
;Beverage_services.c: 401: Lcd_Data(asciitable[(Next/2)+1]);
	movlw	low(02h)
	movwf	(?___awdiv)
	movlw	high(02h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Next),w
	movwf	(??_enable_valves+0)+0
	clrf	(??_enable_valves+0)+0+1
	movf	0+(??_enable_valves+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_enable_valves+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	01h
	addlw	_asciitable&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_Lcd_Data
	goto	l9606
	line	402
	
l3221:	
	line	403
	
l9606:	
;Beverage_services.c: 402: }
;Beverage_services.c: 403: Lcd_Cmd(0xC9);
	movlw	(0C9h)
	fcall	_Lcd_Cmd
	line	404
	
l9608:	
;Beverage_services.c: 404: Num_Disp(time,2,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_time+1),w
	clrf	(?_Num_Disp+1)
	addwf	(?_Num_Disp+1)
	movf	(_time),w
	clrf	(?_Num_Disp)
	addwf	(?_Num_Disp)

	movlw	(02h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	0+(?_Num_Disp)+02h
	clrf	0+(?_Num_Disp)+03h
	bsf	status,0
	rlf	0+(?_Num_Disp)+03h,f
	fcall	_Num_Disp
	line	405
	
l9610:	
;Beverage_services.c: 405: Lcd_Cmd(0xCD);
	movlw	(0CDh)
	fcall	_Lcd_Cmd
	line	406
;Beverage_services.c: 406: Lcd_String("SEC",0,0);
	movlw	low(STR_20|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_20|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	407
	
l9612:	
;Beverage_services.c: 407: eeprom_write(((12*(Selection_Next+1))-2)+Next,time);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0Ch)
	movwf	(??_enable_valves+1)+0
	movf	(??_enable_valves+1)+0,w
	movwf	(?___bmul)
	movf	(_Selection_Next),w
	addlw	01h
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+2)+0
	movf	(_Next),w
	addwf	0+(??_enable_valves+2)+0,w
	addlw	0FEh
	fcall	_eeprom_write
	goto	l9614
	line	408
	
l3213:	
	goto	l9614
	line	410
	
l3192:	
	line	411
	
l9614:	
;Beverage_services.c: 408: }
;Beverage_services.c: 410: }
;Beverage_services.c: 411: if(Enable_Coffee_Dication_Time)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Coffee_Dication_Time/8),(_Enable_Coffee_Dication_Time)&7
	goto	u6401
	goto	u6400
u6401:
	goto	l9652
u6400:
	goto	l9638
	line	413
	
l9616:	
;Beverage_services.c: 412: {
;Beverage_services.c: 413: switch(_PRESSED)
	goto	l9638
	line	415
;Beverage_services.c: 414: {
;Beverage_services.c: 415: case _MILK_BUTTON: if(time>0)
	
l3224:	
	
l9618:	
	movf	(_time+1),w
	iorwf	(_time),w
	skipnz
	goto	u6411
	goto	u6410
u6411:
	goto	l9640
u6410:
	line	417
	
l9620:	
;Beverage_services.c: 416: {
;Beverage_services.c: 417: time--;
	movlw	low(01h)
	subwf	(_time),f
	movlw	high(01h)
	skipc
	decf	(_time+1),f
	subwf	(_time+1),f
	goto	l9640
	line	418
	
l3225:	
	line	419
;Beverage_services.c: 418: }
;Beverage_services.c: 419: break;
	goto	l9640
	line	420
;Beverage_services.c: 420: case _HOT_WATER_BUTTON: time++;
	
l3227:	
	
l9622:	
	movlw	low(01h)
	addwf	(_time),f
	skipnc
	incf	(_time+1),f
	movlw	high(01h)
	addwf	(_time+1),f
	line	421
;Beverage_services.c: 421: break;
	goto	l9640
	line	422
;Beverage_services.c: 422: case _EXTRA_BUTTON: eeprom_write(118,time);
	
l3228:	
	
l9624:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(076h)
	fcall	_eeprom_write
	line	423
	
l9626:	
;Beverage_services.c: 423: _DISABLE_MODE=_Coffee_Dication_Time;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	424
	
l9628:	
;Beverage_services.c: 424: _ENABLE_MODE=_Selection;
	movlw	(05h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	425
;Beverage_services.c: 425: break;
	goto	l9640
	line	426
;Beverage_services.c: 426: case _MENU_BUTTON: eeprom_write(118,time);
	
l3229:	
	
l9630:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(076h)
	fcall	_eeprom_write
	line	427
	
l9632:	
;Beverage_services.c: 427: _DISABLE_MODE=_Coffee_Dication_Time;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	428
	
l9634:	
;Beverage_services.c: 428: _ENABLE_MODE=_Tea_Dication_Time;
	movlw	(07h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	429
;Beverage_services.c: 429: break;
	goto	l9640
	line	430
	
l9636:	
;Beverage_services.c: 430: }
	goto	l9640
	line	413
	
l3223:	
	
l9638:	
	movf	(__PRESSED),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 7 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	7^0	; case 7
	skipnz
	goto	l9618
	xorlw	8^7	; case 8
	skipnz
	goto	l9624
	xorlw	9^8	; case 9
	skipnz
	goto	l9622
	xorlw	10^9	; case 10
	skipnz
	goto	l9630
	goto	l9640
	opt asmopt_on

	line	430
	
l3226:	
	line	431
	
l9640:	
;Beverage_services.c: 431: if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
	movf	(__PRESSED),w
	skipz
	goto	u6420
	goto	l9650
u6420:
	
l9642:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u6431
	goto	u6430
u6431:
	goto	l9650
u6430:
	
l9644:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u6441
	goto	u6440
u6441:
	goto	l9650
u6440:
	line	433
	
l9646:	
;Beverage_services.c: 432: {
;Beverage_services.c: 433: Lcd_Cmd(0xC8);
	movlw	(0C8h)
	fcall	_Lcd_Cmd
	line	434
	
l9648:	
;Beverage_services.c: 434: Num_Disp(time,3,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_time+1),w
	clrf	(?_Num_Disp+1)
	addwf	(?_Num_Disp+1)
	movf	(_time),w
	clrf	(?_Num_Disp)
	addwf	(?_Num_Disp)

	movlw	(03h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	0+(?_Num_Disp)+02h
	clrf	0+(?_Num_Disp)+03h
	fcall	_Num_Disp
	goto	l9650
	line	435
	
l3230:	
	line	436
	
l9650:	
;Beverage_services.c: 435: }
;Beverage_services.c: 436: DelayMs(20);
	movlw	low(014h)
	movwf	(?_DelayMs)
	movlw	high(014h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l9652
	line	437
	
l3222:	
	line	438
	
l9652:	
;Beverage_services.c: 437: }
;Beverage_services.c: 438: if(Enable_Tea_Dication_Time)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Tea_Dication_Time/8),(_Enable_Tea_Dication_Time)&7
	goto	u6451
	goto	u6450
u6451:
	goto	l9690
u6450:
	goto	l9676
	line	440
	
l9654:	
;Beverage_services.c: 439: {
;Beverage_services.c: 440: switch(_PRESSED)
	goto	l9676
	line	442
;Beverage_services.c: 441: {
;Beverage_services.c: 442: case _MILK_BUTTON: if(time>0)
	
l3233:	
	
l9656:	
	movf	(_time+1),w
	iorwf	(_time),w
	skipnz
	goto	u6461
	goto	u6460
u6461:
	goto	l9678
u6460:
	line	444
	
l9658:	
;Beverage_services.c: 443: {
;Beverage_services.c: 444: time--;
	movlw	low(01h)
	subwf	(_time),f
	movlw	high(01h)
	skipc
	decf	(_time+1),f
	subwf	(_time+1),f
	goto	l9678
	line	445
	
l3234:	
	line	446
;Beverage_services.c: 445: }
;Beverage_services.c: 446: break;
	goto	l9678
	line	447
;Beverage_services.c: 447: case _HOT_WATER_BUTTON: time++;
	
l3236:	
	
l9660:	
	movlw	low(01h)
	addwf	(_time),f
	skipnc
	incf	(_time+1),f
	movlw	high(01h)
	addwf	(_time+1),f
	line	448
;Beverage_services.c: 448: break;
	goto	l9678
	line	449
;Beverage_services.c: 449: case _EXTRA_BUTTON: eeprom_write(119,time);
	
l3237:	
	
l9662:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(077h)
	fcall	_eeprom_write
	line	450
	
l9664:	
;Beverage_services.c: 450: _DISABLE_MODE=_Tea_Dication_Time;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	451
	
l9666:	
;Beverage_services.c: 451: _ENABLE_MODE=_Coffee_Dication_Time;
	movlw	(06h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	452
;Beverage_services.c: 452: break;
	goto	l9678
	line	453
;Beverage_services.c: 453: case _MENU_BUTTON: eeprom_write(119,time);
	
l3238:	
	
l9668:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(077h)
	fcall	_eeprom_write
	line	454
	
l9670:	
;Beverage_services.c: 454: _DISABLE_MODE=_Tea_Dication_Time;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	455
	
l9672:	
;Beverage_services.c: 455: _ENABLE_MODE=_Dication_Delay;
	movlw	(08h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	456
;Beverage_services.c: 456: break;
	goto	l9678
	line	457
	
l9674:	
;Beverage_services.c: 457: }
	goto	l9678
	line	440
	
l3232:	
	
l9676:	
	movf	(__PRESSED),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 7 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	7^0	; case 7
	skipnz
	goto	l9656
	xorlw	8^7	; case 8
	skipnz
	goto	l9662
	xorlw	9^8	; case 9
	skipnz
	goto	l9660
	xorlw	10^9	; case 10
	skipnz
	goto	l9668
	goto	l9678
	opt asmopt_on

	line	457
	
l3235:	
	line	458
	
l9678:	
;Beverage_services.c: 458: if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
	movf	(__PRESSED),w
	skipz
	goto	u6470
	goto	l9688
u6470:
	
l9680:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u6481
	goto	u6480
u6481:
	goto	l9688
u6480:
	
l9682:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u6491
	goto	u6490
u6491:
	goto	l9688
u6490:
	line	460
	
l9684:	
;Beverage_services.c: 459: {
;Beverage_services.c: 460: Lcd_Cmd(0xC8);
	movlw	(0C8h)
	fcall	_Lcd_Cmd
	line	461
	
l9686:	
;Beverage_services.c: 461: Num_Disp(time,3,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_time+1),w
	clrf	(?_Num_Disp+1)
	addwf	(?_Num_Disp+1)
	movf	(_time),w
	clrf	(?_Num_Disp)
	addwf	(?_Num_Disp)

	movlw	(03h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	0+(?_Num_Disp)+02h
	clrf	0+(?_Num_Disp)+03h
	fcall	_Num_Disp
	goto	l9688
	line	462
	
l3239:	
	line	463
	
l9688:	
;Beverage_services.c: 462: }
;Beverage_services.c: 463: DelayMs(20);
	movlw	low(014h)
	movwf	(?_DelayMs)
	movlw	high(014h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l9690
	line	464
	
l3231:	
	line	465
	
l9690:	
;Beverage_services.c: 464: }
;Beverage_services.c: 465: if(Enable_Dication_Delay)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Dication_Delay/8),(_Enable_Dication_Delay)&7
	goto	u6501
	goto	u6500
u6501:
	goto	l9728
u6500:
	goto	l9714
	line	467
	
l9692:	
;Beverage_services.c: 466: {
;Beverage_services.c: 467: switch(_PRESSED)
	goto	l9714
	line	469
;Beverage_services.c: 468: {
;Beverage_services.c: 469: case _MILK_BUTTON: if(time>0)
	
l3242:	
	
l9694:	
	movf	(_time+1),w
	iorwf	(_time),w
	skipnz
	goto	u6511
	goto	u6510
u6511:
	goto	l9716
u6510:
	line	471
	
l9696:	
;Beverage_services.c: 470: {
;Beverage_services.c: 471: time--;
	movlw	low(01h)
	subwf	(_time),f
	movlw	high(01h)
	skipc
	decf	(_time+1),f
	subwf	(_time+1),f
	goto	l9716
	line	472
	
l3243:	
	line	473
;Beverage_services.c: 472: }
;Beverage_services.c: 473: break;
	goto	l9716
	line	474
;Beverage_services.c: 474: case _HOT_WATER_BUTTON: time++;
	
l3245:	
	
l9698:	
	movlw	low(01h)
	addwf	(_time),f
	skipnc
	incf	(_time+1),f
	movlw	high(01h)
	addwf	(_time+1),f
	line	475
;Beverage_services.c: 475: break;
	goto	l9716
	line	476
;Beverage_services.c: 476: case _EXTRA_BUTTON: eeprom_write(121,time);
	
l3246:	
	
l9700:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(079h)
	fcall	_eeprom_write
	line	477
	
l9702:	
;Beverage_services.c: 477: _DISABLE_MODE=_Dication_Delay;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	478
	
l9704:	
;Beverage_services.c: 478: _ENABLE_MODE=_Tea_Dication_Time;
	movlw	(07h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	479
;Beverage_services.c: 479: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	480
;Beverage_services.c: 480: break;
	goto	l9716
	line	481
;Beverage_services.c: 481: case _MENU_BUTTON: eeprom_write(121,time);
	
l3247:	
	
l9706:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(079h)
	fcall	_eeprom_write
	line	482
	
l9708:	
;Beverage_services.c: 482: _DISABLE_MODE=_Dication_Delay;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	483
	
l9710:	
;Beverage_services.c: 483: _ENABLE_MODE=_Hot_Water_Time;
	movlw	(09h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	484
;Beverage_services.c: 484: break;
	goto	l9716
	line	485
	
l9712:	
;Beverage_services.c: 485: }
	goto	l9716
	line	467
	
l3241:	
	
l9714:	
	movf	(__PRESSED),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 7 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	7^0	; case 7
	skipnz
	goto	l9694
	xorlw	8^7	; case 8
	skipnz
	goto	l9700
	xorlw	9^8	; case 9
	skipnz
	goto	l9698
	xorlw	10^9	; case 10
	skipnz
	goto	l9706
	goto	l9716
	opt asmopt_on

	line	485
	
l3244:	
	line	486
	
l9716:	
;Beverage_services.c: 486: if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	skipz
	goto	u6520
	goto	l9726
u6520:
	
l9718:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u6531
	goto	u6530
u6531:
	goto	l9726
u6530:
	
l9720:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u6541
	goto	u6540
u6541:
	goto	l9726
u6540:
	line	488
	
l9722:	
;Beverage_services.c: 487: {
;Beverage_services.c: 488: Lcd_Cmd(0xC8);
	movlw	(0C8h)
	fcall	_Lcd_Cmd
	line	489
	
l9724:	
;Beverage_services.c: 489: Num_Disp(time,3,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_time+1),w
	clrf	(?_Num_Disp+1)
	addwf	(?_Num_Disp+1)
	movf	(_time),w
	clrf	(?_Num_Disp)
	addwf	(?_Num_Disp)

	movlw	(03h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	0+(?_Num_Disp)+02h
	clrf	0+(?_Num_Disp)+03h
	fcall	_Num_Disp
	goto	l9726
	line	490
	
l3248:	
	line	491
	
l9726:	
;Beverage_services.c: 490: }
;Beverage_services.c: 491: DelayMs(10);
	movlw	low(0Ah)
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l9728
	line	492
	
l3240:	
	line	493
	
l9728:	
;Beverage_services.c: 492: }
;Beverage_services.c: 493: if(Enable_Hot_Water_Time)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Hot_Water_Time/8),(_Enable_Hot_Water_Time)&7
	goto	u6551
	goto	u6550
u6551:
	goto	l9766
u6550:
	goto	l9752
	line	495
	
l9730:	
;Beverage_services.c: 494: {
;Beverage_services.c: 495: switch(_PRESSED)
	goto	l9752
	line	497
;Beverage_services.c: 496: {
;Beverage_services.c: 497: case _MILK_BUTTON: if(time>0)
	
l3251:	
	
l9732:	
	movf	(_time+1),w
	iorwf	(_time),w
	skipnz
	goto	u6561
	goto	u6560
u6561:
	goto	l9754
u6560:
	line	499
	
l9734:	
;Beverage_services.c: 498: {
;Beverage_services.c: 499: time--;
	movlw	low(01h)
	subwf	(_time),f
	movlw	high(01h)
	skipc
	decf	(_time+1),f
	subwf	(_time+1),f
	goto	l9754
	line	500
	
l3252:	
	line	501
;Beverage_services.c: 500: }
;Beverage_services.c: 501: break;
	goto	l9754
	line	502
;Beverage_services.c: 502: case _HOT_WATER_BUTTON: time++;
	
l3254:	
	
l9736:	
	movlw	low(01h)
	addwf	(_time),f
	skipnc
	incf	(_time+1),f
	movlw	high(01h)
	addwf	(_time+1),f
	line	503
;Beverage_services.c: 503: break;
	goto	l9754
	line	504
;Beverage_services.c: 504: case _EXTRA_BUTTON: eeprom_write(147,time);
	
l3255:	
	
l9738:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(093h)
	fcall	_eeprom_write
	line	505
	
l9740:	
;Beverage_services.c: 505: _DISABLE_MODE=_Hot_Water_Time;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	506
	
l9742:	
;Beverage_services.c: 506: _ENABLE_MODE=_Dication_Delay;
	movlw	(08h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	507
;Beverage_services.c: 507: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	508
;Beverage_services.c: 508: break;
	goto	l9754
	line	509
;Beverage_services.c: 509: case _MENU_BUTTON: eeprom_write(147,time);
	
l3256:	
	
l9744:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(093h)
	fcall	_eeprom_write
	line	510
	
l9746:	
;Beverage_services.c: 510: _DISABLE_MODE=_Hot_Water_Time;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	511
	
l9748:	
;Beverage_services.c: 511: _ENABLE_MODE=_Temperature;
	movlw	(0Bh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	512
;Beverage_services.c: 512: break;
	goto	l9754
	line	513
	
l9750:	
;Beverage_services.c: 513: }
	goto	l9754
	line	495
	
l3250:	
	
l9752:	
	movf	(__PRESSED),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 7 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	7^0	; case 7
	skipnz
	goto	l9732
	xorlw	8^7	; case 8
	skipnz
	goto	l9738
	xorlw	9^8	; case 9
	skipnz
	goto	l9736
	xorlw	10^9	; case 10
	skipnz
	goto	l9744
	goto	l9754
	opt asmopt_on

	line	513
	
l3253:	
	line	514
	
l9754:	
;Beverage_services.c: 514: if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	skipz
	goto	u6570
	goto	l9764
u6570:
	
l9756:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u6581
	goto	u6580
u6581:
	goto	l9764
u6580:
	
l9758:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u6591
	goto	u6590
u6591:
	goto	l9764
u6590:
	line	516
	
l9760:	
;Beverage_services.c: 515: {
;Beverage_services.c: 516: Lcd_Cmd(0xC8);
	movlw	(0C8h)
	fcall	_Lcd_Cmd
	line	517
	
l9762:	
;Beverage_services.c: 517: Num_Disp(time,3,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_time+1),w
	clrf	(?_Num_Disp+1)
	addwf	(?_Num_Disp+1)
	movf	(_time),w
	clrf	(?_Num_Disp)
	addwf	(?_Num_Disp)

	movlw	(03h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	0+(?_Num_Disp)+02h
	clrf	0+(?_Num_Disp)+03h
	fcall	_Num_Disp
	goto	l9764
	line	518
	
l3257:	
	line	519
	
l9764:	
;Beverage_services.c: 518: }
;Beverage_services.c: 519: DelayMs(10);
	movlw	low(0Ah)
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l9766
	line	520
	
l3249:	
	line	521
	
l9766:	
;Beverage_services.c: 520: }
;Beverage_services.c: 521: if(Enable_Temperature)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Temperature/8),(_Enable_Temperature)&7
	goto	u6601
	goto	u6600
u6601:
	goto	l9804
u6600:
	goto	l9790
	line	523
	
l9768:	
;Beverage_services.c: 522: {
;Beverage_services.c: 523: switch(_PRESSED)
	goto	l9790
	line	525
;Beverage_services.c: 524: {
;Beverage_services.c: 525: case _MILK_BUTTON: if(time>20)
	
l3260:	
	
l9770:	
	movlw	high(015h)
	subwf	(_time+1),w
	movlw	low(015h)
	skipnz
	subwf	(_time),w
	skipc
	goto	u6611
	goto	u6610
u6611:
	goto	l9792
u6610:
	line	527
	
l9772:	
;Beverage_services.c: 526: {
;Beverage_services.c: 527: time--;
	movlw	low(01h)
	subwf	(_time),f
	movlw	high(01h)
	skipc
	decf	(_time+1),f
	subwf	(_time+1),f
	goto	l9792
	line	528
	
l3261:	
	line	529
;Beverage_services.c: 528: }
;Beverage_services.c: 529: break;
	goto	l9792
	line	530
;Beverage_services.c: 530: case _HOT_WATER_BUTTON: time++;
	
l3263:	
	
l9774:	
	movlw	low(01h)
	addwf	(_time),f
	skipnc
	incf	(_time+1),f
	movlw	high(01h)
	addwf	(_time+1),f
	line	531
;Beverage_services.c: 531: break;
	goto	l9792
	line	532
;Beverage_services.c: 532: case _EXTRA_BUTTON: eeprom_write(120,time);
	
l3264:	
	
l9776:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(078h)
	fcall	_eeprom_write
	line	533
	
l9778:	
;Beverage_services.c: 533: _DISABLE_MODE=_Temperature;
	movlw	(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	534
	
l9780:	
;Beverage_services.c: 534: _ENABLE_MODE=_Hot_Water_Time;
	movlw	(09h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	535
;Beverage_services.c: 535: break;
	goto	l9792
	line	536
;Beverage_services.c: 536: case _MENU_BUTTON: eeprom_write(120,time);
	
l3265:	
	
l9782:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(078h)
	fcall	_eeprom_write
	line	537
	
l9784:	
;Beverage_services.c: 537: _DISABLE_MODE=_Temperature;
	movlw	(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	538
	
l9786:	
;Beverage_services.c: 538: _ENABLE_MODE=_Cup_Count;
	movlw	(0Ch)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	539
;Beverage_services.c: 539: break;
	goto	l9792
	line	540
	
l9788:	
;Beverage_services.c: 540: }
	goto	l9792
	line	523
	
l3259:	
	
l9790:	
	movf	(__PRESSED),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 7 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	7^0	; case 7
	skipnz
	goto	l9770
	xorlw	8^7	; case 8
	skipnz
	goto	l9776
	xorlw	9^8	; case 9
	skipnz
	goto	l9774
	xorlw	10^9	; case 10
	skipnz
	goto	l9782
	goto	l9792
	opt asmopt_on

	line	540
	
l3262:	
	line	541
	
l9792:	
;Beverage_services.c: 541: if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
	movf	(__PRESSED),w
	skipz
	goto	u6620
	goto	l9802
u6620:
	
l9794:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u6631
	goto	u6630
u6631:
	goto	l9802
u6630:
	
l9796:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u6641
	goto	u6640
u6641:
	goto	l9802
u6640:
	line	543
	
l9798:	
;Beverage_services.c: 542: {
;Beverage_services.c: 543: Lcd_Cmd(0xC8);
	movlw	(0C8h)
	fcall	_Lcd_Cmd
	line	544
	
l9800:	
;Beverage_services.c: 544: Num_Disp(time,3,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_time+1),w
	clrf	(?_Num_Disp+1)
	addwf	(?_Num_Disp+1)
	movf	(_time),w
	clrf	(?_Num_Disp)
	addwf	(?_Num_Disp)

	movlw	(03h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	0+(?_Num_Disp)+02h
	clrf	0+(?_Num_Disp)+03h
	fcall	_Num_Disp
	goto	l9802
	line	545
	
l3266:	
	line	546
	
l9802:	
;Beverage_services.c: 545: }
;Beverage_services.c: 546: DelayMs(10);
	movlw	low(0Ah)
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l9804
	line	547
	
l3258:	
	line	548
	
l9804:	
;Beverage_services.c: 547: }
;Beverage_services.c: 548: if(Enable_Cup_Count)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Cup_Count/8),(_Enable_Cup_Count)&7
	goto	u6651
	goto	u6650
u6651:
	goto	l9818
u6650:
	goto	l9814
	line	550
	
l9806:	
;Beverage_services.c: 549: {
;Beverage_services.c: 550: switch(_PRESSED)
	goto	l9814
	line	552
;Beverage_services.c: 551: {
;Beverage_services.c: 552: case _EXTRA_BUTTON: _DISABLE_MODE=_Cup_Count;
	
l3269:	
	
l9808:	
	movlw	(0Ch)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	553
;Beverage_services.c: 553: _ENABLE_MODE=_Temperature;
	movlw	(0Bh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	554
;Beverage_services.c: 554: break;
	goto	l9816
	line	555
;Beverage_services.c: 555: case _MENU_BUTTON: _DISABLE_MODE=_Cup_Count;
	
l3271:	
	
l9810:	
	movlw	(0Ch)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	556
;Beverage_services.c: 556: _ENABLE_MODE=_Count_Reset;
	movlw	(0Dh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	557
;Beverage_services.c: 557: break;
	goto	l9816
	line	558
	
l9812:	
;Beverage_services.c: 558: }
	goto	l9816
	line	550
	
l3268:	
	
l9814:	
	movf	(__PRESSED),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 8 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	8^0	; case 8
	skipnz
	goto	l9808
	xorlw	10^8	; case 10
	skipnz
	goto	l9810
	goto	l9816
	opt asmopt_on

	line	558
	
l3270:	
	line	559
	
l9816:	
;Beverage_services.c: 559: DelayMs(10);
	movlw	low(0Ah)
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l9818
	line	560
	
l3267:	
	line	561
	
l9818:	
;Beverage_services.c: 560: }
;Beverage_services.c: 561: if(Enable_Count_Reset)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Count_Reset/8),(_Enable_Count_Reset)&7
	goto	u6661
	goto	u6660
u6661:
	goto	l9872
u6660:
	goto	l9848
	line	563
	
l9820:	
;Beverage_services.c: 562: {
;Beverage_services.c: 563: switch(_PRESSED)
	goto	l9848
	line	565
;Beverage_services.c: 564: {
;Beverage_services.c: 565: case _EXTRA_BUTTON: eeprom_write(124,time);
	
l3274:	
	
l9822:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(07Ch)
	fcall	_eeprom_write
	line	566
	
l9824:	
;Beverage_services.c: 566: _DISABLE_MODE=_Count_Reset;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	567
	
l9826:	
;Beverage_services.c: 567: _ENABLE_MODE=_Cup_Count;
	movlw	(0Ch)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	569
;Beverage_services.c: 569: break;
	goto	l9850
	line	570
;Beverage_services.c: 570: case _MENU_BUTTON: eeprom_write(124,time);
	
l3276:	
	
l9828:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(07Ch)
	fcall	_eeprom_write
	line	571
	
l9830:	
;Beverage_services.c: 571: if(time)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_time+1),w
	iorwf	(_time),w
	skipnz
	goto	u6671
	goto	u6670
u6671:
	goto	l9842
u6670:
	line	573
	
l9832:	
;Beverage_services.c: 572: {
;Beverage_services.c: 573: for(unsigned char index=126;index<=143;index++)
	movlw	(07Eh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(enable_valves@index)
	movlw	(090h)
	subwf	(enable_valves@index),w
	skipc
	goto	u6681
	goto	u6680
u6681:
	goto	l9836
u6680:
	goto	l9842
	
l9834:	
	goto	l9842
	line	574
	
l3278:	
	line	575
	
l9836:	
;Beverage_services.c: 574: {
;Beverage_services.c: 575: eeprom_write(index,0x00);
	clrf	(?_eeprom_write)
	movf	(enable_valves@index),w
	fcall	_eeprom_write
	line	573
	
l9838:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	addwf	(enable_valves@index),f
	
l9840:	
	movlw	(090h)
	subwf	(enable_valves@index),w
	skipc
	goto	u6691
	goto	u6690
u6691:
	goto	l9836
u6690:
	goto	l9842
	
l3279:	
	goto	l9842
	line	577
	
l3277:	
	line	578
	
l9842:	
;Beverage_services.c: 576: }
;Beverage_services.c: 577: }
;Beverage_services.c: 578: _DISABLE_MODE=_Count_Reset;
	movlw	(0Dh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	579
	
l9844:	
;Beverage_services.c: 579: _ENABLE_MODE=_Normal_Mode;
	clrf	(__ENABLE_MODE)
	bsf	status,0
	rlf	(__ENABLE_MODE),f
	line	580
;Beverage_services.c: 580: break;
	goto	l9850
	line	581
	
l9846:	
;Beverage_services.c: 581: }
	goto	l9850
	line	563
	
l3273:	
	
l9848:	
	movf	(__PRESSED),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 8 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	8^0	; case 8
	skipnz
	goto	l9822
	xorlw	10^8	; case 10
	skipnz
	goto	l9828
	goto	l9850
	opt asmopt_on

	line	581
	
l3275:	
	line	582
	
l9850:	
;Beverage_services.c: 582: if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
	movf	(__PRESSED),w
	skipz
	goto	u6700
	goto	l9870
u6700:
	
l9852:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u6711
	goto	u6710
u6711:
	goto	l9870
u6710:
	
l9854:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u6721
	goto	u6720
u6721:
	goto	l9870
u6720:
	line	584
	
l9856:	
;Beverage_services.c: 583: {
;Beverage_services.c: 584: Lcd_Cmd(0xC6);
	movlw	(0C6h)
	fcall	_Lcd_Cmd
	line	585
	
l9858:	
;Beverage_services.c: 585: if(_PRESSED==_HOT_WATER_BUTTON)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	xorlw	09h
	skipz
	goto	u6731
	goto	u6730
u6731:
	goto	l9864
u6730:
	line	587
	
l9860:	
;Beverage_services.c: 586: {
;Beverage_services.c: 587: Lcd_Data('Y');;
	movlw	(059h)
	fcall	_Lcd_Data
	line	588
	
l9862:	
;Beverage_services.c: 588: time=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_time)
	movlw	high(01h)
	movwf	((_time))+1
	goto	l9864
	line	589
	
l3281:	
	line	590
	
l9864:	
;Beverage_services.c: 589: }
;Beverage_services.c: 590: if(_PRESSED==_MILK_BUTTON)
	movf	(__PRESSED),w
	xorlw	07h
	skipz
	goto	u6741
	goto	u6740
u6741:
	goto	l9870
u6740:
	line	592
	
l9866:	
;Beverage_services.c: 591: {
;Beverage_services.c: 592: Lcd_Data('N');;
	movlw	(04Eh)
	fcall	_Lcd_Data
	line	593
	
l9868:	
;Beverage_services.c: 593: time=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_time)
	clrf	(_time+1)
	goto	l9870
	line	594
	
l3282:	
	goto	l9870
	line	595
	
l3280:	
	line	596
	
l9870:	
;Beverage_services.c: 594: }
;Beverage_services.c: 595: }
;Beverage_services.c: 596: DelayMs(10);
	movlw	low(0Ah)
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l9872
	line	597
	
l3272:	
	line	598
	
l9872:	
;Beverage_services.c: 597: }
;Beverage_services.c: 598: if(Enable_Shortcut_Mode)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Shortcut_Mode/8),(_Enable_Shortcut_Mode)&7
	goto	u6751
	goto	u6750
u6751:
	goto	l10038
u6750:
	goto	l9990
	line	600
	
l9874:	
;Beverage_services.c: 599: {
;Beverage_services.c: 600: switch(_PRESSED)
	goto	l9990
	line	602
;Beverage_services.c: 601: {
;Beverage_services.c: 602: case _NORMAL_COFFEE_BUTTON: if(_PROCESS==_Preparation)
	
l3285:	
	
l9876:	
	movf	(__PROCESS),w
	xorlw	02h
	skipz
	goto	u6761
	goto	u6760
u6761:
	goto	l9884
u6760:
	line	604
	
l9878:	
;Beverage_services.c: 603: {
;Beverage_services.c: 604: eeprom_write(145,5);
	movlw	(05h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(091h)
	fcall	_eeprom_write
	line	605
	
l9880:	
;Beverage_services.c: 605: Enable_Coffee_Hot_Water_Valve = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_Enable_Coffee_Hot_Water_Valve/8),(_Enable_Coffee_Hot_Water_Valve)&7
	line	606
	
l9882:	
;Beverage_services.c: 606: Lcd_String("PREPARING COFFEE",1,0);
	movlw	low(STR_21|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_21|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	goto	l9884
	line	607
	
l3286:	
	line	608
	
l9884:	
;Beverage_services.c: 607: }
;Beverage_services.c: 608: if(_PROCESS==_Cleaning)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PROCESS),w
	xorlw	03h
	skipz
	goto	u6771
	goto	u6770
u6771:
	goto	l9904
u6770:
	line	610
	
l9886:	
;Beverage_services.c: 609: {
;Beverage_services.c: 610: Lcd_String("COFFEE CLEANING",1,0);
	movlw	low(STR_22|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_22|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	611
	
l9888:	
;Beverage_services.c: 611: _ON=_Coffee_Valve;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	line	612
	
l9890:	
;Beverage_services.c: 612: onthevalve();
	fcall	_onthevalve
	line	613
;Beverage_services.c: 613: while(RC5!=0)
	goto	l9902
	
l3289:	
	line	615
	
l9892:	
;Beverage_services.c: 614: {
;Beverage_services.c: 615: _ON=_Coffee_Valve;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	line	616
	
l9894:	
;Beverage_services.c: 616: onthevalve();
	fcall	_onthevalve
	line	617
	
l9896:	
;Beverage_services.c: 617: DelayMs(750);
	movlw	low(02EEh)
	movwf	(?_DelayMs)
	movlw	high(02EEh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	618
	
l9898:	
;Beverage_services.c: 618: _OFF=_Coffee_Valve;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__OFF)
	line	619
	
l9900:	
;Beverage_services.c: 619: offthevalve();
	fcall	_offthevalve
	line	620
;Beverage_services.c: 620: DelayMs(250);
	movlw	low(0FAh)
	movwf	(?_DelayMs)
	movlw	high(0FAh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l9902
	line	621
	
l3288:	
	line	613
	
l9902:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(61/8),(61)&7
	goto	u6781
	goto	u6780
u6781:
	goto	l9892
u6780:
	goto	l9904
	
l3290:	
	goto	l9904
	line	622
	
l3287:	
	line	623
	
l9904:	
;Beverage_services.c: 621: }
;Beverage_services.c: 622: }
;Beverage_services.c: 623: mem_index1=128; mem_index2=129;
	movlw	(080h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	movlw	(081h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	624
;Beverage_services.c: 624: break;
	goto	l9992
	line	625
;Beverage_services.c: 625: case _NORMAL_TEA_BUTTON: if(_PROCESS==_Preparation)
	
l3292:	
	
l9906:	
	movf	(__PROCESS),w
	xorlw	02h
	skipz
	goto	u6791
	goto	u6790
u6791:
	goto	l9914
u6790:
	line	627
	
l9908:	
;Beverage_services.c: 626: {
;Beverage_services.c: 627: eeprom_write(146,5);
	movlw	(05h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(092h)
	fcall	_eeprom_write
	line	628
	
l9910:	
;Beverage_services.c: 628: Enable_Tea_Hot_Water_Valve = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_Enable_Tea_Hot_Water_Valve/8),(_Enable_Tea_Hot_Water_Valve)&7
	line	629
	
l9912:	
;Beverage_services.c: 629: Lcd_String(" PREPARING TEA",1,0);
	movlw	low(STR_23|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_23|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	goto	l9914
	line	630
	
l3293:	
	line	631
	
l9914:	
;Beverage_services.c: 630: }
;Beverage_services.c: 631: if(_PROCESS==_Cleaning)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PROCESS),w
	xorlw	03h
	skipz
	goto	u6801
	goto	u6800
u6801:
	goto	l9934
u6800:
	line	633
	
l9916:	
;Beverage_services.c: 632: {
;Beverage_services.c: 633: Lcd_String("TEA CLEANING",1,0);
	movlw	low(STR_24|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_24|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	634
	
l9918:	
;Beverage_services.c: 634: _ON=_Tea_Valve;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	line	635
	
l9920:	
;Beverage_services.c: 635: onthevalve();
	fcall	_onthevalve
	line	636
;Beverage_services.c: 636: while(RC4!=0)
	goto	l9932
	
l3296:	
	line	638
	
l9922:	
;Beverage_services.c: 637: {
;Beverage_services.c: 638: _ON=_Tea_Valve;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	line	639
	
l9924:	
;Beverage_services.c: 639: onthevalve();
	fcall	_onthevalve
	line	640
	
l9926:	
;Beverage_services.c: 640: DelayMs(750);
	movlw	low(02EEh)
	movwf	(?_DelayMs)
	movlw	high(02EEh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	641
	
l9928:	
;Beverage_services.c: 641: _OFF=_Tea_Valve;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__OFF)
	line	642
	
l9930:	
;Beverage_services.c: 642: offthevalve();
	fcall	_offthevalve
	line	643
;Beverage_services.c: 643: DelayMs(250);
	movlw	low(0FAh)
	movwf	(?_DelayMs)
	movlw	high(0FAh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l9932
	line	644
	
l3295:	
	line	636
	
l9932:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u6811
	goto	u6810
u6811:
	goto	l9922
u6810:
	goto	l9934
	
l3297:	
	goto	l9934
	line	645
	
l3294:	
	line	646
	
l9934:	
;Beverage_services.c: 644: }
;Beverage_services.c: 645: }
;Beverage_services.c: 646: mem_index1=130; mem_index2=131;
	movlw	(082h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	movlw	(083h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	647
;Beverage_services.c: 647: break;
	goto	l9992
	line	648
;Beverage_services.c: 648: case _LIGHT_COFFEE_BUTTON: mem_index1=132; mem_index2=133;
	
l3298:	
	
l9936:	
	movlw	(084h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	movlw	(085h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	649
;Beverage_services.c: 649: break;
	goto	l9992
	line	650
;Beverage_services.c: 650: case _LIGHT_TEA_BUTTON: mem_index1=134; mem_index2=135;
	
l3299:	
	
l9938:	
	movlw	(086h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	movlw	(087h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	651
;Beverage_services.c: 651: break;
	goto	l9992
	line	652
;Beverage_services.c: 652: case _BLACK_COFFEE_BUTTON: mem_index1=136; mem_index2=137;
	
l3300:	
	
l9940:	
	movlw	(088h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	movlw	(089h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	653
;Beverage_services.c: 653: break;
	goto	l9992
	line	654
;Beverage_services.c: 654: case _BLACK_TEA_BUTTON: mem_index1=138; mem_index2=139;
	
l3301:	
	
l9942:	
	movlw	(08Ah)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	movlw	(08Bh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	655
;Beverage_services.c: 655: break;
	goto	l9992
	line	656
;Beverage_services.c: 656: case _MILK_BUTTON: if(_PROCESS==_Cleaning)
	
l3302:	
	
l9944:	
	movf	(__PROCESS),w
	xorlw	03h
	skipz
	goto	u6821
	goto	u6820
u6821:
	goto	l9968
u6820:
	line	658
	
l9946:	
;Beverage_services.c: 657: {
;Beverage_services.c: 658: Lcd_String("MILK CLEANING",1,0);
	movlw	low(STR_25|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_25|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	659
	
l9948:	
;Beverage_services.c: 659: _ON=_Viber_Motor;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	line	660
	
l9950:	
;Beverage_services.c: 660: onthevalve();
	fcall	_onthevalve
	line	661
;Beverage_services.c: 661: while(RB4!=0)
	goto	l9962
	
l3305:	
	line	663
	
l9952:	
;Beverage_services.c: 662: {
;Beverage_services.c: 663: _ON=_Milk_Valve_Forward;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(__ON)
	bsf	status,0
	rlf	(__ON),f
	line	664
	
l9954:	
;Beverage_services.c: 664: onthevalve();
	fcall	_onthevalve
	line	665
	
l9956:	
;Beverage_services.c: 665: DelayMs(750);
	movlw	low(02EEh)
	movwf	(?_DelayMs)
	movlw	high(02EEh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	666
	
l9958:	
;Beverage_services.c: 666: _OFF=_Milk_Valve_Forward;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(__OFF)
	bsf	status,0
	rlf	(__OFF),f
	line	667
	
l9960:	
;Beverage_services.c: 667: offthevalve();
	fcall	_offthevalve
	line	668
;Beverage_services.c: 668: DelayMs(250);
	movlw	low(0FAh)
	movwf	(?_DelayMs)
	movlw	high(0FAh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l9962
	line	669
	
l3304:	
	line	661
	
l9962:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(52/8),(52)&7
	goto	u6831
	goto	u6830
u6831:
	goto	l9952
u6830:
	goto	l9964
	
l3306:	
	line	670
	
l9964:	
;Beverage_services.c: 669: }
;Beverage_services.c: 670: _OFF=_Viber_Motor;
	movlw	(09h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__OFF)
	line	671
	
l9966:	
;Beverage_services.c: 671: offthevalve();
	fcall	_offthevalve
	goto	l9968
	line	672
	
l3303:	
	line	673
	
l9968:	
;Beverage_services.c: 672: }
;Beverage_services.c: 673: mem_index1=140; mem_index2=141;
	movlw	(08Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	
l9970:	
	movlw	(08Dh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	674
;Beverage_services.c: 674: break;
	goto	l9992
	line	675
;Beverage_services.c: 675: case _HOT_WATER_BUTTON: mem_index1=142; mem_index2=143;
	
l3307:	
	
l9972:	
	movlw	(08Eh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	movlw	(08Fh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	676
;Beverage_services.c: 676: break;
	goto	l9992
	line	677
;Beverage_services.c: 677: case _EXTRA_BUTTON: if(_PROCESS==_Countdisplay && _PREVIOUS_PROCESS==_Countdisplay)
	
l3308:	
	
l9974:	
	movf	(__PROCESS),w
	xorlw	01h
	skipz
	goto	u6841
	goto	u6840
u6841:
	goto	l3309
u6840:
	
l9976:	
	movf	(__PREVIOUS_PROCESS),w
	xorlw	01h
	skipz
	goto	u6851
	goto	u6850
u6851:
	goto	l3309
u6850:
	line	679
	
l9978:	
;Beverage_services.c: 678: {
;Beverage_services.c: 679: _PROCESS=_Preparation;
	movlw	(02h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__PROCESS)
	line	680
	
l3309:	
	line	681
;Beverage_services.c: 680: }
;Beverage_services.c: 681: if(_PROCESS==_Preparation && _PREVIOUS_PROCESS==_Preparation)
	movf	(__PROCESS),w
	xorlw	02h
	skipz
	goto	u6861
	goto	u6860
u6861:
	goto	l3310
u6860:
	
l9980:	
	movf	(__PREVIOUS_PROCESS),w
	xorlw	02h
	skipz
	goto	u6871
	goto	u6870
u6871:
	goto	l3310
u6870:
	line	683
	
l9982:	
;Beverage_services.c: 682: {
;Beverage_services.c: 683: _PROCESS=_Cleaning;
	movlw	(03h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__PROCESS)
	line	684
	
l3310:	
	line	685
;Beverage_services.c: 684: }
;Beverage_services.c: 685: if(_PROCESS==_Cleaning&& _PREVIOUS_PROCESS==_Cleaning)
	movf	(__PROCESS),w
	xorlw	03h
	skipz
	goto	u6881
	goto	u6880
u6881:
	goto	l9992
u6880:
	
l9984:	
	movf	(__PREVIOUS_PROCESS),w
	xorlw	03h
	skipz
	goto	u6891
	goto	u6890
u6891:
	goto	l9992
u6890:
	line	687
	
l9986:	
;Beverage_services.c: 686: {
;Beverage_services.c: 687: _PROCESS=_Countdisplay;
	clrf	(__PROCESS)
	bsf	status,0
	rlf	(__PROCESS),f
	goto	l9992
	line	688
	
l3311:	
	line	689
;Beverage_services.c: 688: }
;Beverage_services.c: 689: break;
	goto	l9992
	line	690
	
l9988:	
;Beverage_services.c: 690: }
	goto	l9992
	line	600
	
l3284:	
	
l9990:	
	movf	(__PRESSED),w
	; Switch size 1, requested type "space"
; Number of cases is 9, Range of values is 1 to 9
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           28    15 (average)
; direct_byte           38    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l9876
	xorlw	2^1	; case 2
	skipnz
	goto	l9906
	xorlw	3^2	; case 3
	skipnz
	goto	l9936
	xorlw	4^3	; case 4
	skipnz
	goto	l9938
	xorlw	5^4	; case 5
	skipnz
	goto	l9940
	xorlw	6^5	; case 6
	skipnz
	goto	l9942
	xorlw	7^6	; case 7
	skipnz
	goto	l9944
	xorlw	8^7	; case 8
	skipnz
	goto	l9974
	xorlw	9^8	; case 9
	skipnz
	goto	l9972
	goto	l9992
	opt asmopt_on

	line	690
	
l3291:	
	line	691
	
l9992:	
;Beverage_services.c: 691: if(_PREVIOUS_PROCESS!=_PROCESS)
	movf	(__PREVIOUS_PROCESS),w
	xorwf	(__PROCESS),w
	skipnz
	goto	u6901
	goto	u6900
u6901:
	goto	l10010
u6900:
	line	693
	
l9994:	
;Beverage_services.c: 692: {
;Beverage_services.c: 693: if(_PROCESS==_Countdisplay)
	movf	(__PROCESS),w
	xorlw	01h
	skipz
	goto	u6911
	goto	u6910
u6911:
	goto	l9998
u6910:
	line	695
	
l9996:	
;Beverage_services.c: 694: {
;Beverage_services.c: 695: Lcd_String("COUNT DISPLAY",1,0);
	movlw	low(STR_26|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_26|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	goto	l9998
	line	696
	
l3313:	
	line	697
	
l9998:	
;Beverage_services.c: 696: }
;Beverage_services.c: 697: if(_PROCESS==_Preparation)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PROCESS),w
	xorlw	02h
	skipz
	goto	u6921
	goto	u6920
u6921:
	goto	l10002
u6920:
	line	699
	
l10000:	
;Beverage_services.c: 698: {
;Beverage_services.c: 699: Lcd_String("DICATION",1,0);
	movlw	low(STR_27|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_27|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	700
;Beverage_services.c: 700: Lcd_String("PREPARATION",0,1);
	movlw	low(STR_28|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_28|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	bsf	status,0
	rlf	0+(?_Lcd_String)+03h,f
	fcall	_Lcd_String
	goto	l10002
	line	701
	
l3314:	
	line	702
	
l10002:	
;Beverage_services.c: 701: }
;Beverage_services.c: 702: if(_PROCESS==_Cleaning)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PROCESS),w
	xorlw	03h
	skipz
	goto	u6931
	goto	u6930
u6931:
	goto	l10006
u6930:
	line	704
	
l10004:	
;Beverage_services.c: 703: {
;Beverage_services.c: 704: Lcd_String("CLEANING",1,0);
	movlw	low(STR_29|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_29|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	goto	l10006
	line	705
	
l3315:	
	line	706
	
l10006:	
;Beverage_services.c: 705: }
;Beverage_services.c: 706: DelayMs(10);
	movlw	low(0Ah)
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	707
	
l10008:	
;Beverage_services.c: 707: _PREVIOUS_PROCESS=_PROCESS;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PROCESS),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__PREVIOUS_PROCESS)
	goto	l10010
	line	708
	
l3312:	
	line	709
	
l10010:	
;Beverage_services.c: 708: }
;Beverage_services.c: 709: if(_PRESSED && (_PRESSED!=_EXTRA_BUTTON))
	movf	(__PRESSED),w
	skipz
	goto	u6940
	goto	l10038
u6940:
	
l10012:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u6951
	goto	u6950
u6951:
	goto	l10038
u6950:
	line	711
	
l10014:	
;Beverage_services.c: 710: {
;Beverage_services.c: 711: Inidcate_Buzzer();
	fcall	_Inidcate_Buzzer
	line	712
	
l10016:	
;Beverage_services.c: 712: if(_PROCESS!=_Countdisplay)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PROCESS),w
	xorlw	01h
	skipnz
	goto	u6961
	goto	u6960
u6961:
	goto	l10024
u6960:
	line	714
	
l10018:	
;Beverage_services.c: 713: {
;Beverage_services.c: 714: call_control_valve();
	fcall	_call_control_valve
	line	716
	
l10020:	
;Beverage_services.c: 716: _DISABLE_MODE=_Shortcut_Mode;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	717
	
l10022:	
;Beverage_services.c: 717: _ENABLE_MODE=_Normal_Mode;
	clrf	(__ENABLE_MODE)
	bsf	status,0
	rlf	(__ENABLE_MODE),f
	goto	l10024
	line	718
	
l3317:	
	line	719
	
l10024:	
;Beverage_services.c: 718: }
;Beverage_services.c: 719: if(_PROCESS!=_Cleaning && _PROCESS!=_Countdisplay)
	movf	(__PROCESS),w
	xorlw	03h
	skipnz
	goto	u6971
	goto	u6970
u6971:
	goto	l10030
u6970:
	
l10026:	
	movf	(__PROCESS),w
	xorlw	01h
	skipnz
	goto	u6981
	goto	u6980
u6981:
	goto	l10030
u6980:
	line	721
	
l10028:	
;Beverage_services.c: 720: {
;Beverage_services.c: 721: Enable_Shortcut_Mode=0;
	bcf	(_Enable_Shortcut_Mode/8),(_Enable_Shortcut_Mode)&7
	line	722
;Beverage_services.c: 722: Enable_Normal_Mode=1;
	bsf	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	goto	l10030
	line	723
	
l3318:	
	line	724
	
l10030:	
;Beverage_services.c: 723: }
;Beverage_services.c: 724: if(_PROCESS==_Countdisplay)
	movf	(__PROCESS),w
	xorlw	01h
	skipz
	goto	u6991
	goto	u6990
u6991:
	goto	l10038
u6990:
	line	726
	
l10032:	
;Beverage_services.c: 725: {
;Beverage_services.c: 726: Print_Menu();
	fcall	_Print_Menu
	line	727
	
l10034:	
;Beverage_services.c: 727: Lcd_Cmd(0xC5); Num_Disp(count_read(mem_index1,mem_index2),5,0);
	movlw	(0C5h)
	fcall	_Lcd_Cmd
	
l10036:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mem_index2),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_count_read)
	movf	(_mem_index1),w
	fcall	_count_read
	movf	(1+(?_count_read)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_Num_Disp+1)
	addwf	(?_Num_Disp+1)
	movf	(0+(?_count_read)),w
	clrf	(?_Num_Disp)
	addwf	(?_Num_Disp)

	movlw	(05h)
	movwf	(??_enable_valves+1)+0
	movf	(??_enable_valves+1)+0,w
	movwf	0+(?_Num_Disp)+02h
	clrf	0+(?_Num_Disp)+03h
	fcall	_Num_Disp
	goto	l10038
	line	728
	
l3319:	
	goto	l10038
	line	729
	
l3316:	
	goto	l10038
	line	730
	
l3283:	
	line	732
	
l10038:	
;Beverage_services.c: 728: }
;Beverage_services.c: 729: }
;Beverage_services.c: 730: }
;Beverage_services.c: 732: if(_PRESSED!=0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	skipz
	goto	u7000
	goto	l3321
u7000:
	line	734
	
l10040:	
;Beverage_services.c: 733: {
;Beverage_services.c: 734: _PRESSED=0;
	clrf	(__PRESSED)
	line	735
;Beverage_services.c: 735: _SHORTCUT_PRESSED=0;
	clrf	(__SHORTCUT_PRESSED)
	line	736
	
l10042:	
;Beverage_services.c: 736: i=0;j=0;
	clrf	(_i)
	clrf	(_i+1)
	clrf	(_j)
	clrf	(_j+1)
	goto	l3321
	line	737
	
l3320:	
	line	738
	
l3321:	
	return
	opt stack 0
GLOBAL	__end_of_enable_valves
	__end_of_enable_valves:
;; =============== function _enable_valves ends ============

	signat	_enable_valves,88
	global	_Mode_Init
psect	text781,local,class=CODE,delta=2
global __ptext781
__ptext781:

;; *************** function _Mode_Init *****************
;; Defined at:
;;		line 46 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  option          1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Read_ValveFrom_Memory
;;		_eeprom_read
;;		_Lcd_String
;;		_eeprom_write
;;		_Lcd_Cmd
;;		_call_control_valve
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text781
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	46
	global	__size_of_Mode_Init
	__size_of_Mode_Init	equ	__end_of_Mode_Init-_Mode_Init
	
_Mode_Init:	
	opt	stack 3
; Regs used in _Mode_Init: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	47
	
l9250:	
;Beverage_services.c: 47: Enable_Normal_Mode=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	line	48
;Beverage_services.c: 48: Enable_Config_Mode=0;
	bcf	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	line	49
;Beverage_services.c: 49: Enable_Password=0;
	bcf	(_Enable_Password/8),(_Enable_Password)&7
	line	50
;Beverage_services.c: 50: Enable_Valves=0;
	bcf	(_Enable_Valves/8),(_Enable_Valves)&7
	line	51
;Beverage_services.c: 51: Enable_Selection=0;
	bcf	(_Enable_Selection/8),(_Enable_Selection)&7
	line	52
;Beverage_services.c: 52: Enable_Coffee_Dication_Time=0;
	bcf	(_Enable_Coffee_Dication_Time/8),(_Enable_Coffee_Dication_Time)&7
	line	53
;Beverage_services.c: 53: Enable_Tea_Dication_Time=0;
	bcf	(_Enable_Tea_Dication_Time/8),(_Enable_Tea_Dication_Time)&7
	line	54
;Beverage_services.c: 54: Enable_Dication_Delay=0;
	bcf	(_Enable_Dication_Delay/8),(_Enable_Dication_Delay)&7
	line	55
;Beverage_services.c: 55: Enable_Hot_Water_Time=0;
	bcf	(_Enable_Hot_Water_Time/8),(_Enable_Hot_Water_Time)&7
	line	56
;Beverage_services.c: 56: Enable_Temperature=0;
	bcf	(_Enable_Temperature/8),(_Enable_Temperature)&7
	line	57
;Beverage_services.c: 57: Enable_Cup_Count=0;
	bcf	(_Enable_Cup_Count/8),(_Enable_Cup_Count)&7
	line	58
;Beverage_services.c: 58: Enable_Count_Reset=0;
	bcf	(_Enable_Count_Reset/8),(_Enable_Count_Reset)&7
	line	59
;Beverage_services.c: 59: Enable_Shortcut_Mode=0;
	bcf	(_Enable_Shortcut_Mode/8),(_Enable_Shortcut_Mode)&7
	line	61
;Beverage_services.c: 61: for(unsigned char option=0;option<9;option++)
	clrf	(Mode_Init@option)
	
l9252:	
	movlw	(09h)
	subwf	(Mode_Init@option),w
	skipc
	goto	u5631
	goto	u5630
u5631:
	goto	l9256
u5630:
	goto	l9262
	
l9254:	
	goto	l9262
	line	62
	
l3101:	
	line	63
	
l9256:	
;Beverage_services.c: 62: {
;Beverage_services.c: 63: MENU[option]=Read_ValveFrom_Memory(option);
	movf	(Mode_Init@option),w
	fcall	_Read_ValveFrom_Memory
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Mode_Init+0)+0
	movf	(Mode_Init@option),w
	addlw	_MENU&0ffh
	movwf	fsr0
	movf	(??_Mode_Init+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	61
	
l9258:	
	movlw	(01h)
	movwf	(??_Mode_Init+0)+0
	movf	(??_Mode_Init+0)+0,w
	addwf	(Mode_Init@option),f
	
l9260:	
	movlw	(09h)
	subwf	(Mode_Init@option),w
	skipc
	goto	u5641
	goto	u5640
u5641:
	goto	l9256
u5640:
	goto	l9262
	
l3102:	
	line	65
	
l9262:	
;Beverage_services.c: 64: }
;Beverage_services.c: 65: if(eeprom_read(145)>1 || eeprom_read(146)>1)
	movlw	(091h)
	movwf	(??_Mode_Init+0)+0
	movf	(??_Mode_Init+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Mode_Init+1)+0
	movlw	(02h)
	subwf	0+(??_Mode_Init+1)+0,w
	skipnc
	goto	u5651
	goto	u5650
u5651:
	goto	l9266
u5650:
	
l9264:	
	movlw	(092h)
	movwf	(??_Mode_Init+0)+0
	movf	(??_Mode_Init+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Mode_Init+1)+0
	movlw	(02h)
	subwf	0+(??_Mode_Init+1)+0,w
	skipc
	goto	u5661
	goto	u5660
u5661:
	goto	l3115
u5660:
	goto	l9266
	
l3105:	
	line	67
	
l9266:	
;Beverage_services.c: 66: {
;Beverage_services.c: 67: Lcd_String("CONTINUE",1,0);
	movlw	low(STR_14|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_14|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	68
;Beverage_services.c: 68: Lcd_String("PREPARATION",0,1);
	movlw	low(STR_15|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_15|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	bsf	status,0
	rlf	0+(?_Lcd_String)+03h,f
	fcall	_Lcd_String
	goto	l9268
	line	69
;Beverage_services.c: 69: while(1)
	
l3106:	
	line	71
	
l9268:	
;Beverage_services.c: 70: {
;Beverage_services.c: 71: if(RB7==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(55/8),(55)&7
	goto	u5671
	goto	u5670
u5671:
	goto	l9290
u5670:
	line	73
	
l9270:	
;Beverage_services.c: 72: {
;Beverage_services.c: 73: eeprom_write(145,eeprom_read(145)-1);
	movlw	(091h)
	movwf	(??_Mode_Init+0)+0
	movf	(??_Mode_Init+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	addlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Mode_Init+1)+0
	movf	(??_Mode_Init+1)+0,w
	movwf	(?_eeprom_write)
	movlw	(091h)
	fcall	_eeprom_write
	line	74
;Beverage_services.c: 74: eeprom_write(146,eeprom_read(146)-1);
	movlw	(092h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Mode_Init+0)+0
	movf	(??_Mode_Init+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	addlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Mode_Init+1)+0
	movf	(??_Mode_Init+1)+0,w
	movwf	(?_eeprom_write)
	movlw	(092h)
	fcall	_eeprom_write
	line	75
;Beverage_services.c: 75: Lcd_Cmd(0x80);
	movlw	(080h)
	fcall	_Lcd_Cmd
	line	76
	
l9272:	
;Beverage_services.c: 76: Lcd_String("DICATION",0,0);
	movlw	low(STR_16|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_16|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	77
	
l9274:	
;Beverage_services.c: 77: if(eeprom_read(145)>1 && eeprom_read(145)<10)
	movlw	(091h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Mode_Init+0)+0
	movf	(??_Mode_Init+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Mode_Init+1)+0
	movlw	(02h)
	subwf	0+(??_Mode_Init+1)+0,w
	skipc
	goto	u5681
	goto	u5680
u5681:
	goto	l9280
u5680:
	
l9276:	
	movlw	(091h)
	movwf	(??_Mode_Init+0)+0
	movf	(??_Mode_Init+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Mode_Init+1)+0
	movlw	(0Ah)
	subwf	0+(??_Mode_Init+1)+0,w
	skipnc
	goto	u5691
	goto	u5690
u5691:
	goto	l9280
u5690:
	line	78
	
l9278:	
;Beverage_services.c: 78: Enable_Coffee_Hot_Water_Valve = 1;
	bsf	(_Enable_Coffee_Hot_Water_Valve/8),(_Enable_Coffee_Hot_Water_Valve)&7
	goto	l9280
	
l3108:	
	line	79
	
l9280:	
;Beverage_services.c: 79: if(eeprom_read(146)>1 && eeprom_read(146)<10)
	movlw	(092h)
	movwf	(??_Mode_Init+0)+0
	movf	(??_Mode_Init+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Mode_Init+1)+0
	movlw	(02h)
	subwf	0+(??_Mode_Init+1)+0,w
	skipc
	goto	u5701
	goto	u5700
u5701:
	goto	l9286
u5700:
	
l9282:	
	movlw	(092h)
	movwf	(??_Mode_Init+0)+0
	movf	(??_Mode_Init+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Mode_Init+1)+0
	movlw	(0Ah)
	subwf	0+(??_Mode_Init+1)+0,w
	skipnc
	goto	u5711
	goto	u5710
u5711:
	goto	l9286
u5710:
	line	80
	
l9284:	
;Beverage_services.c: 80: Enable_Tea_Hot_Water_Valve = 1;
	bsf	(_Enable_Tea_Hot_Water_Valve/8),(_Enable_Tea_Hot_Water_Valve)&7
	goto	l9286
	
l3109:	
	line	81
	
l9286:	
;Beverage_services.c: 81: call_control_valve();
	fcall	_call_control_valve
	line	82
	
l9288:	
;Beverage_services.c: 82: _clear=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(__clear/8),(__clear)&7
	goto	l9290
	line	83
	
l3107:	
	line	84
	
l9290:	
;Beverage_services.c: 83: }
;Beverage_services.c: 84: if(RB6==0 || _clear==1)
	btfss	(54/8),(54)&7
	goto	u5721
	goto	u5720
u5721:
	goto	l3112
u5720:
	
l9292:	
	btfss	(__clear/8),(__clear)&7
	goto	u5731
	goto	u5730
u5731:
	goto	l9268
u5730:
	
l3112:	
	line	86
;Beverage_services.c: 85: {
;Beverage_services.c: 86: _clear=0;
	bcf	(__clear/8),(__clear)&7
	line	87
	
l9294:	
;Beverage_services.c: 87: eeprom_write(145,0);
	clrf	(?_eeprom_write)
	movlw	(091h)
	fcall	_eeprom_write
	line	88
;Beverage_services.c: 88: eeprom_write(146,0);
	clrf	(?_eeprom_write)
	movlw	(092h)
	fcall	_eeprom_write
	line	89
	
l9296:	
;Beverage_services.c: 89: _DISABLE_MODE=_Shortcut_Mode;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Mode_Init+0)+0
	movf	(??_Mode_Init+0)+0,w
	movwf	(__DISABLE_MODE)
	line	90
	
l9298:	
;Beverage_services.c: 90: _ENABLE_MODE=_Normal_Mode;
	clrf	(__ENABLE_MODE)
	bsf	status,0
	rlf	(__ENABLE_MODE),f
	line	91
;Beverage_services.c: 91: break;
	goto	l3115
	line	92
	
l3110:	
	goto	l9268
	line	93
	
l3114:	
	line	69
	goto	l9268
	
l3113:	
	goto	l3115
	line	94
	
l3103:	
	line	96
	
l3115:	
	return
	opt stack 0
GLOBAL	__end_of_Mode_Init
	__end_of_Mode_Init:
;; =============== function _Mode_Init ends ============

	signat	_Mode_Init,88
	global	_call_control_valve
psect	text782,local,class=CODE,delta=2
global __ptext782
__ptext782:

;; *************** function _call_control_valve *****************
;; Defined at:
;;		line 955 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       8       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___bmul
;;		_eeprom_read
;;		_control_valve
;;		_Lcd_Cmd
;;		_myitoa
;;		_Lcd_String
;;		_eeprom_write
;;		___wmul
;; This function is called by:
;;		_Mode_Init
;;		_enable_valves
;; This function uses a non-reentrant model
;;
psect	text782
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	955
	global	__size_of_call_control_valve
	__size_of_call_control_valve	equ	__end_of_call_control_valve-_call_control_valve
	
_call_control_valve:	
	opt	stack 3
; Regs used in _call_control_valve: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	956
	
l9154:	
;Beverage_services.c: 956: if(Enable_Coffee_Valve)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Coffee_Valve/8),(_Enable_Coffee_Valve)&7
	goto	u5511
	goto	u5510
u5511:
	goto	l9162
u5510:
	line	958
	
l9156:	
;Beverage_services.c: 957: {
;Beverage_services.c: 958: _ON=_OFF=_Coffee_Valve;
	movlw	(06h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	959
	
l9158:	
;Beverage_services.c: 959: control_valve(eeprom_read((12*_CHOICE_SELECTED)-2),eeprom_read((12*_CHOICE_SELECTED)-2+1));
	movlw	(0Ch)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?___bmul)
	movf	(__CHOICE_SELECTED),w
	fcall	___bmul
	addlw	0FEh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+1)+0
	movf	(??_call_control_valve+1)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+2)+0
	clrf	(??_call_control_valve+2)+0+1
	movf	0+(??_call_control_valve+2)+0,w
	movwf	(?_control_valve)
	movf	1+(??_call_control_valve+2)+0,w
	movwf	(?_control_valve+1)
	movlw	(0Ch)
	movwf	(??_call_control_valve+4)+0
	movf	(??_call_control_valve+4)+0,w
	movwf	(?___bmul)
	movf	(__CHOICE_SELECTED),w
	fcall	___bmul
	addlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+5)+0
	movf	(??_call_control_valve+5)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+6)+0
	clrf	(??_call_control_valve+6)+0+1
	movf	0+(??_call_control_valve+6)+0,w
	movwf	0+(?_control_valve)+02h
	movf	1+(??_call_control_valve+6)+0,w
	movwf	1+(?_control_valve)+02h
	fcall	_control_valve
	line	960
	
l9160:	
;Beverage_services.c: 960: Enable_Coffee_Valve=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Coffee_Valve/8),(_Enable_Coffee_Valve)&7
	goto	l9162
	line	961
	
l3368:	
	line	962
	
l9162:	
;Beverage_services.c: 961: }
;Beverage_services.c: 962: if(Enable_Tea_Valve)
	btfss	(_Enable_Tea_Valve/8),(_Enable_Tea_Valve)&7
	goto	u5521
	goto	u5520
u5521:
	goto	l9170
u5520:
	line	964
	
l9164:	
;Beverage_services.c: 963: {
;Beverage_services.c: 964: _ON=_OFF=_Tea_Valve;
	movlw	(08h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	965
	
l9166:	
;Beverage_services.c: 965: control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+2),eeprom_read((12*_CHOICE_SELECTED)-2+3));
	movlw	(0Ch)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?___bmul)
	movf	(__CHOICE_SELECTED),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+1)+0
	movf	(??_call_control_valve+1)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+2)+0
	clrf	(??_call_control_valve+2)+0+1
	movf	0+(??_call_control_valve+2)+0,w
	movwf	(?_control_valve)
	movf	1+(??_call_control_valve+2)+0,w
	movwf	(?_control_valve+1)
	movlw	(0Ch)
	movwf	(??_call_control_valve+4)+0
	movf	(??_call_control_valve+4)+0,w
	movwf	(?___bmul)
	movf	(__CHOICE_SELECTED),w
	fcall	___bmul
	addlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+5)+0
	movf	(??_call_control_valve+5)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+6)+0
	clrf	(??_call_control_valve+6)+0+1
	movf	0+(??_call_control_valve+6)+0,w
	movwf	0+(?_control_valve)+02h
	movf	1+(??_call_control_valve+6)+0,w
	movwf	1+(?_control_valve)+02h
	fcall	_control_valve
	line	966
	
l9168:	
;Beverage_services.c: 966: Enable_Tea_Valve=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Tea_Valve/8),(_Enable_Tea_Valve)&7
	goto	l9170
	line	967
	
l3369:	
	line	968
	
l9170:	
;Beverage_services.c: 967: }
;Beverage_services.c: 968: if(Enable_Mixing_Hot_Water_Valve)
	btfss	(_Enable_Mixing_Hot_Water_Valve/8),(_Enable_Mixing_Hot_Water_Valve)&7
	goto	u5531
	goto	u5530
u5531:
	goto	l9178
u5530:
	line	970
	
l9172:	
;Beverage_services.c: 969: {
;Beverage_services.c: 970: _ON=_OFF=_Mixing_Hot_Water_Valve;
	movlw	(03h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	971
	
l9174:	
;Beverage_services.c: 971: control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+4),eeprom_read((12*_CHOICE_SELECTED)-2+5));
	movlw	(0Ch)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?___bmul)
	movf	(__CHOICE_SELECTED),w
	fcall	___bmul
	addlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+1)+0
	movf	(??_call_control_valve+1)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+2)+0
	clrf	(??_call_control_valve+2)+0+1
	movf	0+(??_call_control_valve+2)+0,w
	movwf	(?_control_valve)
	movf	1+(??_call_control_valve+2)+0,w
	movwf	(?_control_valve+1)
	movlw	(0Ch)
	movwf	(??_call_control_valve+4)+0
	movf	(??_call_control_valve+4)+0,w
	movwf	(?___bmul)
	movf	(__CHOICE_SELECTED),w
	fcall	___bmul
	addlw	03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+5)+0
	movf	(??_call_control_valve+5)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+6)+0
	clrf	(??_call_control_valve+6)+0+1
	movf	0+(??_call_control_valve+6)+0,w
	movwf	0+(?_control_valve)+02h
	movf	1+(??_call_control_valve+6)+0,w
	movwf	1+(?_control_valve)+02h
	fcall	_control_valve
	line	972
	
l9176:	
;Beverage_services.c: 972: Enable_Mixing_Hot_Water_Valve=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Mixing_Hot_Water_Valve/8),(_Enable_Mixing_Hot_Water_Valve)&7
	goto	l9178
	line	973
	
l3370:	
	line	974
	
l9178:	
;Beverage_services.c: 973: }
;Beverage_services.c: 974: if(Enable_Milk_Forward)
	btfss	(_Enable_Milk_Forward/8),(_Enable_Milk_Forward)&7
	goto	u5541
	goto	u5540
u5541:
	goto	l9186
u5540:
	line	976
	
l9180:	
;Beverage_services.c: 975: {
;Beverage_services.c: 976: _ON=_OFF=_Milk_Valve_Forward;
	movlw	(01h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	977
	
l9182:	
;Beverage_services.c: 977: control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+6),eeprom_read((12*_CHOICE_SELECTED)-2+7));
	movlw	(0Ch)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?___bmul)
	movf	(__CHOICE_SELECTED),w
	fcall	___bmul
	addlw	04h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+1)+0
	movf	(??_call_control_valve+1)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+2)+0
	clrf	(??_call_control_valve+2)+0+1
	movf	0+(??_call_control_valve+2)+0,w
	movwf	(?_control_valve)
	movf	1+(??_call_control_valve+2)+0,w
	movwf	(?_control_valve+1)
	movlw	(0Ch)
	movwf	(??_call_control_valve+4)+0
	movf	(??_call_control_valve+4)+0,w
	movwf	(?___bmul)
	movf	(__CHOICE_SELECTED),w
	fcall	___bmul
	addlw	05h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+5)+0
	movf	(??_call_control_valve+5)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+6)+0
	clrf	(??_call_control_valve+6)+0+1
	movf	0+(??_call_control_valve+6)+0,w
	movwf	0+(?_control_valve)+02h
	movf	1+(??_call_control_valve+6)+0,w
	movwf	1+(?_control_valve)+02h
	fcall	_control_valve
	line	978
	
l9184:	
;Beverage_services.c: 978: Enable_Milk_Forward=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Milk_Forward/8),(_Enable_Milk_Forward)&7
	goto	l9186
	line	979
	
l3371:	
	line	980
	
l9186:	
;Beverage_services.c: 979: }
;Beverage_services.c: 980: if(Enable_Viber_Motor)
	btfss	(_Enable_Viber_Motor/8),(_Enable_Viber_Motor)&7
	goto	u5551
	goto	u5550
u5551:
	goto	l9194
u5550:
	line	982
	
l9188:	
;Beverage_services.c: 981: {
;Beverage_services.c: 982: _ON=_OFF=_Viber_Motor;
	movlw	(09h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	983
	
l9190:	
;Beverage_services.c: 983: control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+8),eeprom_read((12*_CHOICE_SELECTED)-2+9));
	movlw	(0Ch)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?___bmul)
	movf	(__CHOICE_SELECTED),w
	fcall	___bmul
	addlw	06h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+1)+0
	movf	(??_call_control_valve+1)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+2)+0
	clrf	(??_call_control_valve+2)+0+1
	movf	0+(??_call_control_valve+2)+0,w
	movwf	(?_control_valve)
	movf	1+(??_call_control_valve+2)+0,w
	movwf	(?_control_valve+1)
	movlw	(0Ch)
	movwf	(??_call_control_valve+4)+0
	movf	(??_call_control_valve+4)+0,w
	movwf	(?___bmul)
	movf	(__CHOICE_SELECTED),w
	fcall	___bmul
	addlw	07h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+5)+0
	movf	(??_call_control_valve+5)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+6)+0
	clrf	(??_call_control_valve+6)+0+1
	movf	0+(??_call_control_valve+6)+0,w
	movwf	0+(?_control_valve)+02h
	movf	1+(??_call_control_valve+6)+0,w
	movwf	1+(?_control_valve)+02h
	fcall	_control_valve
	line	984
	
l9192:	
;Beverage_services.c: 984: Enable_Viber_Motor=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Viber_Motor/8),(_Enable_Viber_Motor)&7
	goto	l9194
	line	985
	
l3372:	
	line	986
	
l9194:	
;Beverage_services.c: 985: }
;Beverage_services.c: 986: if(Enable_Hot_Water_Valve)
	btfss	(_Enable_Hot_Water_Valve/8),(_Enable_Hot_Water_Valve)&7
	goto	u5561
	goto	u5560
u5561:
	goto	l9202
u5560:
	line	988
	
l9196:	
;Beverage_services.c: 987: {
;Beverage_services.c: 988: _ON=_OFF=_Hot_Water_Valve;
	movlw	(04h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	990
	
l9198:	
;Beverage_services.c: 990: control_valve(eeprom_read(147),2);
	movlw	(093h)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+1)+0
	clrf	(??_call_control_valve+1)+0+1
	movf	0+(??_call_control_valve+1)+0,w
	movwf	(?_control_valve)
	movf	1+(??_call_control_valve+1)+0,w
	movwf	(?_control_valve+1)
	movlw	low(02h)
	movwf	0+(?_control_valve)+02h
	movlw	high(02h)
	movwf	(0+(?_control_valve)+02h)+1
	fcall	_control_valve
	line	991
	
l9200:	
;Beverage_services.c: 991: Enable_Hot_Water_Valve=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Hot_Water_Valve/8),(_Enable_Hot_Water_Valve)&7
	goto	l9202
	line	992
	
l3373:	
	line	993
	
l9202:	
;Beverage_services.c: 992: }
;Beverage_services.c: 993: if(Enable_Coffee_Hot_Water_Valve)
	btfss	(_Enable_Coffee_Hot_Water_Valve/8),(_Enable_Coffee_Hot_Water_Valve)&7
	goto	u5571
	goto	u5570
u5571:
	goto	l3374
u5570:
	line	995
	
l9204:	
;Beverage_services.c: 994: {
;Beverage_services.c: 995: _ON=_OFF=_Coffee_Hot_Water_Valve;
	movlw	(05h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	996
	
l9206:	
;Beverage_services.c: 996: for(i=eeprom_read(145);i>0;i--)
	movlw	(091h)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+1)+0
	clrf	(??_call_control_valve+1)+0+1
	movf	0+(??_call_control_valve+1)+0,w
	movwf	(_i)
	movf	1+(??_call_control_valve+1)+0,w
	movwf	(_i+1)
	goto	l9222
	line	997
	
l3376:	
	line	998
	
l9208:	
;Beverage_services.c: 997: {
;Beverage_services.c: 998: Lcd_Cmd(0xC6);
	movlw	(0C6h)
	fcall	_Lcd_Cmd
	line	999
	
l9210:	
;Beverage_services.c: 999: myitoa(i,buff);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i+1),w
	clrf	(?_myitoa+1)
	addwf	(?_myitoa+1)
	movf	(_i),w
	clrf	(?_myitoa)
	addwf	(?_myitoa)

	movlw	(_buff)&0ffh
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	0+(?_myitoa)+02h
	fcall	_myitoa
	line	1000
	
l9212:	
;Beverage_services.c: 1000: Lcd_String(buff,0,0);
	movlw	(_buff&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	(0x0/2)
	movwf	(?_Lcd_String+1)
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	1001
	
l9214:	
;Beverage_services.c: 1001: eeprom_write(145,i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i),w
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(091h)
	fcall	_eeprom_write
	line	1002
	
l9216:	
;Beverage_services.c: 1002: control_valve(eeprom_read(118)*10,eeprom_read(121)*10);
	movlw	(079h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+1)+0
	clrf	(??_call_control_valve+1)+0+1
	movf	0+(??_call_control_valve+1)+0,w
	movwf	(?___wmul)
	movf	1+(??_call_control_valve+1)+0,w
	movwf	(?___wmul+1)
	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_call_control_valve$5508+1)
	addwf	(_call_control_valve$5508+1)
	movf	(0+(?___wmul)),w
	clrf	(_call_control_valve$5508)
	addwf	(_call_control_valve$5508)

	
l9218:	
;Beverage_services.c: 1002: control_valve(eeprom_read(118)*10,eeprom_read(121)*10);
	movlw	(076h)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+1)+0
	clrf	(??_call_control_valve+1)+0+1
	movf	0+(??_call_control_valve+1)+0,w
	movwf	(?___wmul)
	movf	1+(??_call_control_valve+1)+0,w
	movwf	(?___wmul+1)
	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_control_valve+1)
	addwf	(?_control_valve+1)
	movf	(0+(?___wmul)),w
	clrf	(?_control_valve)
	addwf	(?_control_valve)

	movf	(_call_control_valve$5508+1),w
	clrf	1+(?_control_valve)+02h
	addwf	1+(?_control_valve)+02h
	movf	(_call_control_valve$5508),w
	clrf	0+(?_control_valve)+02h
	addwf	0+(?_control_valve)+02h

	fcall	_control_valve
	line	996
	
l9220:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_i),f
	movlw	high(01h)
	skipc
	decf	(_i+1),f
	subwf	(_i+1),f
	goto	l9222
	
l3375:	
	
l9222:	
	movf	((_i+1)),w
	iorwf	((_i)),w
	skipz
	goto	u5581
	goto	u5580
u5581:
	goto	l9208
u5580:
	
l3377:	
	line	1004
;Beverage_services.c: 1003: }
;Beverage_services.c: 1004: Enable_Coffee_Hot_Water_Valve=0;
	bcf	(_Enable_Coffee_Hot_Water_Valve/8),(_Enable_Coffee_Hot_Water_Valve)&7
	line	1005
	
l3374:	
	line	1006
;Beverage_services.c: 1005: }
;Beverage_services.c: 1006: if(Enable_Tea_Hot_Water_Valve)
	btfss	(_Enable_Tea_Hot_Water_Valve/8),(_Enable_Tea_Hot_Water_Valve)&7
	goto	u5591
	goto	u5590
u5591:
	goto	l3378
u5590:
	line	1008
	
l9224:	
;Beverage_services.c: 1007: {
;Beverage_services.c: 1008: _ON=_OFF=_Tea_Hot_Water_Valve;
	movlw	(07h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	1009
	
l9226:	
;Beverage_services.c: 1009: for(i=eeprom_read(146);i>0;i--)
	movlw	(092h)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+1)+0
	clrf	(??_call_control_valve+1)+0+1
	movf	0+(??_call_control_valve+1)+0,w
	movwf	(_i)
	movf	1+(??_call_control_valve+1)+0,w
	movwf	(_i+1)
	goto	l9234
	line	1010
	
l3380:	
	line	1011
	
l9228:	
;Beverage_services.c: 1010: {
;Beverage_services.c: 1011: eeprom_write(146,i);
	movf	(_i),w
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(092h)
	fcall	_eeprom_write
	line	1012
;Beverage_services.c: 1012: control_valve(eeprom_read(119)*10,eeprom_read(121)*10);
	movlw	(079h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+1)+0
	clrf	(??_call_control_valve+1)+0+1
	movf	0+(??_call_control_valve+1)+0,w
	movwf	(?___wmul)
	movf	1+(??_call_control_valve+1)+0,w
	movwf	(?___wmul+1)
	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_call_control_valve$5508+1)
	addwf	(_call_control_valve$5508+1)
	movf	(0+(?___wmul)),w
	clrf	(_call_control_valve$5508)
	addwf	(_call_control_valve$5508)

	
l9230:	
;Beverage_services.c: 1012: control_valve(eeprom_read(119)*10,eeprom_read(121)*10);
	movlw	(077h)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+1)+0
	clrf	(??_call_control_valve+1)+0+1
	movf	0+(??_call_control_valve+1)+0,w
	movwf	(?___wmul)
	movf	1+(??_call_control_valve+1)+0,w
	movwf	(?___wmul+1)
	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_control_valve+1)
	addwf	(?_control_valve+1)
	movf	(0+(?___wmul)),w
	clrf	(?_control_valve)
	addwf	(?_control_valve)

	movf	(_call_control_valve$5508+1),w
	clrf	1+(?_control_valve)+02h
	addwf	1+(?_control_valve)+02h
	movf	(_call_control_valve$5508),w
	clrf	0+(?_control_valve)+02h
	addwf	0+(?_control_valve)+02h

	fcall	_control_valve
	line	1009
	
l9232:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_i),f
	movlw	high(01h)
	skipc
	decf	(_i+1),f
	subwf	(_i+1),f
	goto	l9234
	
l3379:	
	
l9234:	
	movf	((_i+1)),w
	iorwf	((_i)),w
	skipz
	goto	u5601
	goto	u5600
u5601:
	goto	l9228
u5600:
	
l3381:	
	line	1014
;Beverage_services.c: 1013: }
;Beverage_services.c: 1014: Enable_Tea_Hot_Water_Valve=0;
	bcf	(_Enable_Tea_Hot_Water_Valve/8),(_Enable_Tea_Hot_Water_Valve)&7
	line	1015
	
l3378:	
	line	1016
;Beverage_services.c: 1015: }
;Beverage_services.c: 1016: if(Enable_Milk_Reverse)
	btfss	(_Enable_Milk_Reverse/8),(_Enable_Milk_Reverse)&7
	goto	u5611
	goto	u5610
u5611:
	goto	l9242
u5610:
	line	1018
	
l9236:	
;Beverage_services.c: 1017: {
;Beverage_services.c: 1018: _ON=_OFF=_Milk_Valve_Reverse;
	movlw	(02h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	1019
	
l9238:	
;Beverage_services.c: 1019: control_valve(35,2);
	movlw	low(023h)
	movwf	(?_control_valve)
	movlw	high(023h)
	movwf	((?_control_valve))+1
	movlw	low(02h)
	movwf	0+(?_control_valve)+02h
	movlw	high(02h)
	movwf	(0+(?_control_valve)+02h)+1
	fcall	_control_valve
	line	1020
	
l9240:	
;Beverage_services.c: 1020: Enable_Milk_Reverse=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Milk_Reverse/8),(_Enable_Milk_Reverse)&7
	goto	l9242
	line	1021
	
l3382:	
	line	1022
	
l9242:	
;Beverage_services.c: 1021: }
;Beverage_services.c: 1022: if(Enable_Heater1)
	btfss	(_Enable_Heater1/8),(_Enable_Heater1)&7
	goto	u5621
	goto	u5620
u5621:
	goto	l3384
u5620:
	line	1024
	
l9244:	
;Beverage_services.c: 1023: {
;Beverage_services.c: 1024: _ON=_OFF=_Heater1;
	movlw	(0Ah)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	1025
	
l9246:	
;Beverage_services.c: 1025: control_valve(eeprom_read(255),eeprom_read(255));
	movlw	(0FFh)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+1)+0
	clrf	(??_call_control_valve+1)+0+1
	movf	0+(??_call_control_valve+1)+0,w
	movwf	(?_control_valve)
	movf	1+(??_call_control_valve+1)+0,w
	movwf	(?_control_valve+1)
	movlw	(0FFh)
	movwf	(??_call_control_valve+3)+0
	movf	(??_call_control_valve+3)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_call_control_valve+4)+0
	clrf	(??_call_control_valve+4)+0+1
	movf	0+(??_call_control_valve+4)+0,w
	movwf	0+(?_control_valve)+02h
	movf	1+(??_call_control_valve+4)+0,w
	movwf	1+(?_control_valve)+02h
	fcall	_control_valve
	line	1026
	
l9248:	
;Beverage_services.c: 1026: Enable_Heater1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Heater1/8),(_Enable_Heater1)&7
	goto	l3384
	line	1027
	
l3383:	
	line	1028
	
l3384:	
	return
	opt stack 0
GLOBAL	__end_of_call_control_valve
	__end_of_call_control_valve:
;; =============== function _call_control_valve ends ============

	signat	_call_control_valve,88
	global	_Print_Menu
psect	text783,local,class=CODE,delta=2
global __ptext783
__ptext783:

;; *************** function _Print_Menu *****************
;; Defined at:
;;		line 14 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Lcd_String
;; This function is called by:
;;		_enable_valves
;; This function uses a non-reentrant model
;;
psect	text783
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	14
	global	__size_of_Print_Menu
	__size_of_Print_Menu	equ	__end_of_Print_Menu-_Print_Menu
	
_Print_Menu:	
	opt	stack 3
; Regs used in _Print_Menu: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	15
	
l9130:	
;Beverage_services.c: 15: switch(_PRESSED)
	goto	l9152
	line	17
;Beverage_services.c: 16: {
;Beverage_services.c: 17: case _NORMAL_COFFEE_BUTTON: Lcd_String(" NORMAL COFFEE",1,0);
	
l3085:	
	
l9132:	
	movlw	low(STR_5|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_5|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	18
;Beverage_services.c: 18: break;
	goto	l3095
	line	19
;Beverage_services.c: 19: case _NORMAL_TEA_BUTTON: Lcd_String("   NORMAL TEA",1,0);
	
l3087:	
	
l9134:	
	movlw	low(STR_6|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_6|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	20
;Beverage_services.c: 20: break;
	goto	l3095
	line	21
;Beverage_services.c: 21: case _LIGHT_COFFEE_BUTTON: Lcd_String("  LIGHT COFFEE",1,0);
	
l3088:	
	
l9136:	
	movlw	low(STR_7|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_7|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	22
;Beverage_services.c: 22: break;
	goto	l3095
	line	23
;Beverage_services.c: 23: case _LIGHT_TEA_BUTTON: Lcd_String("   LIGHT TEA",1,0);
	
l3089:	
	
l9138:	
	movlw	low(STR_8|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_8|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	24
;Beverage_services.c: 24: break;
	goto	l3095
	line	25
;Beverage_services.c: 25: case _BLACK_COFFEE_BUTTON: Lcd_String("  BLACK COFFEE",1,0);
	
l3090:	
	
l9140:	
	movlw	low(STR_9|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_9|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	26
;Beverage_services.c: 26: break;
	goto	l3095
	line	27
;Beverage_services.c: 27: case _BLACK_TEA_BUTTON: Lcd_String("   BLACK TEA",1,0);
	
l3091:	
	
l9142:	
	movlw	low(STR_10|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_10|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	28
;Beverage_services.c: 28: break;
	goto	l3095
	line	29
;Beverage_services.c: 29: case _MILK_BUTTON: Lcd_String("      MILK",1,0);
	
l3092:	
	
l9144:	
	movlw	low(STR_11|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_11|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	30
;Beverage_services.c: 30: break;
	goto	l3095
	line	31
;Beverage_services.c: 31: case _HOT_WATER_BUTTON: Lcd_String("   HOT WATER",1,0);
	
l3093:	
	
l9146:	
	movlw	low(STR_12|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_12|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	32
;Beverage_services.c: 32: break;
	goto	l3095
	line	33
;Beverage_services.c: 33: case _EXTRA_BUTTON: Lcd_String("      EXTRA",1,0);
	
l3094:	
	
l9148:	
	movlw	low(STR_13|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_13|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	34
;Beverage_services.c: 34: break;
	goto	l3095
	line	35
	
l9150:	
;Beverage_services.c: 35: }
	goto	l3095
	line	15
	
l3084:	
	
l9152:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	; Switch size 1, requested type "space"
; Number of cases is 9, Range of values is 1 to 9
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           28    15 (average)
; direct_byte           38    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l9132
	xorlw	2^1	; case 2
	skipnz
	goto	l9134
	xorlw	3^2	; case 3
	skipnz
	goto	l9136
	xorlw	4^3	; case 4
	skipnz
	goto	l9138
	xorlw	5^4	; case 5
	skipnz
	goto	l9140
	xorlw	6^5	; case 6
	skipnz
	goto	l9142
	xorlw	7^6	; case 7
	skipnz
	goto	l9144
	xorlw	8^7	; case 8
	skipnz
	goto	l9148
	xorlw	9^8	; case 9
	skipnz
	goto	l9146
	goto	l3095
	opt asmopt_on

	line	35
	
l3086:	
	line	36
	
l3095:	
	return
	opt stack 0
GLOBAL	__end_of_Print_Menu
	__end_of_Print_Menu:
;; =============== function _Print_Menu ends ============

	signat	_Print_Menu,88
	global	_Print_Name
psect	text784,local,class=CODE,delta=2
global __ptext784
__ptext784:

;; *************** function _Print_Name *****************
;; Defined at:
;;		line 8 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Lcd_String
;; This function is called by:
;;		_main
;;		_enable_valves
;;		_change_modes
;; This function uses a non-reentrant model
;;
psect	text784
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	8
	global	__size_of_Print_Name
	__size_of_Print_Name	equ	__end_of_Print_Name-_Print_Name
	
_Print_Name:	
	opt	stack 3
; Regs used in _Print_Name: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	9
	
l9128:	
;Beverage_services.c: 9: Lcd_String("  CAFE DE VIE",1,0);
	movlw	low(STR_3|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_3|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	10
;Beverage_services.c: 10: Lcd_String("   BEVERAGES",0,1);
	movlw	low(STR_4|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_4|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	bsf	status,0
	rlf	0+(?_Lcd_String)+03h,f
	fcall	_Lcd_String
	line	11
	
l3081:	
	return
	opt stack 0
GLOBAL	__end_of_Print_Name
	__end_of_Print_Name:
;; =============== function _Print_Name ends ============

	signat	_Print_Name,88
	global	_print_yes_no
psect	text785,local,class=CODE,delta=2
global __ptext785
__ptext785:

;; *************** function _print_yes_no *****************
;; Defined at:
;;		line 1162 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;  MEM             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  MEM             1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Read_ValveFrom_Memory
;;		_Lcd_Cmd
;;		_Lcd_Data
;; This function is called by:
;;		_enable_valves
;;		_change_modes
;; This function uses a non-reentrant model
;;
psect	text785
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	1162
	global	__size_of_print_yes_no
	__size_of_print_yes_no	equ	__end_of_print_yes_no-_print_yes_no
	
_print_yes_no:	
	opt	stack 4
; Regs used in _print_yes_no: [wreg+status,2+status,0+pclath+cstack]
;print_yes_no@MEM stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(print_yes_no@MEM)
	line	1163
	
l9096:	
;Beverage_services.c: 1163: VALVE=Read_ValveFrom_Memory(MEM);
	movf	(print_yes_no@MEM),w
	fcall	_Read_ValveFrom_Memory
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_print_yes_no+0)+0
	movf	(??_print_yes_no+0)+0,w
	movwf	(_VALVE)
	line	1164
;Beverage_services.c: 1164: Lcd_Cmd(0xC3);
	movlw	(0C3h)
	fcall	_Lcd_Cmd
	line	1165
	
l9098:	
;Beverage_services.c: 1165: if( VALVE.COFFEE_DICATION )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_VALVE),0
	goto	u5461
	goto	u5460
u5461:
	goto	l9102
u5460:
	line	1167
	
l9100:	
;Beverage_services.c: 1166: {
;Beverage_services.c: 1167: Lcd_Data('Y');;
	movlw	(059h)
	fcall	_Lcd_Data
	line	1168
;Beverage_services.c: 1168: }
	goto	l3455
	line	1169
	
l3454:	
	line	1170
	
l9102:	
;Beverage_services.c: 1169: else
;Beverage_services.c: 1170: Lcd_Data('N');;
	movlw	(04Eh)
	fcall	_Lcd_Data
	
l3455:	
	line	1171
;Beverage_services.c: 1171: Lcd_Cmd(0xC5);
	movlw	(0C5h)
	fcall	_Lcd_Cmd
	line	1172
	
l9104:	
;Beverage_services.c: 1172: if( VALVE.TEA_DICATION )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_VALVE),1
	goto	u5471
	goto	u5470
u5471:
	goto	l9108
u5470:
	line	1174
	
l9106:	
;Beverage_services.c: 1173: {
;Beverage_services.c: 1174: Lcd_Data('Y');;
	movlw	(059h)
	fcall	_Lcd_Data
	line	1175
;Beverage_services.c: 1175: }
	goto	l3457
	line	1176
	
l3456:	
	line	1177
	
l9108:	
;Beverage_services.c: 1176: else
;Beverage_services.c: 1177: Lcd_Data('N');;
	movlw	(04Eh)
	fcall	_Lcd_Data
	
l3457:	
	line	1178
;Beverage_services.c: 1178: Lcd_Cmd(0xC7);
	movlw	(0C7h)
	fcall	_Lcd_Cmd
	line	1179
	
l9110:	
;Beverage_services.c: 1179: if( VALVE.MIXING_HOT_WATER )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_VALVE),2
	goto	u5481
	goto	u5480
u5481:
	goto	l9114
u5480:
	line	1181
	
l9112:	
;Beverage_services.c: 1180: {
;Beverage_services.c: 1181: Lcd_Data('Y');;
	movlw	(059h)
	fcall	_Lcd_Data
	line	1182
;Beverage_services.c: 1182: }
	goto	l3459
	line	1183
	
l3458:	
	line	1184
	
l9114:	
;Beverage_services.c: 1183: else
;Beverage_services.c: 1184: Lcd_Data('N');;
	movlw	(04Eh)
	fcall	_Lcd_Data
	
l3459:	
	line	1185
;Beverage_services.c: 1185: Lcd_Cmd(0xC9);
	movlw	(0C9h)
	fcall	_Lcd_Cmd
	line	1186
	
l9116:	
;Beverage_services.c: 1186: if( VALVE.MILK )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_VALVE),3
	goto	u5491
	goto	u5490
u5491:
	goto	l9120
u5490:
	line	1188
	
l9118:	
;Beverage_services.c: 1187: {
;Beverage_services.c: 1188: Lcd_Data('Y');;
	movlw	(059h)
	fcall	_Lcd_Data
	line	1189
;Beverage_services.c: 1189: }
	goto	l3461
	line	1190
	
l3460:	
	line	1191
	
l9120:	
;Beverage_services.c: 1190: else
;Beverage_services.c: 1191: Lcd_Data('N');;
	movlw	(04Eh)
	fcall	_Lcd_Data
	
l3461:	
	line	1192
;Beverage_services.c: 1192: Lcd_Cmd(0xCB);
	movlw	(0CBh)
	fcall	_Lcd_Cmd
	line	1193
	
l9122:	
;Beverage_services.c: 1193: if( VALVE.VIBR_MOTOR)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_VALVE),4
	goto	u5501
	goto	u5500
u5501:
	goto	l9126
u5500:
	line	1195
	
l9124:	
;Beverage_services.c: 1194: {
;Beverage_services.c: 1195: Lcd_Data('Y');;
	movlw	(059h)
	fcall	_Lcd_Data
	line	1196
;Beverage_services.c: 1196: }
	goto	l3463
	line	1197
	
l3462:	
	line	1198
	
l9126:	
;Beverage_services.c: 1197: else
;Beverage_services.c: 1198: Lcd_Data('N');;
	movlw	(04Eh)
	fcall	_Lcd_Data
	
l3463:	
	line	1199
;Beverage_services.c: 1199: Lcd_Cmd(0xCD);
	movlw	(0CDh)
	fcall	_Lcd_Cmd
	line	1200
	
l3464:	
	return
	opt stack 0
GLOBAL	__end_of_print_yes_no
	__end_of_print_yes_no:
;; =============== function _print_yes_no ends ============

	signat	_print_yes_no,4216
	global	_myitoa
psect	text786,local,class=CODE,delta=2
global __ptext786
__ptext786:

;; *************** function _myitoa *****************
;; Defined at:
;;		line 20 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\myitoa.c"
;; Parameters:    Size  Location     Type
;;  val             2   11[COMMON] int 
;;  p               1   13[COMMON] PTR unsigned char 
;;		 -> buff(4), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         3       2       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_rev
;; This function is called by:
;;		_main
;;		_enable_valves
;;		_call_control_valve
;; This function uses a non-reentrant model
;;
psect	text786
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\myitoa.c"
	line	20
	global	__size_of_myitoa
	__size_of_myitoa	equ	__end_of_myitoa-_myitoa
	
_myitoa:	
	opt	stack 4
; Regs used in _myitoa: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	21
	
l9082:	
;myitoa.c: 21: itoai=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_itoai)
	line	22
;myitoa.c: 22: while(val)
	goto	l9090
	
l1422:	
	line	24
	
l9084:	
;myitoa.c: 23: {
;myitoa.c: 24: *(p+itoai)=(val%10)+0x30;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(myitoa@val+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(myitoa@val),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_myitoa+0)+0
	movf	(_itoai),w
	addwf	(myitoa@p),w
	movwf	(??_myitoa+1)+0
	movf	0+(??_myitoa+1)+0,w
	movwf	fsr0
	movf	(??_myitoa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	25
	
l9086:	
;myitoa.c: 25: val=val/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(myitoa@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(myitoa@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	(myitoa@val+1)
	addwf	(myitoa@val+1)
	movf	(0+(?___awdiv)),w
	clrf	(myitoa@val)
	addwf	(myitoa@val)

	line	26
	
l9088:	
;myitoa.c: 26: itoai++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_myitoa+0)+0
	movf	(??_myitoa+0)+0,w
	addwf	(_itoai),f
	goto	l9090
	line	27
	
l1421:	
	line	22
	
l9090:	
	movf	((myitoa@val+1)),w
	iorwf	((myitoa@val)),w
	skipz
	goto	u5451
	goto	u5450
u5451:
	goto	l9084
u5450:
	goto	l9092
	
l1423:	
	line	28
	
l9092:	
;myitoa.c: 27: }
;myitoa.c: 28: *(p+itoai)='\0';
	movf	(_itoai),w
	addwf	(myitoa@p),w
	movwf	(??_myitoa+0)+0
	movf	0+(??_myitoa+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	29
	
l9094:	
;myitoa.c: 29: rev(p);
	movf	(myitoa@p),w
	fcall	_rev
	line	30
	
l1424:	
	return
	opt stack 0
GLOBAL	__end_of_myitoa
	__end_of_myitoa:
;; =============== function _myitoa ends ============

	signat	_myitoa,8312
	global	_Num_Disp
psect	text787,local,class=CODE,delta=2
global __ptext787
__ptext787:

;; *************** function _Num_Disp *****************
;; Defined at:
;;		line 148 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\lcd.c"
;; Parameters:    Size  Location     Type
;;  dat             2    7[BANK0 ] unsigned int 
;;  digit           1    9[BANK0 ] unsigned char 
;;  dot             1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            2   15[BANK0 ] unsigned int 
;;  i               2   13[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___wmul
;;		___lwdiv
;;		_Lcd_Data
;;		___lwmod
;; This function is called by:
;;		_enable_valves
;;		_change_modes
;; This function uses a non-reentrant model
;;
psect	text787
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\lcd.c"
	line	148
	global	__size_of_Num_Disp
	__size_of_Num_Disp	equ	__end_of_Num_Disp-_Num_Disp
	
_Num_Disp:	
	opt	stack 4
; Regs used in _Num_Disp: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	149
	
l9044:	
;lcd.c: 149: unsigned int temp=10,i;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Num_Disp@temp)
	movlw	high(0Ah)
	movwf	((Num_Disp@temp))+1
	line	150
;lcd.c: 150: for(i=digit;i>2;i--)
	movf	(Num_Disp@digit),w
	movwf	(??_Num_Disp+0)+0
	clrf	(??_Num_Disp+0)+0+1
	movf	0+(??_Num_Disp+0)+0,w
	movwf	(Num_Disp@i)
	movf	1+(??_Num_Disp+0)+0,w
	movwf	(Num_Disp@i+1)
	movlw	high(03h)
	subwf	(Num_Disp@i+1),w
	movlw	low(03h)
	skipnz
	subwf	(Num_Disp@i),w
	skipnc
	goto	u5391
	goto	u5390
u5391:
	goto	l9048
u5390:
	goto	l9054
	
l9046:	
	goto	l9054
	line	151
	
l1401:	
	line	152
	
l9048:	
;lcd.c: 151: {
;lcd.c: 152: temp=temp*10;
	movf	(Num_Disp@temp+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(Num_Disp@temp),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Num_Disp@temp+1)
	addwf	(Num_Disp@temp+1)
	movf	(0+(?___wmul)),w
	clrf	(Num_Disp@temp)
	addwf	(Num_Disp@temp)

	line	150
	
l9050:	
	movlw	low(01h)
	subwf	(Num_Disp@i),f
	movlw	high(01h)
	skipc
	decf	(Num_Disp@i+1),f
	subwf	(Num_Disp@i+1),f
	
l9052:	
	movlw	high(03h)
	subwf	(Num_Disp@i+1),w
	movlw	low(03h)
	skipnz
	subwf	(Num_Disp@i),w
	skipnc
	goto	u5401
	goto	u5400
u5401:
	goto	l9048
u5400:
	goto	l9054
	
l1402:	
	line	154
	
l9054:	
;lcd.c: 153: }
;lcd.c: 154: for(i=digit;i>2;i--,digit--)
	movf	(Num_Disp@digit),w
	movwf	(??_Num_Disp+0)+0
	clrf	(??_Num_Disp+0)+0+1
	movf	0+(??_Num_Disp+0)+0,w
	movwf	(Num_Disp@i)
	movf	1+(??_Num_Disp+0)+0,w
	movwf	(Num_Disp@i+1)
	movlw	high(03h)
	subwf	(Num_Disp@i+1),w
	movlw	low(03h)
	skipnz
	subwf	(Num_Disp@i),w
	skipnc
	goto	u5411
	goto	u5410
u5411:
	goto	l9058
u5410:
	goto	l9070
	
l9056:	
	goto	l9070
	line	155
	
l1403:	
	line	156
	
l9058:	
;lcd.c: 155: {
;lcd.c: 156: Lcd_Data(asciitable[dat/temp]);
	movf	(Num_Disp@temp+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(Num_Disp@temp),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	movf	(Num_Disp@dat+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(Num_Disp@dat),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	_asciitable&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_Lcd_Data
	line	157
	
l9060:	
;lcd.c: 157: dat=dat%temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Num_Disp@temp+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(Num_Disp@temp),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	movf	(Num_Disp@dat+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(Num_Disp@dat),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Num_Disp@dat+1)
	addwf	(Num_Disp@dat+1)
	movf	(0+(?___lwmod)),w
	clrf	(Num_Disp@dat)
	addwf	(Num_Disp@dat)

	line	158
	
l9062:	
;lcd.c: 158: temp=temp/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(Num_Disp@temp+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(Num_Disp@temp),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(Num_Disp@temp+1)
	addwf	(Num_Disp@temp+1)
	movf	(0+(?___lwdiv)),w
	clrf	(Num_Disp@temp)
	addwf	(Num_Disp@temp)

	line	154
	
l9064:	
	movlw	low(01h)
	subwf	(Num_Disp@i),f
	movlw	high(01h)
	skipc
	decf	(Num_Disp@i+1),f
	subwf	(Num_Disp@i+1),f
	
l9066:	
	movlw	low(01h)
	subwf	(Num_Disp@digit),f
	
l9068:	
	movlw	high(03h)
	subwf	(Num_Disp@i+1),w
	movlw	low(03h)
	skipnz
	subwf	(Num_Disp@i),w
	skipnc
	goto	u5421
	goto	u5420
u5421:
	goto	l9058
u5420:
	goto	l9070
	
l1404:	
	line	160
	
l9070:	
;lcd.c: 159: }
;lcd.c: 160: if(digit<3)
	movlw	(03h)
	subwf	(Num_Disp@digit),w
	skipnc
	goto	u5431
	goto	u5430
u5431:
	goto	l1407
u5430:
	line	162
	
l9072:	
;lcd.c: 161: {
;lcd.c: 162: Lcd_Data(asciitable[dat/temp]);
	movf	(Num_Disp@temp+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(Num_Disp@temp),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	movf	(Num_Disp@dat+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(Num_Disp@dat),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	_asciitable&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_Lcd_Data
	line	163
	
l9074:	
;lcd.c: 163: dat=dat%temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Num_Disp@temp+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(Num_Disp@temp),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	movf	(Num_Disp@dat+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(Num_Disp@dat),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Num_Disp@dat+1)
	addwf	(Num_Disp@dat+1)
	movf	(0+(?___lwmod)),w
	clrf	(Num_Disp@dat)
	addwf	(Num_Disp@dat)

	line	164
	
l9076:	
;lcd.c: 164: if(dot==1)
	movf	(Num_Disp@dot),w
	xorlw	01h
	skipz
	goto	u5441
	goto	u5440
u5441:
	goto	l9080
u5440:
	line	166
	
l9078:	
;lcd.c: 165: {
;lcd.c: 166: Lcd_Data('.');
	movlw	(02Eh)
	fcall	_Lcd_Data
	goto	l9080
	line	167
	
l1406:	
	line	168
	
l9080:	
;lcd.c: 167: }
;lcd.c: 168: Lcd_Data(asciitable[dat]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Num_Disp@dat),w
	addlw	_asciitable&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_Lcd_Data
	goto	l1407
	line	169
	
l1405:	
	line	170
	
l1407:	
	return
	opt stack 0
GLOBAL	__end_of_Num_Disp
	__end_of_Num_Disp:
;; =============== function _Num_Disp ends ============

	signat	_Num_Disp,12408
	global	_Lcd_String
psect	text788,local,class=CODE,delta=2
global __ptext788
__ptext788:

;; *************** function _Lcd_String *****************
;; Defined at:
;;		line 136 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\lcd.c"
;; Parameters:    Size  Location     Type
;;  st              2    5[BANK0 ] PTR const unsigned char 
;;		 -> STR_45(12), STR_44(10), STR_43(6), STR_42(10), 
;;		 -> STR_41(6), STR_40(15), STR_39(12), STR_38(6), 
;;		 -> STR_37(13), STR_36(6), STR_35(16), STR_34(6), 
;;		 -> STR_33(10), STR_32(7), STR_31(15), STR_30(11), 
;;		 -> STR_29(9), STR_28(12), STR_27(9), STR_26(14), 
;;		 -> STR_25(14), STR_24(13), STR_23(15), STR_22(16), 
;;		 -> STR_21(17), STR_20(4), STR_19(6), STR_18(6), 
;;		 -> STR_17(10), STR_16(9), STR_15(12), STR_14(9), 
;;		 -> STR_13(12), STR_12(13), STR_11(11), STR_10(13), 
;;		 -> STR_9(15), STR_8(13), STR_7(15), STR_6(14), 
;;		 -> STR_5(15), STR_4(13), STR_3(14), STR_2(17), 
;;		 -> STR_1(16), buff(4), 
;;  clear           1    7[BANK0 ] unsigned char 
;;  second_line     1    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Cmd
;;		_Lcd_Data
;; This function is called by:
;;		_main
;;		_Print_Name
;;		_Print_Menu
;;		_Mode_Init
;;		_enable_valves
;;		_change_modes
;;		_call_control_valve
;; This function uses a non-reentrant model
;;
psect	text788
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\lcd.c"
	line	136
	global	__size_of_Lcd_String
	__size_of_Lcd_String	equ	__end_of_Lcd_String-_Lcd_String
	
_Lcd_String:	
	opt	stack 4
; Regs used in _Lcd_String: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	137
	
l9030:	
;lcd.c: 137: if(clear==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd_String@clear),w
	xorlw	01h
	skipz
	goto	u5361
	goto	u5360
u5361:
	goto	l9034
u5360:
	line	138
	
l9032:	
;lcd.c: 138: Lcd_Cmd(0x01);
	movlw	(01h)
	fcall	_Lcd_Cmd
	goto	l9034
	
l1393:	
	line	139
	
l9034:	
;lcd.c: 139: if(second_line==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd_String@second_line),w
	xorlw	01h
	skipz
	goto	u5371
	goto	u5370
u5371:
	goto	l9042
u5370:
	line	140
	
l9036:	
;lcd.c: 140: Lcd_Cmd(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Cmd
	goto	l9042
	
l1394:	
	line	141
;lcd.c: 141: while(*st)
	goto	l9042
	
l1396:	
	line	143
	
l9038:	
;lcd.c: 142: {
;lcd.c: 143: Lcd_Data(*st++);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd_String@st+1),w
	movwf	btemp+1
	movf	(Lcd_String@st),w
	movwf	fsr0
	fcall	stringtab
	fcall	_Lcd_Data
	
l9040:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(Lcd_String@st),f
	skipnc
	incf	(Lcd_String@st+1),f
	movlw	high(01h)
	addwf	(Lcd_String@st+1),f
	goto	l9042
	line	144
	
l1395:	
	line	141
	
l9042:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd_String@st+1),w
	movwf	btemp+1
	movf	(Lcd_String@st),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u5381
	goto	u5380
u5381:
	goto	l9038
u5380:
	goto	l1398
	
l1397:	
	line	145
	
l1398:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_String
	__end_of_Lcd_String:
;; =============== function _Lcd_String ends ============

	signat	_Lcd_String,12408
	global	_Lcd_Init
psect	text789,local,class=CODE,delta=2
global __ptext789
__ptext789:

;; *************** function _Lcd_Init *****************
;; Defined at:
;;		line 92 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Cmd
;;		_DelayMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text789
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\lcd.c"
	line	92
	global	__size_of_Lcd_Init
	__size_of_Lcd_Init	equ	__end_of_Lcd_Init-_Lcd_Init
	
_Lcd_Init:	
	opt	stack 5
; Regs used in _Lcd_Init: [wreg+status,2+status,0+pclath+cstack]
	line	93
	
l9028:	
;lcd.c: 93: Lcd_Cmd(0x28);
	movlw	(028h)
	fcall	_Lcd_Cmd
	line	94
;lcd.c: 94: DelayMs(2);
	movlw	low(02h)
	movwf	(?_DelayMs)
	movlw	high(02h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	95
;lcd.c: 95: Lcd_Cmd(0x0E);
	movlw	(0Eh)
	fcall	_Lcd_Cmd
	line	96
;lcd.c: 96: DelayMs(2);
	movlw	low(02h)
	movwf	(?_DelayMs)
	movlw	high(02h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	97
;lcd.c: 97: Lcd_Cmd(0x06);
	movlw	(06h)
	fcall	_Lcd_Cmd
	line	98
;lcd.c: 98: DelayMs(2);
	movlw	low(02h)
	movwf	(?_DelayMs)
	movlw	high(02h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	99
;lcd.c: 99: Lcd_Cmd(0x01);
	movlw	(01h)
	fcall	_Lcd_Cmd
	line	100
;lcd.c: 100: DelayMs(2);
	movlw	low(02h)
	movwf	(?_DelayMs)
	movlw	high(02h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	101
;lcd.c: 101: Lcd_Cmd(0x0C);
	movlw	(0Ch)
	fcall	_Lcd_Cmd
	line	102
;lcd.c: 102: DelayMs(2);
	movlw	low(02h)
	movwf	(?_DelayMs)
	movlw	high(02h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	103
	
l1384:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Init
	__end_of_Lcd_Init:
;; =============== function _Lcd_Init ends ============

	signat	_Lcd_Init,88
	global	_control_valve
psect	text790,local,class=CODE,delta=2
global __ptext790
__ptext790:

;; *************** function _control_valve *****************
;; Defined at:
;;		line 1031 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;  load_time       2    3[BANK0 ] unsigned int 
;;  delay_time      2    5[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_onthevalve
;;		___wmul
;;		_DelayMs
;;		_offthevalve
;; This function is called by:
;;		_call_control_valve
;; This function uses a non-reentrant model
;;
psect	text790
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	1031
	global	__size_of_control_valve
	__size_of_control_valve	equ	__end_of_control_valve-_control_valve
	
_control_valve:	
	opt	stack 4
; Regs used in _control_valve: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	1032
	
l9022:	
;Beverage_services.c: 1032: onthevalve();
	fcall	_onthevalve
	line	1036
	
l9024:	
;Beverage_services.c: 1036: DelayMs(load_time*100);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(control_valve@load_time+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(control_valve@load_time),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	clrf	(?_DelayMs+1)
	addwf	(?_DelayMs+1)
	movf	(0+(?___wmul)),w
	clrf	(?_DelayMs)
	addwf	(?_DelayMs)

	fcall	_DelayMs
	line	1038
	
l9026:	
;Beverage_services.c: 1038: offthevalve();
	fcall	_offthevalve
	line	1042
;Beverage_services.c: 1042: DelayMs(delay_time*100);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(control_valve@delay_time+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(control_valve@delay_time),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	clrf	(?_DelayMs+1)
	addwf	(?_DelayMs+1)
	movf	(0+(?___wmul)),w
	clrf	(?_DelayMs)
	addwf	(?_DelayMs)

	fcall	_DelayMs
	line	1043
	
l3387:	
	return
	opt stack 0
GLOBAL	__end_of_control_valve
	__end_of_control_valve:
;; =============== function _control_valve ends ============

	signat	_control_valve,8312
	global	_count_read
psect	text791,local,class=CODE,delta=2
global __ptext791
__ptext791:

;; *************** function _count_read *****************
;; Defined at:
;;		line 1136 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;  addr1           1    wreg     unsigned char 
;;  addr2           1   12[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr1           1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   12[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         2       6       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_eeprom_read
;;		___wmul
;; This function is called by:
;;		_enable_valves
;;		_change_modes
;; This function uses a non-reentrant model
;;
psect	text791
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	1136
	global	__size_of_count_read
	__size_of_count_read	equ	__end_of_count_read-_count_read
	
_count_read:	
	opt	stack 5
; Regs used in _count_read: [wreg+status,2+status,0+pclath+cstack]
;count_read@addr1 stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(count_read@addr1)
	line	1137
	
l9018:	
;Beverage_services.c: 1137: return (eeprom_read(addr2)*255)+eeprom_read(addr1);
	movf	(count_read@addr1),w
	movwf	(??_count_read+0)+0
	movf	(??_count_read+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_count_read+1)+0
	movf	(count_read@addr2),w
	movwf	(??_count_read+2)+0
	movf	(??_count_read+2)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_count_read+3)+0
	clrf	(??_count_read+3)+0+1
	movf	0+(??_count_read+3)+0,w
	movwf	(?___wmul)
	movf	1+(??_count_read+3)+0,w
	movwf	(?___wmul+1)
	movlw	low(0FFh)
	movwf	0+(?___wmul)+02h
	movlw	high(0FFh)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_count_read+1)+0,w
	addwf	(0+(?___wmul)),w
	movwf	(?_count_read)
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(?_count_read)
	goto	l3425
	
l9020:	
	line	1138
	
l3425:	
	return
	opt stack 0
GLOBAL	__end_of_count_read
	__end_of_count_read:
;; =============== function _count_read ends ============

	signat	_count_read,8314
	global	_Write_ValveIn_Memory
psect	text792,local,class=CODE,delta=2
global __ptext792
__ptext792:

;; *************** function _Write_ValveIn_Memory *****************
;; Defined at:
;;		line 1141 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;  VALVE           1    wreg     struct item
;;  loc             1    9[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  VALVE           1   10[BANK0 ] struct item
;;  chr             1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3      12       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_eeprom_write
;; This function is called by:
;;		_enable_valves
;; This function uses a non-reentrant model
;;
psect	text792
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	1141
	global	__size_of_Write_ValveIn_Memory
	__size_of_Write_ValveIn_Memory	equ	__end_of_Write_ValveIn_Memory-_Write_ValveIn_Memory
	
_Write_ValveIn_Memory:	
	opt	stack 5
; Regs used in _Write_ValveIn_Memory: [wreg+status,2+status,0+pclath+cstack]
;Write_ValveIn_Memory@VALVE stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Write_ValveIn_Memory@VALVE)
	line	1142
	
l8986:	
;Beverage_services.c: 1142: unsigned char chr=0x00;
	clrf	(Write_ValveIn_Memory@chr)
	line	1143
;Beverage_services.c: 1143: chr=(VALVE.MIXING_HOT_WATER==1)?(chr | 0x01):(chr & 0xFE);
	btfsc	(Write_ValveIn_Memory@VALVE),2
	goto	u5311
	goto	u5310
u5311:
	goto	l8990
u5310:
	
l8988:	
	movf	(Write_ValveIn_Memory@chr),w
	andlw	0FEh
	movwf	(??_Write_ValveIn_Memory+0)+0
	clrf	(??_Write_ValveIn_Memory+0)+0+1
	movf	0+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4135)
	movf	1+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4135+1)
	goto	l3431
	
l3429:	
	
l8990:	
	movlw	low(01h)
	iorwf	(Write_ValveIn_Memory@chr),w
	movwf	(_Write_ValveIn_Memory$4135)
	movlw	high(01h)
	movwf	1+(_Write_ValveIn_Memory$4135)
	
l3431:	
	movf	(_Write_ValveIn_Memory$4135),w
	movwf	(??_Write_ValveIn_Memory+0)+0
	movf	(??_Write_ValveIn_Memory+0)+0,w
	movwf	(Write_ValveIn_Memory@chr)
	line	1144
	
l8992:	
;Beverage_services.c: 1144: chr=(VALVE.MILK==1)?(chr | 0x02):(chr & 0xFD);
	btfsc	(Write_ValveIn_Memory@VALVE),3
	goto	u5321
	goto	u5320
u5321:
	goto	l8996
u5320:
	
l8994:	
	movf	(Write_ValveIn_Memory@chr),w
	andlw	0FDh
	movwf	(??_Write_ValveIn_Memory+0)+0
	clrf	(??_Write_ValveIn_Memory+0)+0+1
	movf	0+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4136)
	movf	1+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4136+1)
	goto	l3435
	
l3433:	
	
l8996:	
	movlw	low(02h)
	iorwf	(Write_ValveIn_Memory@chr),w
	movwf	(_Write_ValveIn_Memory$4136)
	movlw	high(02h)
	movwf	1+(_Write_ValveIn_Memory$4136)
	
l3435:	
	movf	(_Write_ValveIn_Memory$4136),w
	movwf	(??_Write_ValveIn_Memory+0)+0
	movf	(??_Write_ValveIn_Memory+0)+0,w
	movwf	(Write_ValveIn_Memory@chr)
	line	1145
	
l8998:	
;Beverage_services.c: 1145: chr=(VALVE.COFFEE_DICATION==1)? (chr | 0x04):(chr & 0xFB);
	btfsc	(Write_ValveIn_Memory@VALVE),0
	goto	u5331
	goto	u5330
u5331:
	goto	l9002
u5330:
	
l9000:	
	movf	(Write_ValveIn_Memory@chr),w
	andlw	0FBh
	movwf	(??_Write_ValveIn_Memory+0)+0
	clrf	(??_Write_ValveIn_Memory+0)+0+1
	movf	0+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4137)
	movf	1+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4137+1)
	goto	l3439
	
l3437:	
	
l9002:	
	movlw	low(04h)
	iorwf	(Write_ValveIn_Memory@chr),w
	movwf	(_Write_ValveIn_Memory$4137)
	movlw	high(04h)
	movwf	1+(_Write_ValveIn_Memory$4137)
	
l3439:	
	movf	(_Write_ValveIn_Memory$4137),w
	movwf	(??_Write_ValveIn_Memory+0)+0
	movf	(??_Write_ValveIn_Memory+0)+0,w
	movwf	(Write_ValveIn_Memory@chr)
	line	1146
	
l9004:	
;Beverage_services.c: 1146: chr=(VALVE.TEA_DICATION==1)? (chr | 0x08):(chr & 0xF7);
	btfsc	(Write_ValveIn_Memory@VALVE),1
	goto	u5341
	goto	u5340
u5341:
	goto	l9008
u5340:
	
l9006:	
	movf	(Write_ValveIn_Memory@chr),w
	andlw	0F7h
	movwf	(??_Write_ValveIn_Memory+0)+0
	clrf	(??_Write_ValveIn_Memory+0)+0+1
	movf	0+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4138)
	movf	1+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4138+1)
	goto	l3443
	
l3441:	
	
l9008:	
	movlw	low(08h)
	iorwf	(Write_ValveIn_Memory@chr),w
	movwf	(_Write_ValveIn_Memory$4138)
	movlw	high(08h)
	movwf	1+(_Write_ValveIn_Memory$4138)
	
l3443:	
	movf	(_Write_ValveIn_Memory$4138),w
	movwf	(??_Write_ValveIn_Memory+0)+0
	movf	(??_Write_ValveIn_Memory+0)+0,w
	movwf	(Write_ValveIn_Memory@chr)
	line	1147
	
l9010:	
;Beverage_services.c: 1147: chr=(VALVE.VIBR_MOTOR==1)? (chr | 0x10):(chr & 0xEF);
	btfsc	(Write_ValveIn_Memory@VALVE),4
	goto	u5351
	goto	u5350
u5351:
	goto	l9014
u5350:
	
l9012:	
	movf	(Write_ValveIn_Memory@chr),w
	andlw	0EFh
	movwf	(??_Write_ValveIn_Memory+0)+0
	clrf	(??_Write_ValveIn_Memory+0)+0+1
	movf	0+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4139)
	movf	1+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4139+1)
	goto	l3447
	
l3445:	
	
l9014:	
	movlw	low(010h)
	iorwf	(Write_ValveIn_Memory@chr),w
	movwf	(_Write_ValveIn_Memory$4139)
	movlw	high(010h)
	movwf	1+(_Write_ValveIn_Memory$4139)
	
l3447:	
	movf	(_Write_ValveIn_Memory$4139),w
	movwf	(??_Write_ValveIn_Memory+0)+0
	movf	(??_Write_ValveIn_Memory+0)+0,w
	movwf	(Write_ValveIn_Memory@chr)
	line	1148
	
l9016:	
;Beverage_services.c: 1148: eeprom_write(loc,chr);
	movf	(Write_ValveIn_Memory@chr),w
	movwf	(??_Write_ValveIn_Memory+0)+0
	movf	(??_Write_ValveIn_Memory+0)+0,w
	movwf	(?_eeprom_write)
	movf	(Write_ValveIn_Memory@loc),w
	fcall	_eeprom_write
	line	1149
	
l3448:	
	return
	opt stack 0
GLOBAL	__end_of_Write_ValveIn_Memory
	__end_of_Write_ValveIn_Memory:
;; =============== function _Write_ValveIn_Memory ends ============

	signat	_Write_ValveIn_Memory,8312
	global	_count_write
psect	text793,local,class=CODE,delta=2
global __ptext793
__ptext793:

;; *************** function _count_write *****************
;; Defined at:
;;		line 1123 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;  addr1           1    wreg     unsigned char 
;;  addr2           1    9[COMMON] unsigned char 
;;  count           2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  addr1           1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         4       3       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_eeprom_write
;;		_eeprom_read
;; This function is called by:
;;		_enable_valves
;; This function uses a non-reentrant model
;;
psect	text793
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	1123
	global	__size_of_count_write
	__size_of_count_write	equ	__end_of_count_write-_count_write
	
_count_write:	
	opt	stack 5
; Regs used in _count_write: [wreg+status,2+status,0+pclath+cstack]
;count_write@addr1 stored from wreg
	movwf	(count_write@addr1)
	line	1124
	
l8980:	
;Beverage_services.c: 1124: if(count<=255)
	movlw	high(0100h)
	subwf	(count_write@count+1),w
	movlw	low(0100h)
	skipnz
	subwf	(count_write@count),w
	skipnc
	goto	u5301
	goto	u5300
u5301:
	goto	l8984
u5300:
	line	1126
	
l8982:	
;Beverage_services.c: 1125: {
;Beverage_services.c: 1126: eeprom_write(addr1,count);
	movf	(count_write@count),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_count_write+0)+0
	movf	(??_count_write+0)+0,w
	movwf	(?_eeprom_write)
	movf	(count_write@addr1),w
	fcall	_eeprom_write
	line	1127
;Beverage_services.c: 1127: }
	goto	l3422
	line	1128
	
l3420:	
	line	1130
	
l8984:	
;Beverage_services.c: 1128: else
;Beverage_services.c: 1129: {
;Beverage_services.c: 1130: eeprom_write(addr1,count-255);
	movf	(count_write@count),w
	addlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_count_write+0)+0
	movf	(??_count_write+0)+0,w
	movwf	(?_eeprom_write)
	movf	(count_write@addr1),w
	fcall	_eeprom_write
	line	1131
;Beverage_services.c: 1131: eeprom_write(addr2,(eeprom_read(addr2)+count-255));
	movf	(count_write@addr2),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_count_write+0)+0
	movf	(??_count_write+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_count_write+1)+0
	movf	(count_write@count),w
	addwf	0+(??_count_write+1)+0,w
	addlw	01h
	movwf	(??_count_write+2)+0
	movf	(??_count_write+2)+0,w
	movwf	(?_eeprom_write)
	movf	(count_write@addr2),w
	fcall	_eeprom_write
	goto	l3422
	line	1132
	
l3421:	
	line	1133
	
l3422:	
	return
	opt stack 0
GLOBAL	__end_of_count_write
	__end_of_count_write:
;; =============== function _count_write ends ============

	signat	_count_write,12408
	global	_Read_ValveFrom_Memory
psect	text794,local,class=CODE,delta=2
global __ptext794
__ptext794:

;; *************** function _Read_ValveFrom_Memory *****************
;; Defined at:
;;		line 1152 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;  MEM             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  MEM             1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      struct item
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_eeprom_read
;; This function is called by:
;;		_Mode_Init
;;		_print_yes_no
;; This function uses a non-reentrant model
;;
psect	text794
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	1152
	global	__size_of_Read_ValveFrom_Memory
	__size_of_Read_ValveFrom_Memory	equ	__end_of_Read_ValveFrom_Memory-_Read_ValveFrom_Memory
	
_Read_ValveFrom_Memory:	
	opt	stack 4
; Regs used in _Read_ValveFrom_Memory: [wreg+status,2+status,0+pclath+cstack]
;Read_ValveFrom_Memory@MEM stored from wreg
	movwf	(Read_ValveFrom_Memory@MEM)
	line	1153
	
l8974:	
;Beverage_services.c: 1153: VALVE.MIXING_HOT_WATER= (eeprom_read(MEM)&0x01)>0?1:0;
	movf	(Read_ValveFrom_Memory@MEM),w
	movwf	(??_Read_ValveFrom_Memory+0)+0
	movf	(??_Read_ValveFrom_Memory+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	movwf	(??_Read_ValveFrom_Memory+1)+0
	movlw	0
	btfsc	0+(??_Read_ValveFrom_Memory+1)+0,(0)&7
	movlw	1
	movwf	(??_Read_ValveFrom_Memory+2)+0
	rlf	(??_Read_ValveFrom_Memory+2)+0,f
	rlf	(??_Read_ValveFrom_Memory+2)+0,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_VALVE),w
	xorwf	(??_Read_ValveFrom_Memory+2)+0,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_Read_ValveFrom_Memory+2)+0,w
	movwf	(_VALVE)
	line	1154
;Beverage_services.c: 1154: VALVE.MILK= (eeprom_read(MEM)&0x02)>0?1:0;
	movf	(Read_ValveFrom_Memory@MEM),w
	movwf	(??_Read_ValveFrom_Memory+0)+0
	movf	(??_Read_ValveFrom_Memory+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	movwf	(??_Read_ValveFrom_Memory+1)+0
	movlw	0
	btfsc	0+(??_Read_ValveFrom_Memory+1)+0,(1)&7
	movlw	1
	movwf	(??_Read_ValveFrom_Memory+2)+0
	rlf	(??_Read_ValveFrom_Memory+2)+0,f
	rlf	(??_Read_ValveFrom_Memory+2)+0,f
	rlf	(??_Read_ValveFrom_Memory+2)+0,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_VALVE),w
	xorwf	(??_Read_ValveFrom_Memory+2)+0,w
	andlw	not (((1<<1)-1)<<3)
	xorwf	(??_Read_ValveFrom_Memory+2)+0,w
	movwf	(_VALVE)
	line	1155
;Beverage_services.c: 1155: VALVE.COFFEE_DICATION= (eeprom_read(MEM)&0x04)>0?1:0;
	movf	(Read_ValveFrom_Memory@MEM),w
	movwf	(??_Read_ValveFrom_Memory+0)+0
	movf	(??_Read_ValveFrom_Memory+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	movwf	(??_Read_ValveFrom_Memory+1)+0
	movlw	0
	btfsc	0+(??_Read_ValveFrom_Memory+1)+0,(2)&7
	movlw	1
	movwf	(??_Read_ValveFrom_Memory+2)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_VALVE),w
	xorwf	(??_Read_ValveFrom_Memory+2)+0,w
	andlw	not ((1<<1)-1)
	xorwf	(??_Read_ValveFrom_Memory+2)+0,w
	movwf	(_VALVE)
	line	1156
;Beverage_services.c: 1156: VALVE.TEA_DICATION= (eeprom_read(MEM)&0x08)>0?1:0;
	movf	(Read_ValveFrom_Memory@MEM),w
	movwf	(??_Read_ValveFrom_Memory+0)+0
	movf	(??_Read_ValveFrom_Memory+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	movwf	(??_Read_ValveFrom_Memory+1)+0
	movlw	0
	btfsc	0+(??_Read_ValveFrom_Memory+1)+0,(3)&7
	movlw	1
	movwf	(??_Read_ValveFrom_Memory+2)+0
	rlf	(??_Read_ValveFrom_Memory+2)+0,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_VALVE),w
	xorwf	(??_Read_ValveFrom_Memory+2)+0,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_Read_ValveFrom_Memory+2)+0,w
	movwf	(_VALVE)
	line	1157
;Beverage_services.c: 1157: VALVE.VIBR_MOTOR= (eeprom_read(MEM)&0x10)>0?1:0;
	movf	(Read_ValveFrom_Memory@MEM),w
	movwf	(??_Read_ValveFrom_Memory+0)+0
	movf	(??_Read_ValveFrom_Memory+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	movwf	(??_Read_ValveFrom_Memory+1)+0
	movlw	0
	btfsc	0+(??_Read_ValveFrom_Memory+1)+0,(4)&7
	movlw	1
	movwf	(??_Read_ValveFrom_Memory+2)+0
	swapf	(??_Read_ValveFrom_Memory+2)+0,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_VALVE),w
	xorwf	(??_Read_ValveFrom_Memory+2)+0,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_Read_ValveFrom_Memory+2)+0,w
	movwf	(_VALVE)
	line	1158
	
l8976:	
;Beverage_services.c: 1158: return VALVE;
	movf	(_VALVE),w
	goto	l3451
	
l8978:	
	line	1159
	
l3451:	
	return
	opt stack 0
GLOBAL	__end_of_Read_ValveFrom_Memory
	__end_of_Read_ValveFrom_Memory:
;; =============== function _Read_ValveFrom_Memory ends ============

	signat	_Read_ValveFrom_Memory,4217
	global	_Inidcate_Buzzer
psect	text795,local,class=CODE,delta=2
global __ptext795
__ptext795:

;; *************** function _Inidcate_Buzzer *****************
;; Defined at:
;;		line 39 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_main
;;		_enable_valves
;; This function uses a non-reentrant model
;;
psect	text795
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	39
	global	__size_of_Inidcate_Buzzer
	__size_of_Inidcate_Buzzer	equ	__end_of_Inidcate_Buzzer-_Inidcate_Buzzer
	
_Inidcate_Buzzer:	
	opt	stack 5
; Regs used in _Inidcate_Buzzer: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l8968:	
;Beverage_services.c: 40: RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	41
	
l8970:	
;Beverage_services.c: 41: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	42
	
l8972:	
;Beverage_services.c: 42: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	43
	
l3098:	
	return
	opt stack 0
GLOBAL	__end_of_Inidcate_Buzzer
	__end_of_Inidcate_Buzzer:
;; =============== function _Inidcate_Buzzer ends ============

	signat	_Inidcate_Buzzer,88
	global	_rev
psect	text796,local,class=CODE,delta=2
global __ptext796
__ptext796:

;; *************** function _rev *****************
;; Defined at:
;;		line 5 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\myitoa.c"
;; Parameters:    Size  Location     Type
;;  buf             1    wreg     PTR unsigned char 
;;		 -> buff(4), 
;; Auto vars:     Size  Location     Type
;;  buf             1    3[BANK0 ] PTR unsigned char 
;;		 -> buff(4), 
;;  l               1    2[BANK0 ] PTR unsigned char 
;;		 -> buff(4), 
;;  f               1    1[BANK0 ] PTR unsigned char 
;;		 -> buff(4), 
;;  t               1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       4       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_strlen
;; This function is called by:
;;		_myitoa
;; This function uses a non-reentrant model
;;
psect	text796
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\myitoa.c"
	line	5
	global	__size_of_rev
	__size_of_rev	equ	__end_of_rev-_rev
	
_rev:	
	opt	stack 4
; Regs used in _rev: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;rev@buf stored from wreg
	line	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(rev@buf)
	
l8948:	
;myitoa.c: 6: char t,*f,*l;
;myitoa.c: 7: for(f=buf,l=buf+strlen(buf)-1;f<l;f++,l--)
	movf	(rev@buf),w
	movwf	(??_rev+0)+0
	movf	(??_rev+0)+0,w
	movwf	(rev@f)
	
l8950:	
	movf	(rev@buf),w
	fcall	_strlen
	movf	(0+(?_strlen)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(rev@buf),w
	addlw	-1
	movwf	(??_rev+0)+0
	movf	(??_rev+0)+0,w
	movwf	(rev@l)
	goto	l8966
	line	8
	
l1415:	
	line	9
	
l8952:	
;myitoa.c: 8: {
;myitoa.c: 9: if(*buf == '-')
	movf	(rev@buf),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u5281
	goto	u5280
u5281:
	goto	l8956
u5280:
	line	11
	
l8954:	
;myitoa.c: 10: {
;myitoa.c: 11: buf++;
	movlw	(01h)
	movwf	(??_rev+0)+0
	movf	(??_rev+0)+0,w
	addwf	(rev@buf),f
	goto	l8956
	line	12
	
l1416:	
	line	13
	
l8956:	
;myitoa.c: 12: }
;myitoa.c: 13: t=*f;
	movf	(rev@f),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_rev+0)+0
	movf	(??_rev+0)+0,w
	movwf	(rev@t)
	line	14
	
l8958:	
;myitoa.c: 14: *f=*l;
	movf	(rev@l),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_rev+0)+0
	movf	(rev@f),w
	movwf	fsr0
	movf	(??_rev+0)+0,w
	movwf	indf
	line	15
	
l8960:	
;myitoa.c: 15: *l=t;
	movf	(rev@t),w
	movwf	(??_rev+0)+0
	movf	(rev@l),w
	movwf	fsr0
	movf	(??_rev+0)+0,w
	movwf	indf
	line	7
	
l8962:	
	movlw	(01h)
	movwf	(??_rev+0)+0
	movf	(??_rev+0)+0,w
	addwf	(rev@f),f
	
l8964:	
	movlw	low(01h)
	subwf	(rev@l),f
	goto	l8966
	
l1414:	
	
l8966:	
	movf	(rev@l),w
	subwf	(rev@f),w
	skipc
	goto	u5291
	goto	u5290
u5291:
	goto	l8952
u5290:
	goto	l1418
	
l1417:	
	line	17
	
l1418:	
	return
	opt stack 0
GLOBAL	__end_of_rev
	__end_of_rev:
;; =============== function _rev ends ============

	signat	_rev,4216
	global	_Lcd_Data
psect	text797,local,class=CODE,delta=2
global __ptext797
__ptext797:

;; *************** function _Lcd_Data *****************
;; Defined at:
;;		line 121 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\lcd.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_Lcd_String
;;		_Num_Disp
;;		_enable_valves
;;		_change_modes
;;		_print_yes_no
;; This function uses a non-reentrant model
;;
psect	text797
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\lcd.c"
	line	121
	global	__size_of_Lcd_Data
	__size_of_Lcd_Data	equ	__end_of_Lcd_Data-_Lcd_Data
	
_Lcd_Data:	
	opt	stack 4
; Regs used in _Lcd_Data: [wreg+status,2+status,0+pclath+cstack]
;Lcd_Data@x stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Data@x)
	line	122
	
l8926:	
;lcd.c: 122: PORTD=x & 0XF0;
	movf	(Lcd_Data@x),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	123
	
l8928:	
;lcd.c: 123: RD2=1;
	bsf	(66/8),(66)&7
	line	124
	
l8930:	
;lcd.c: 124: RD3=1;
	bsf	(67/8),(67)&7
	line	125
	
l8932:	
;lcd.c: 125: DelayMs(5);
	movlw	low(05h)
	movwf	(?_DelayMs)
	movlw	high(05h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	126
	
l8934:	
;lcd.c: 126: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	127
	
l8936:	
;lcd.c: 127: DelayMs(5);
	movlw	low(05h)
	movwf	(?_DelayMs)
	movlw	high(05h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	128
	
l8938:	
;lcd.c: 128: PORTD=x << 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd_Data@x),w
	movwf	(??_Lcd_Data+0)+0
	movlw	(04h)-1
u5275:
	clrc
	rlf	(??_Lcd_Data+0)+0,f
	addlw	-1
	skipz
	goto	u5275
	clrc
	rlf	(??_Lcd_Data+0)+0,w
	movwf	(8)	;volatile
	line	129
	
l8940:	
;lcd.c: 129: RD2=1;
	bsf	(66/8),(66)&7
	line	130
	
l8942:	
;lcd.c: 130: RD3=1;
	bsf	(67/8),(67)&7
	line	131
	
l8944:	
;lcd.c: 131: DelayMs(5);
	movlw	low(05h)
	movwf	(?_DelayMs)
	movlw	high(05h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	132
	
l8946:	
;lcd.c: 132: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	133
	
l1390:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Data
	__end_of_Lcd_Data:
;; =============== function _Lcd_Data ends ============

	signat	_Lcd_Data,4216
	global	_Lcd_Cmd
psect	text798,local,class=CODE,delta=2
global __ptext798
__ptext798:

;; *************** function _Lcd_Cmd *****************
;; Defined at:
;;		line 106 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  s               1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_Lcd_Init
;;		_Lcd_String
;;		_main
;;		_Mode_Init
;;		_enable_valves
;;		_change_modes
;;		_call_control_valve
;;		_print_yes_no
;; This function uses a non-reentrant model
;;
psect	text798
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\lcd.c"
	line	106
	global	__size_of_Lcd_Cmd
	__size_of_Lcd_Cmd	equ	__end_of_Lcd_Cmd-_Lcd_Cmd
	
_Lcd_Cmd:	
	opt	stack 4
; Regs used in _Lcd_Cmd: [wreg+status,2+status,0+pclath+cstack]
;Lcd_Cmd@s stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Cmd@s)
	line	107
	
l8904:	
;lcd.c: 107: PORTD=s & 0XF0;
	movf	(Lcd_Cmd@s),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	108
	
l8906:	
;lcd.c: 108: RD2=0;
	bcf	(66/8),(66)&7
	line	109
	
l8908:	
;lcd.c: 109: RD3=1;
	bsf	(67/8),(67)&7
	line	110
	
l8910:	
;lcd.c: 110: DelayMs(5);
	movlw	low(05h)
	movwf	(?_DelayMs)
	movlw	high(05h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	111
	
l8912:	
;lcd.c: 111: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	112
	
l8914:	
;lcd.c: 112: DelayMs(5);
	movlw	low(05h)
	movwf	(?_DelayMs)
	movlw	high(05h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	113
	
l8916:	
;lcd.c: 113: PORTD=s << 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd_Cmd@s),w
	movwf	(??_Lcd_Cmd+0)+0
	movlw	(04h)-1
u5265:
	clrc
	rlf	(??_Lcd_Cmd+0)+0,f
	addlw	-1
	skipz
	goto	u5265
	clrc
	rlf	(??_Lcd_Cmd+0)+0,w
	movwf	(8)	;volatile
	line	114
	
l8918:	
;lcd.c: 114: RD2=0;
	bcf	(66/8),(66)&7
	line	115
	
l8920:	
;lcd.c: 115: RD3=1;
	bsf	(67/8),(67)&7
	line	116
	
l8922:	
;lcd.c: 116: DelayMs(5);
	movlw	low(05h)
	movwf	(?_DelayMs)
	movlw	high(05h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	117
	
l8924:	
;lcd.c: 117: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	118
	
l1387:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Cmd
	__end_of_Lcd_Cmd:
;; =============== function _Lcd_Cmd ends ============

	signat	_Lcd_Cmd,4216
	global	_GetADCValue
psect	text799,local,class=CODE,delta=2
global __ptext799
__ptext799:

;; *************** function _GetADCValue *****************
;; Defined at:
;;		line 31 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\adc.c"
;; Parameters:    Size  Location     Type
;;  Channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Channel         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text799
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\adc.c"
	line	31
	global	__size_of_GetADCValue
	__size_of_GetADCValue	equ	__end_of_GetADCValue-_GetADCValue
	
_GetADCValue:	
	opt	stack 7
; Regs used in _GetADCValue: [wreg+status,2+status,0+btemp+1]
;GetADCValue@Channel stored from wreg
	movwf	(GetADCValue@Channel)
	line	32
	
l8894:	
;adc.c: 32: ADCON0 &= 0xc7;
	movlw	(0C7h)
	movwf	(??_GetADCValue+0)+0
	movf	(??_GetADCValue+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(31),f	;volatile
	line	33
;adc.c: 33: ADCON0 |= (Channel<<3);
	movf	(GetADCValue@Channel),w
	movwf	(??_GetADCValue+0)+0
	movlw	(03h)-1
u5245:
	clrc
	rlf	(??_GetADCValue+0)+0,f
	addlw	-1
	skipz
	goto	u5245
	clrc
	rlf	(??_GetADCValue+0)+0,w
	movwf	(??_GetADCValue+1)+0
	movf	(??_GetADCValue+1)+0,w
	iorwf	(31),f	;volatile
	line	35
	
l8896:	
;adc.c: 35: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_GetADCValue+0)+0+1),f
	movlw	238
movwf	((??_GetADCValue+0)+0),f
u7287:
	decfsz	((??_GetADCValue+0)+0),f
	goto	u7287
	decfsz	((??_GetADCValue+0)+0+1),f
	goto	u7287
	clrwdt
opt asmopt_on

	line	37
	
l8898:	
;adc.c: 37: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	39
;adc.c: 39: while(GO_nDONE);
	goto	l690
	
l691:	
	
l690:	
	btfsc	(250/8),(250)&7
	goto	u5251
	goto	u5250
u5251:
	goto	l690
u5250:
	goto	l8900
	
l692:	
	line	41
	
l8900:	
;adc.c: 41: return ((ADRESH<<8)+ADRESL);
	movf	(30),w	;volatile
	movwf	(??_GetADCValue+0)+0
	clrf	(??_GetADCValue+0)+0+1
	movf	(??_GetADCValue+0)+0,w
	movwf	(??_GetADCValue+0)+1
	clrf	(??_GetADCValue+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	0+(??_GetADCValue+0)+0,w
	movwf	(?_GetADCValue)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_GetADCValue+0)+0,w
	movwf	1+(?_GetADCValue)
	goto	l693
	
l8902:	
	line	42
	
l693:	
	return
	opt stack 0
GLOBAL	__end_of_GetADCValue
	__end_of_GetADCValue:
;; =============== function _GetADCValue ends ============

	signat	_GetADCValue,4218
	global	___awmod
psect	text800,local,class=CODE,delta=2
global __ptext800
__ptext800:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_myitoa
;; This function uses a non-reentrant model
;;
psect	text800
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l8860:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u5151
	goto	u5150
u5151:
	goto	l8864
u5150:
	line	10
	
l8862:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l8864
	line	12
	
l5610:	
	line	13
	
l8864:	
	btfss	(___awmod@divisor+1),7
	goto	u5161
	goto	u5160
u5161:
	goto	l8868
u5160:
	line	14
	
l8866:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l8868
	
l5611:	
	line	15
	
l8868:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u5171
	goto	u5170
u5171:
	goto	l8886
u5170:
	line	16
	
l8870:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l8876
	
l5614:	
	line	18
	
l8872:	
	movlw	01h
	
u5185:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u5185
	line	19
	
l8874:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l8876
	line	20
	
l5613:	
	line	17
	
l8876:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u5191
	goto	u5190
u5191:
	goto	l8872
u5190:
	goto	l8878
	
l5615:	
	goto	l8878
	line	21
	
l5616:	
	line	22
	
l8878:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u5205
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u5205:
	skipc
	goto	u5201
	goto	u5200
u5201:
	goto	l8882
u5200:
	line	23
	
l8880:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l8882
	
l5617:	
	line	24
	
l8882:	
	movlw	01h
	
u5215:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u5215
	line	25
	
l8884:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u5221
	goto	u5220
u5221:
	goto	l8878
u5220:
	goto	l8886
	
l5618:	
	goto	l8886
	line	26
	
l5612:	
	line	27
	
l8886:	
	movf	(___awmod@sign),w
	skipz
	goto	u5230
	goto	l8890
u5230:
	line	28
	
l8888:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l8890
	
l5619:	
	line	29
	
l8890:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l5620
	
l8892:	
	line	30
	
l5620:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text801,local,class=CODE,delta=2
global __ptext801
__ptext801:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_myitoa
;;		_enable_valves
;; This function uses a non-reentrant model
;;
psect	text801
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l8820:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u5051
	goto	u5050
u5051:
	goto	l8824
u5050:
	line	11
	
l8822:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l8824
	line	13
	
l5542:	
	line	14
	
l8824:	
	btfss	(___awdiv@dividend+1),7
	goto	u5061
	goto	u5060
u5061:
	goto	l8830
u5060:
	line	15
	
l8826:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l8828:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l8830
	line	17
	
l5543:	
	line	18
	
l8830:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l8832:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u5071
	goto	u5070
u5071:
	goto	l8852
u5070:
	line	20
	
l8834:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l8840
	
l5546:	
	line	22
	
l8836:	
	movlw	01h
	
u5085:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u5085
	line	23
	
l8838:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l8840
	line	24
	
l5545:	
	line	21
	
l8840:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u5091
	goto	u5090
u5091:
	goto	l8836
u5090:
	goto	l8842
	
l5547:	
	goto	l8842
	line	25
	
l5548:	
	line	26
	
l8842:	
	movlw	01h
	
u5105:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u5105
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u5115
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u5115:
	skipc
	goto	u5111
	goto	u5110
u5111:
	goto	l8848
u5110:
	line	28
	
l8844:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l8846:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l8848
	line	30
	
l5549:	
	line	31
	
l8848:	
	movlw	01h
	
u5125:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u5125
	line	32
	
l8850:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u5131
	goto	u5130
u5131:
	goto	l8842
u5130:
	goto	l8852
	
l5550:	
	goto	l8852
	line	33
	
l5544:	
	line	34
	
l8852:	
	movf	(___awdiv@sign),w
	skipz
	goto	u5140
	goto	l8856
u5140:
	line	35
	
l8854:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l8856
	
l5551:	
	line	36
	
l8856:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l5552
	
l8858:	
	line	37
	
l5552:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text802,local,class=CODE,delta=2
global __ptext802
__ptext802:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Num_Disp
;; This function uses a non-reentrant model
;;
psect	text802
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l8798:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u4991
	goto	u4990
u4991:
	goto	l8816
u4990:
	line	9
	
l8800:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l8806
	
l5420:	
	line	11
	
l8802:	
	movlw	01h
	
u5005:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u5005
	line	12
	
l8804:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l8806
	line	13
	
l5419:	
	line	10
	
l8806:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u5011
	goto	u5010
u5011:
	goto	l8802
u5010:
	goto	l8808
	
l5421:	
	goto	l8808
	line	14
	
l5422:	
	line	15
	
l8808:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u5025
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u5025:
	skipc
	goto	u5021
	goto	u5020
u5021:
	goto	l8812
u5020:
	line	16
	
l8810:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l8812
	
l5423:	
	line	17
	
l8812:	
	movlw	01h
	
u5035:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u5035
	line	18
	
l8814:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u5041
	goto	u5040
u5041:
	goto	l8808
u5040:
	goto	l8816
	
l5424:	
	goto	l8816
	line	19
	
l5418:	
	line	20
	
l8816:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l5425
	
l8818:	
	line	21
	
l5425:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text803,local,class=CODE,delta=2
global __ptext803
__ptext803:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[BANK0 ] unsigned int 
;;  counter         1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       7       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Num_Disp
;;		_main
;; This function uses a non-reentrant model
;;
psect	text803
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l8772:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l8774:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u4921
	goto	u4920
u4921:
	goto	l8794
u4920:
	line	11
	
l8776:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l8782
	
l5410:	
	line	13
	
l8778:	
	movlw	01h
	
u4935:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u4935
	line	14
	
l8780:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l8782
	line	15
	
l5409:	
	line	12
	
l8782:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u4941
	goto	u4940
u4941:
	goto	l8778
u4940:
	goto	l8784
	
l5411:	
	goto	l8784
	line	16
	
l5412:	
	line	17
	
l8784:	
	movlw	01h
	
u4955:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4955
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u4965
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u4965:
	skipc
	goto	u4961
	goto	u4960
u4961:
	goto	l8790
u4960:
	line	19
	
l8786:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l8788:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l8790
	line	21
	
l5413:	
	line	22
	
l8790:	
	movlw	01h
	
u4975:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u4975
	line	23
	
l8792:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u4981
	goto	u4980
u4981:
	goto	l8784
u4980:
	goto	l8794
	
l5414:	
	goto	l8794
	line	24
	
l5408:	
	line	25
	
l8794:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l5415
	
l8796:	
	line	26
	
l5415:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text804,local,class=CODE,delta=2
global __ptext804
__ptext804:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    6[COMMON] unsigned int 
;;  multiplicand    2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   10[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Num_Disp
;;		_main
;;		_enable_valves
;;		_call_control_valve
;;		_control_valve
;;		_count_read
;; This function uses a non-reentrant model
;;
psect	text804
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l8760:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l8762
	line	6
	
l5402:	
	line	7
	
l8762:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u4881
	goto	u4880
u4881:
	goto	l5403
u4880:
	line	8
	
l8764:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l5403:	
	line	9
	movlw	01h
	
u4895:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u4895
	line	10
	
l8766:	
	movlw	01h
	
u4905:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u4905
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u4911
	goto	u4910
u4911:
	goto	l8762
u4910:
	goto	l8768
	
l5404:	
	line	12
	
l8768:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l5405
	
l8770:	
	line	13
	
l5405:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text805,local,class=CODE,delta=2
global __ptext805
__ptext805:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_enable_valves
;;		_call_control_valve
;; This function uses a non-reentrant model
;;
psect	text805
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 6
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l8746:	
	clrf	(___bmul@product)
	line	6
	
l5396:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u4861
	goto	u4860
u4861:
	goto	l8750
u4860:
	line	8
	
l8748:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l8750
	
l5397:	
	line	9
	
l8750:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l8752:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l8754:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u4871
	goto	u4870
u4871:
	goto	l5396
u4870:
	goto	l8756
	
l5398:	
	line	12
	
l8756:	
	movf	(___bmul@product),w
	goto	l5399
	
l8758:	
	line	13
	
l5399:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_onthevalve
psect	text806,local,class=CODE,delta=2
global __ptext806
__ptext806:

;; *************** function _onthevalve *****************
;; Defined at:
;;		line 1046 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_enable_valves
;;		_control_valve
;; This function uses a non-reentrant model
;;
psect	text806
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	1046
	global	__size_of_onthevalve
	__size_of_onthevalve	equ	__end_of_onthevalve-_onthevalve
	
_onthevalve:	
	opt	stack 6
; Regs used in _onthevalve: [wreg-fsr0h+status,2+status,0]
	line	1047
	
l8740:	
;Beverage_services.c: 1047: switch(_ON)
	goto	l8744
	line	1049
;Beverage_services.c: 1048: {
;Beverage_services.c: 1049: case _Milk_Valve_Forward:
	
l3391:	
	line	1050
;Beverage_services.c: 1050: RA2=1;
	bsf	(42/8),(42)&7
	line	1051
;Beverage_services.c: 1051: RA4=0;
	bcf	(44/8),(44)&7
	line	1052
;Beverage_services.c: 1052: break;
	goto	l3402
	line	1053
;Beverage_services.c: 1053: case _Milk_Valve_Reverse:
	
l3393:	
	line	1054
;Beverage_services.c: 1054: RA2=0;
	bcf	(42/8),(42)&7
	line	1055
;Beverage_services.c: 1055: RA4=1;
	bsf	(44/8),(44)&7
	line	1056
;Beverage_services.c: 1056: break;
	goto	l3402
	line	1057
;Beverage_services.c: 1057: case _Mixing_Hot_Water_Valve:
	
l3394:	
	line	1058
;Beverage_services.c: 1058: RA5=1;
	bsf	(45/8),(45)&7
	line	1059
;Beverage_services.c: 1059: break;
	goto	l3402
	line	1060
;Beverage_services.c: 1060: case _Hot_Water_Valve:
	
l3395:	
	line	1061
;Beverage_services.c: 1061: RC0=1;
	bsf	(56/8),(56)&7
	line	1062
;Beverage_services.c: 1062: break;
	goto	l3402
	line	1063
;Beverage_services.c: 1063: case _Coffee_Hot_Water_Valve:
	
l3396:	
	line	1064
;Beverage_services.c: 1064: RC1=1;
	bsf	(57/8),(57)&7
	line	1065
;Beverage_services.c: 1065: break;
	goto	l3402
	line	1066
;Beverage_services.c: 1066: case _Coffee_Valve:
	
l3397:	
	line	1067
;Beverage_services.c: 1067: RE0=1;
	bsf	(72/8),(72)&7
	line	1068
;Beverage_services.c: 1068: break;
	goto	l3402
	line	1069
;Beverage_services.c: 1069: case _Tea_Hot_Water_Valve:
	
l3398:	
	line	1070
;Beverage_services.c: 1070: RC2=1;
	bsf	(58/8),(58)&7
	line	1071
;Beverage_services.c: 1071: break;
	goto	l3402
	line	1072
;Beverage_services.c: 1072: case _Tea_Valve:
	
l3399:	
	line	1073
;Beverage_services.c: 1073: RE1=1;
	bsf	(73/8),(73)&7
	line	1074
;Beverage_services.c: 1074: break;
	goto	l3402
	line	1075
;Beverage_services.c: 1075: case _Viber_Motor:
	
l3400:	
	line	1076
;Beverage_services.c: 1076: RE2=1;
	bsf	(74/8),(74)&7
	line	1077
;Beverage_services.c: 1077: break;
	goto	l3402
	line	1078
;Beverage_services.c: 1078: case _Heater1:
	
l3401:	
	line	1079
;Beverage_services.c: 1079: RC3=1;
	bsf	(59/8),(59)&7
	line	1080
;Beverage_services.c: 1080: break;
	goto	l3402
	line	1081
	
l8742:	
;Beverage_services.c: 1081: }
	goto	l3402
	line	1047
	
l3390:	
	
l8744:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__ON),w
	; Switch size 1, requested type "space"
; Number of cases is 10, Range of values is 1 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           31    16 (average)
; direct_byte           41    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l3391
	xorlw	2^1	; case 2
	skipnz
	goto	l3393
	xorlw	3^2	; case 3
	skipnz
	goto	l3394
	xorlw	4^3	; case 4
	skipnz
	goto	l3395
	xorlw	5^4	; case 5
	skipnz
	goto	l3396
	xorlw	6^5	; case 6
	skipnz
	goto	l3397
	xorlw	7^6	; case 7
	skipnz
	goto	l3398
	xorlw	8^7	; case 8
	skipnz
	goto	l3399
	xorlw	9^8	; case 9
	skipnz
	goto	l3400
	xorlw	10^9	; case 10
	skipnz
	goto	l3401
	goto	l3402
	opt asmopt_on

	line	1081
	
l3392:	
	line	1082
	
l3402:	
	return
	opt stack 0
GLOBAL	__end_of_onthevalve
	__end_of_onthevalve:
;; =============== function _onthevalve ends ============

	signat	_onthevalve,88
	global	_offthevalve
psect	text807,local,class=CODE,delta=2
global __ptext807
__ptext807:

;; *************** function _offthevalve *****************
;; Defined at:
;;		line 1085 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_enable_valves
;;		_control_valve
;; This function uses a non-reentrant model
;;
psect	text807
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	1085
	global	__size_of_offthevalve
	__size_of_offthevalve	equ	__end_of_offthevalve-_offthevalve
	
_offthevalve:	
	opt	stack 6
; Regs used in _offthevalve: [wreg-fsr0h+status,2+status,0]
	line	1086
	
l8734:	
;Beverage_services.c: 1086: switch(_OFF)
	goto	l8738
	line	1088
;Beverage_services.c: 1087: {
;Beverage_services.c: 1088: case _Milk_Valve_Forward:
	
l3406:	
	line	1089
;Beverage_services.c: 1089: RA2=0;
	bcf	(42/8),(42)&7
	line	1090
;Beverage_services.c: 1090: RA4=0;
	bcf	(44/8),(44)&7
	line	1091
;Beverage_services.c: 1091: case _Milk_Valve_Reverse:
	
l3407:	
	line	1092
;Beverage_services.c: 1092: RA2=0;
	bcf	(42/8),(42)&7
	line	1093
;Beverage_services.c: 1093: RA4=0;
	bcf	(44/8),(44)&7
	line	1094
;Beverage_services.c: 1094: break;
	goto	l3417
	line	1095
;Beverage_services.c: 1095: case _Mixing_Hot_Water_Valve:
	
l3409:	
	line	1096
;Beverage_services.c: 1096: RA5=0;
	bcf	(45/8),(45)&7
	line	1097
;Beverage_services.c: 1097: break;
	goto	l3417
	line	1098
;Beverage_services.c: 1098: case _Hot_Water_Valve:
	
l3410:	
	line	1099
;Beverage_services.c: 1099: RC0=0;
	bcf	(56/8),(56)&7
	line	1100
;Beverage_services.c: 1100: break;
	goto	l3417
	line	1101
;Beverage_services.c: 1101: case _Coffee_Hot_Water_Valve:
	
l3411:	
	line	1102
;Beverage_services.c: 1102: RC1=0;
	bcf	(57/8),(57)&7
	line	1103
;Beverage_services.c: 1103: break;
	goto	l3417
	line	1104
;Beverage_services.c: 1104: case _Coffee_Valve:
	
l3412:	
	line	1105
;Beverage_services.c: 1105: RE0=0;
	bcf	(72/8),(72)&7
	line	1106
;Beverage_services.c: 1106: break;
	goto	l3417
	line	1107
;Beverage_services.c: 1107: case _Tea_Hot_Water_Valve:
	
l3413:	
	line	1108
;Beverage_services.c: 1108: RC2=0;
	bcf	(58/8),(58)&7
	line	1109
;Beverage_services.c: 1109: break;
	goto	l3417
	line	1110
;Beverage_services.c: 1110: case _Tea_Valve:
	
l3414:	
	line	1111
;Beverage_services.c: 1111: RE1=0;
	bcf	(73/8),(73)&7
	line	1112
;Beverage_services.c: 1112: break;
	goto	l3417
	line	1113
;Beverage_services.c: 1113: case _Viber_Motor:
	
l3415:	
	line	1114
;Beverage_services.c: 1114: RE2=0;
	bcf	(74/8),(74)&7
	line	1115
;Beverage_services.c: 1115: break;
	goto	l3417
	line	1116
;Beverage_services.c: 1116: case _Heater1:
	
l3416:	
	line	1117
;Beverage_services.c: 1117: RC3=0;
	bcf	(59/8),(59)&7
	line	1118
;Beverage_services.c: 1118: break;
	goto	l3417
	line	1119
	
l8736:	
;Beverage_services.c: 1119: }
	goto	l3417
	line	1086
	
l3405:	
	
l8738:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__OFF),w
	; Switch size 1, requested type "space"
; Number of cases is 10, Range of values is 1 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           31    16 (average)
; direct_byte           41    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l3406
	xorlw	2^1	; case 2
	skipnz
	goto	l3407
	xorlw	3^2	; case 3
	skipnz
	goto	l3409
	xorlw	4^3	; case 4
	skipnz
	goto	l3410
	xorlw	5^4	; case 5
	skipnz
	goto	l3411
	xorlw	6^5	; case 6
	skipnz
	goto	l3412
	xorlw	7^6	; case 7
	skipnz
	goto	l3413
	xorlw	8^7	; case 8
	skipnz
	goto	l3414
	xorlw	9^8	; case 9
	skipnz
	goto	l3415
	xorlw	10^9	; case 10
	skipnz
	goto	l3416
	goto	l3417
	opt asmopt_on

	line	1119
	
l3408:	
	line	1120
	
l3417:	
	return
	opt stack 0
GLOBAL	__end_of_offthevalve
	__end_of_offthevalve:
;; =============== function _offthevalve ends ============

	signat	_offthevalve,88
	global	_eeprom_write
psect	text808,local,class=CODE,delta=2
global __ptext808
__ptext808:

;; *************** function _eeprom_write *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\eewrite.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  value           1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mode_Init
;;		_enable_valves
;;		_call_control_valve
;;		_count_write
;;		_Write_ValveIn_Memory
;; This function uses a non-reentrant model
;;
psect	text808
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\eewrite.c"
	line	7
	global	__size_of_eeprom_write
	__size_of_eeprom_write	equ	__end_of_eeprom_write-_eeprom_write
	
_eeprom_write:	
	opt	stack 5
; Regs used in _eeprom_write: [wreg+status,2+status,0]
;eeprom_write@addr stored from wreg
	movwf	(eeprom_write@addr)
	line	8
	
l4706:	
	goto	l4707
	
l4708:	
	
l4707:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u4831
	goto	u4830
u4831:
	goto	l4707
u4830:
	goto	l8714
	
l4709:	
	
l8714:	
	movf	(eeprom_write@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movf	(eeprom_write@value),w
	movwf	(268)^0100h	;volatile
	
l8716:	
	movlw	(03Fh)
	movwf	(??_eeprom_write+0)+0
	movf	(??_eeprom_write+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volatile
	
l8718:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(24/8),(24)&7
	
l8720:	
	btfss	(95/8),(95)&7
	goto	u4841
	goto	u4840
u4841:
	goto	l4710
u4840:
	
l8722:	
	bsf	(24/8),(24)&7
	
l4710:	
	bcf	(95/8),(95)&7
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3170/8)^0180h,(3170)&7
	
l8724:	
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	
l8726:	
	bsf	(3169/8)^0180h,(3169)&7
	
l8728:	
	bcf	(3170/8)^0180h,(3170)&7
	
l8730:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(24/8),(24)&7
	goto	u4851
	goto	u4850
u4851:
	goto	l4713
u4850:
	
l8732:	
	bsf	(95/8),(95)&7
	goto	l4713
	
l4711:	
	goto	l4713
	
l4712:	
	line	10
;	Return value of _eeprom_write is never used
	
l4713:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
;; =============== function _eeprom_write ends ============

	signat	_eeprom_write,8313
	global	_key_press
psect	text809,local,class=CODE,delta=2
global __ptext809
__ptext809:

;; *************** function _key_press *****************
;; Defined at:
;;		line 99 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_enable_valves
;; This function uses a non-reentrant model
;;
psect	text809
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage_services.c"
	line	99
	global	__size_of_key_press
	__size_of_key_press	equ	__end_of_key_press-_key_press
	
_key_press:	
	opt	stack 6
; Regs used in _key_press: [wreg+status,2+status,0]
	line	100
	
l8648:	
;Beverage_services.c: 100: if(!RB0 || !RB1 || !RB2 || !RB3 || !RB4 || !RB5 || !RB6 || !RB7 || !RC4 || !RC5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u4611
	goto	u4610
u4611:
	goto	l3120
u4610:
	
l8650:	
	btfss	(49/8),(49)&7
	goto	u4621
	goto	u4620
u4621:
	goto	l3120
u4620:
	
l8652:	
	btfss	(50/8),(50)&7
	goto	u4631
	goto	u4630
u4631:
	goto	l3120
u4630:
	
l8654:	
	btfss	(51/8),(51)&7
	goto	u4641
	goto	u4640
u4641:
	goto	l3120
u4640:
	
l8656:	
	btfss	(52/8),(52)&7
	goto	u4651
	goto	u4650
u4651:
	goto	l3120
u4650:
	
l8658:	
	btfss	(53/8),(53)&7
	goto	u4661
	goto	u4660
u4661:
	goto	l3120
u4660:
	
l8660:	
	btfss	(54/8),(54)&7
	goto	u4671
	goto	u4670
u4671:
	goto	l3120
u4670:
	
l8662:	
	btfss	(55/8),(55)&7
	goto	u4681
	goto	u4680
u4681:
	goto	l3120
u4680:
	
l8664:	
	btfss	(60/8),(60)&7
	goto	u4691
	goto	u4690
u4691:
	goto	l3120
u4690:
	
l8666:	
	btfsc	(61/8),(61)&7
	goto	u4701
	goto	u4700
u4701:
	goto	l8710
u4700:
	
l3120:	
	line	102
;Beverage_services.c: 101: {
;Beverage_services.c: 102: if(RC5==0)
	btfsc	(61/8),(61)&7
	goto	u4711
	goto	u4710
u4711:
	goto	l8670
u4710:
	line	104
	
l8668:	
;Beverage_services.c: 103: {
;Beverage_services.c: 104: _PRESSED=_NORMAL_COFFEE_BUTTON;
	clrf	(__PRESSED)
	bsf	status,0
	rlf	(__PRESSED),f
	goto	l8670
	line	105
	
l3121:	
	line	106
	
l8670:	
;Beverage_services.c: 105: }
;Beverage_services.c: 106: if(RC4==0)
	btfsc	(60/8),(60)&7
	goto	u4721
	goto	u4720
u4721:
	goto	l8674
u4720:
	line	108
	
l8672:	
;Beverage_services.c: 107: {
;Beverage_services.c: 108: _PRESSED=_NORMAL_TEA_BUTTON;
	movlw	(02h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l8674
	line	109
	
l3122:	
	line	110
	
l8674:	
;Beverage_services.c: 109: }
;Beverage_services.c: 110: if(RB0==0)
	btfsc	(48/8),(48)&7
	goto	u4731
	goto	u4730
u4731:
	goto	l8678
u4730:
	line	112
	
l8676:	
;Beverage_services.c: 111: {
;Beverage_services.c: 112: _PRESSED=_LIGHT_COFFEE_BUTTON;
	movlw	(03h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l8678
	line	113
	
l3123:	
	line	114
	
l8678:	
;Beverage_services.c: 113: }
;Beverage_services.c: 114: if(RB1==0)
	btfsc	(49/8),(49)&7
	goto	u4741
	goto	u4740
u4741:
	goto	l8682
u4740:
	line	116
	
l8680:	
;Beverage_services.c: 115: {
;Beverage_services.c: 116: _PRESSED=_LIGHT_TEA_BUTTON;
	movlw	(04h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l8682
	line	117
	
l3124:	
	line	118
	
l8682:	
;Beverage_services.c: 117: }
;Beverage_services.c: 118: if(RB2==0)
	btfsc	(50/8),(50)&7
	goto	u4751
	goto	u4750
u4751:
	goto	l8686
u4750:
	line	120
	
l8684:	
;Beverage_services.c: 119: {
;Beverage_services.c: 120: _PRESSED=_BLACK_COFFEE_BUTTON;
	movlw	(05h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l8686
	line	121
	
l3125:	
	line	122
	
l8686:	
;Beverage_services.c: 121: }
;Beverage_services.c: 122: if(RB3==0)
	btfsc	(51/8),(51)&7
	goto	u4761
	goto	u4760
u4761:
	goto	l8690
u4760:
	line	124
	
l8688:	
;Beverage_services.c: 123: {
;Beverage_services.c: 124: _PRESSED=_BLACK_TEA_BUTTON;
	movlw	(06h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l8690
	line	125
	
l3126:	
	line	126
	
l8690:	
;Beverage_services.c: 125: }
;Beverage_services.c: 126: if(RB4==0)
	btfsc	(52/8),(52)&7
	goto	u4771
	goto	u4770
u4771:
	goto	l8694
u4770:
	line	128
	
l8692:	
;Beverage_services.c: 127: {
;Beverage_services.c: 128: _PRESSED=_MILK_BUTTON;
	movlw	(07h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l8694
	line	129
	
l3127:	
	line	130
	
l8694:	
;Beverage_services.c: 129: }
;Beverage_services.c: 130: if(RB5==0)
	btfsc	(53/8),(53)&7
	goto	u4781
	goto	u4780
u4781:
	goto	l8698
u4780:
	line	132
	
l8696:	
;Beverage_services.c: 131: {
;Beverage_services.c: 132: _PRESSED=_HOT_WATER_BUTTON;
	movlw	(09h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l8698
	line	133
	
l3128:	
	line	134
	
l8698:	
;Beverage_services.c: 133: }
;Beverage_services.c: 134: if(RB6==0)
	btfsc	(54/8),(54)&7
	goto	u4791
	goto	u4790
u4791:
	goto	l8702
u4790:
	line	136
	
l8700:	
;Beverage_services.c: 135: {
;Beverage_services.c: 136: _PRESSED=_EXTRA_BUTTON;
	movlw	(08h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l8702
	line	137
	
l3129:	
	line	138
	
l8702:	
;Beverage_services.c: 137: }
;Beverage_services.c: 138: if(RB7==0)
	btfsc	(55/8),(55)&7
	goto	u4801
	goto	u4800
u4801:
	goto	l8710
u4800:
	line	140
	
l8704:	
;Beverage_services.c: 139: {
;Beverage_services.c: 140: _PRESSED=_MENU_BUTTON;
	movlw	(0Ah)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	line	141
	
l8706:	
;Beverage_services.c: 141: if(_SHORTCUT==1)
	btfss	(__SHORTCUT/8),(__SHORTCUT)&7
	goto	u4811
	goto	u4810
u4811:
	goto	l3131
u4810:
	line	142
	
l8708:	
;Beverage_services.c: 142: _SHORTCUT=0;
	bcf	(__SHORTCUT/8),(__SHORTCUT)&7
	goto	l8710
	line	143
	
l3131:	
	line	144
;Beverage_services.c: 143: else
;Beverage_services.c: 144: _SHORTCUT=1;
	bsf	(__SHORTCUT/8),(__SHORTCUT)&7
	goto	l8710
	
l3132:	
	goto	l8710
	line	145
	
l3130:	
	goto	l8710
	line	146
	
l3118:	
	line	147
	
l8710:	
;Beverage_services.c: 145: }
;Beverage_services.c: 146: }
;Beverage_services.c: 147: if(_PRESSED!=_MENU_BUTTON)
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u4821
	goto	u4820
u4821:
	goto	l3134
u4820:
	line	149
	
l8712:	
;Beverage_services.c: 148: {
;Beverage_services.c: 149: _CHOICE_SELECTED=_PRESSED;
	movf	(__PRESSED),w
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__CHOICE_SELECTED)
	line	150
;Beverage_services.c: 150: _SHORTCUT_PRESSED=_PRESSED;
	movf	(__PRESSED),w
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__SHORTCUT_PRESSED)
	goto	l3134
	line	151
	
l3133:	
	line	152
	
l3134:	
	return
	opt stack 0
GLOBAL	__end_of_key_press
	__end_of_key_press:
;; =============== function _key_press ends ============

	signat	_key_press,88
	global	_eeprom_read
psect	text810,local,class=CODE,delta=2
global __ptext810
__ptext810:

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 7 in file "eeread.c"
;; Parameters:    Size  Location     Type
;;  addr            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Mode_Init
;;		_enable_valves
;;		_change_modes
;;		_call_control_valve
;;		_count_write
;;		_count_read
;;		_Read_ValveFrom_Memory
;; This function uses a non-reentrant model
;;
psect	text810
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\eeread.c"
	line	7
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
	opt	stack 5
; Regs used in _eeprom_read: [wreg+status,2+status,0]
	line	8
	
l4089:	
	line	9
# 9 "C:\Program Files\HI-TECH Software\PICC\9.82\sources\eeread.c"
clrwdt ;#
psect	text810
	line	10
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u4601
	goto	u4600
u4601:
	goto	l4089
u4600:
	goto	l8644
	
l4090:	
	line	11
	
l8644:	
	movf	(eeprom_read@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movlw	(03Fh)
	movwf	(??_eeprom_read+0)+0
	movf	(??_eeprom_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volatile
	bsf	(3168/8)^0180h,(3168)&7
	clrc
	btfsc	(3168/8)^0180h,(3168)&7
	setc
	movlw	0
	skipnc
	movlw	1

	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	goto	l4091
	
l8646:	
	line	12
	
l4091:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
;; =============== function _eeprom_read ends ============

	signat	_eeprom_read,4217
	global	_Port_Init
psect	text811,local,class=CODE,delta=2
global __ptext811
__ptext811:

;; *************** function _Port_Init *****************
;; Defined at:
;;		line 13 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text811
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\Beverage.c"
	line	13
	global	__size_of_Port_Init
	__size_of_Port_Init	equ	__end_of_Port_Init-_Port_Init
	
_Port_Init:	
	opt	stack 7
; Regs used in _Port_Init: [wreg+status,2]
	line	14
	
l8630:	
;Beverage.c: 14: ADCON1 = 0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	15
;Beverage.c: 15: CMCON = 0X07;
	movlw	(07h)
	movwf	(156)^080h	;volatile
	line	17
;Beverage.c: 17: TRISA = 0x01;
	movlw	(01h)
	movwf	(133)^080h	;volatile
	line	18
;Beverage.c: 18: TRISB = 0XFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	19
	
l8632:	
;Beverage.c: 19: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	20
	
l8634:	
;Beverage.c: 20: TRISC = 0X30;
	movlw	(030h)
	movwf	(135)^080h	;volatile
	line	21
;Beverage.c: 21: TRISE = 0X00;
	clrf	(137)^080h	;volatile
	line	23
;Beverage.c: 23: PORTA = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	24
	
l8636:	
;Beverage.c: 24: PORTB = 0XFF;
	movlw	(0FFh)
	movwf	(6)	;volatile
	line	25
	
l8638:	
;Beverage.c: 25: PORTC = 0X30;
	movlw	(030h)
	movwf	(7)	;volatile
	line	26
	
l8640:	
;Beverage.c: 26: PORTD = 0XFD;
	movlw	(0FDh)
	movwf	(8)	;volatile
	line	27
	
l8642:	
;Beverage.c: 27: PORTE = 0X00;
	clrf	(9)	;volatile
	line	28
	
l2245:	
	return
	opt stack 0
GLOBAL	__end_of_Port_Init
	__end_of_Port_Init:
;; =============== function _Port_Init ends ============

	signat	_Port_Init,88
	global	_strlen
psect	text812,local,class=CODE,delta=2
global __ptext812
__ptext812:

;; *************** function _strlen *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> buff(4), 
;; Auto vars:     Size  Location     Type
;;  s               1    8[COMMON] PTR const unsigned char 
;;		 -> buff(4), 
;;  cp              1    9[COMMON] PTR const unsigned char 
;;		 -> buff(4), 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rev
;; This function uses a non-reentrant model
;;
psect	text812
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\strlen.c"
	line	5
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:	
	opt	stack 4
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0]
;strlen@s stored from wreg
	line	8
	movwf	(strlen@s)
	
l8622:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l8624
	
l5391:	
	line	10
	goto	l8624
	
l5390:	
	line	9
	
l8624:	
	movf	(strlen@cp),w
	movwf	fsr0
	movlw	01h
	addwf	(strlen@cp),f
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u4591
	goto	u4590
u4591:
	goto	l8624
u4590:
	goto	l8626
	
l5392:	
	line	11
	
l8626:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movlw	((0x0/2))
	movwf	(??_strlen+0)+0+1
	comf	(??_strlen+0)+0,f
	comf	(??_strlen+0)+1,f
	incf	(??_strlen+0)+0,f
	skipnz
	incf	(??_strlen+0)+1,f
	movf	(strlen@cp),w
	movwf	(??_strlen+2)+0
	movlw	((0x0/2))
	movwf	(??_strlen+2)+0+1
	movf	0+(??_strlen+0)+0,w
	addwf	0+(??_strlen+2)+0,w
	movwf	(??_strlen+4)+0
	movf	1+(??_strlen+0)+0,w
	skipnc
	incf	1+(??_strlen+0)+0,w
	addwf	1+(??_strlen+2)+0,w
	movwf	1+(??_strlen+4)+0
	movf	0+(??_strlen+4)+0,w
	addlw	low(-1)
	movwf	(?_strlen)
	movf	1+(??_strlen+4)+0,w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(?_strlen)
	goto	l5393
	
l8628:	
	line	12
	
l5393:	
	return
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
;; =============== function _strlen ends ============

	signat	_strlen,4218
	global	_DelayMs
psect	text813,local,class=CODE,delta=2
global __ptext813
__ptext813:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 19 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\delay.c"
;; Parameters:    Size  Location     Type
;;  cnt             2   12[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  _dcnt           1    2[BANK0 ] unsigned char 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         2       3       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_Init
;;		_Lcd_Cmd
;;		_Lcd_Data
;;		_main
;;		_Inidcate_Buzzer
;;		_enable_valves
;;		_change_modes
;;		_control_valve
;; This function uses a non-reentrant model
;;
psect	text813
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\delay.c"
	line	19
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 4
; Regs used in _DelayMs: [wreg+status,2+status,0]
	line	36
;delay.c: 34: unsigned char i;
;delay.c: 36: do {
	
l3467:	
	line	38
	
l8614:	
;delay.c: 38: i = 4;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@i)
	line	40
;delay.c: 40: do {
	
l3468:	
	line	42
;delay.c: 42: { unsigned char _dcnt; _dcnt = (175)*((20*1000L)/(12*1000L)); while(--_dcnt != 0) continue; };
	movlw	(0AFh)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@_dcnt)
	goto	l8616
	
l3470:	
	goto	l8616
	
l3469:	
	
l8616:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u4561
	goto	u4560
u4561:
	goto	l8616
u4560:
	goto	l8618
	
l3471:	
	line	44
	
l8618:	
;delay.c: 44: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u4571
	goto	u4570
u4571:
	goto	l3468
u4570:
	goto	l8620
	
l3472:	
	line	46
	
l8620:	
;delay.c: 46: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	movlw	high(01h)
	skipc
	decf	(DelayMs@cnt+1),f
	subwf	(DelayMs@cnt+1),f
	movf	(((DelayMs@cnt+1))),w
	iorwf	(((DelayMs@cnt))),w
	skipz
	goto	u4581
	goto	u4580
u4581:
	goto	l3467
u4580:
	goto	l3474
	
l3473:	
	line	50
	
l3474:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	_InitADC
psect	text814,local,class=CODE,delta=2
global __ptext814
__ptext814:

;; *************** function _InitADC *****************
;; Defined at:
;;		line 11 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text814
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_03\adc.c"
	line	11
	global	__size_of_InitADC
	__size_of_InitADC	equ	__end_of_InitADC-_InitADC
	
_InitADC:	
	opt	stack 7
; Regs used in _InitADC: [wreg]
	line	12
	
l8612:	
;adc.c: 12: ADCON1 = 0x84;
	movlw	(084h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	16
;adc.c: 16: ADCON0 = 0x81;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	17
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_InitADC
	__end_of_InitADC:
;; =============== function _InitADC ends ============

	signat	_InitADC,88
	global	fptotal
fptotal equ 1
	file ""
	line	#
psect	functab,class=CODE,delta=2,reloc=256
global __pfunctab
__pfunctab:
	global	fptable
fptable:
	movwf (btemp+1)&07Fh
	movlw high(fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	fpbase
fpbase:
	goto fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp__eeprom_read:
entry__eeprom_read:
	global	entry__eeprom_read
	ljmp	_eeprom_read
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
