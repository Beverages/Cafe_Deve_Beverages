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
# 10 "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage.c"
	psect config,class=CONFIG,delta=2 ;#
# 10 "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage.c"
	dw 0xFFFF & 0xFF7F & 0xFFBF & 0xFFFF & 0xFFFF & 0xFFF7 & 0xFFFB & 0xFFFE & 0xFFFF ;#
	FNCALL	_main,_Port_Init
	FNCALL	_main,_Lcd_Init
	FNCALL	_main,_Uart_Init
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
	FNCALL	_enable_valves,_SendByteSerially
	FNCALL	_enable_valves,___awdiv
	FNCALL	_enable_valves,_Lcd_Data
	FNCALL	_enable_valves,_onthevalve
	FNCALL	_enable_valves,___wmul
	FNCALL	_enable_valves,_count_read
	FNCALL	_Mode_Init,_Read_ValveFrom_Memory
	FNCALL	_Mode_Init,_eeprom_read
	FNCALL	_Mode_Init,_SendByteSerially
	FNCALL	_Mode_Init,_eeprom_write
	FNCALL	_Mode_Init,_call_control_valve
	FNCALL	_call_control_valve,___bmul
	FNCALL	_call_control_valve,_eeprom_read
	FNCALL	_call_control_valve,_control_valve
	FNCALL	_call_control_valve,_Lcd_Cmd
	FNCALL	_call_control_valve,_myitoa
	FNCALL	_call_control_valve,_Lcd_String
	FNCALL	_call_control_valve,_eeprom_write
	FNCALL	_call_control_valve,___wmul
	FNCALL	_change_modes,_Print_Name
	FNCALL	_change_modes,_Lcd_String
	FNCALL	_change_modes,_DelayMs
	FNCALL	_change_modes,_Lcd_Cmd
	FNCALL	_change_modes,_Lcd_Data
	FNCALL	_change_modes,_print_yes_no
	FNCALL	_change_modes,_eeprom_read
	FNCALL	_change_modes,_count_read
	FNCALL	_change_modes,_Num_Disp
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
	FNCALL	_Print_Menu,_SendByteSerially
	FNCALL	_Print_Name,_SendByteSerially
	FNCALL	_Inidcate_Buzzer,_DelayMs
	FNCALL	_Uart_Init,___aldiv
	FNCALL	_rev,_strlen
	FNCALL	_Lcd_Data,_DelayMs
	FNCALL	_Lcd_Cmd,_DelayMs
	FNROOT	_main
	global	_asciitable
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\lcd.h"
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
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_GO_nDONE
_GO_nDONE	set	250
	global	_PEIE
_PEIE	set	94
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
	global	_SPEN
_SPEN	set	199
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_CMCON
_CMCON	set	156
	global	_SPBRG
_SPBRG	set	153
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
	global	_BRGH
_BRGH	set	1218
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_TXEN
_TXEN	set	1221
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
	
STR_6:	
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
	
STR_7:	
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
	
STR_20:	
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
	
STR_8:	
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
	
STR_16:	
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
	
STR_25:	
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
	
STR_10:	
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
	
STR_11:	
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
	
STR_9:	
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
	
STR_22:	
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
	
STR_13:	
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
	
STR_30:	
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
	
STR_15:	
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
	
STR_18:	
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
	
STR_27:	
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
	
STR_29:	
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
	
STR_17:	
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	85	;'U'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_21:	
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	0
psect	stringtext
STR_4	equ	STR_25+9
STR_12	equ	STR_22+4
STR_14	equ	STR_9+4
STR_24	equ	STR_1+4
STR_19	equ	STR_16+9
STR_23	equ	STR_21+0
STR_26	equ	STR_21+0
STR_28	equ	STR_21+0
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
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\lcd.h"
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
	global	?_SendByteSerially
?_SendByteSerially:	; 0 bytes @ 0x0
	global	??_SendByteSerially
??_SendByteSerially:	; 0 bytes @ 0x0
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
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	SendByteSerially@Byte
SendByteSerially@Byte:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	??_Print_Name
??_Print_Name:	; 0 bytes @ 0x1
	global	??_Print_Menu
??_Print_Menu:	; 0 bytes @ 0x1
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
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
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
	global	??___aldiv
??___aldiv:	; 0 bytes @ 0x8
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
	global	Uart_Init@x
Uart_Init@x:	; 2 bytes @ 0x9
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
	global	??_control_valve
??_control_valve:	; 0 bytes @ 0xE
	global	??_Lcd_Init
??_Lcd_Init:	; 0 bytes @ 0xE
	global	??_Lcd_String
??_Lcd_String:	; 0 bytes @ 0xE
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
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x0
	global	_Write_ValveIn_Memory$4130
_Write_ValveIn_Memory$4130:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	rev@f
rev@f:	; 1 bytes @ 0x1
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	rev@l
rev@l:	; 1 bytes @ 0x2
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x2
	global	_Write_ValveIn_Memory$4131
_Write_ValveIn_Memory$4131:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2
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
	global	_Write_ValveIn_Memory$4132
_Write_ValveIn_Memory$4132:	; 2 bytes @ 0x4
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
	global	?_Uart_Init
?_Uart_Init:	; 0 bytes @ 0x6
	global	print_yes_no@MEM
print_yes_no@MEM:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	_Write_ValveIn_Memory$4133
_Write_ValveIn_Memory$4133:	; 2 bytes @ 0x6
	global	Uart_Init@baudrate
Uart_Init@baudrate:	; 4 bytes @ 0x6
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
	global	_Write_ValveIn_Memory$4134
_Write_ValveIn_Memory$4134:	; 2 bytes @ 0x8
	ds	1
	global	??_call_control_valve
??_call_control_valve:	; 0 bytes @ 0x9
	global	Num_Disp@digit
Num_Disp@digit:	; 1 bytes @ 0x9
	ds	1
	global	??_Uart_Init
??_Uart_Init:	; 0 bytes @ 0xA
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
	global	_call_control_valve$6339
_call_control_valve$6339:	; 2 bytes @ 0x11
	ds	2
	global	??_Mode_Init
??_Mode_Init:	; 0 bytes @ 0x13
	global	??_enable_valves
??_enable_valves:	; 0 bytes @ 0x13
	ds	2
	global	Mode_Init@option
Mode_Init@option:	; 1 bytes @ 0x15
	ds	3
	global	_enable_valves$6338
_enable_valves$6338:	; 2 bytes @ 0x18
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
;;Data sizes: Strings 269, constant 0, data 10, bss 41, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     34      79
;; BANK1           80      0      10
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___aldiv	long  size(1) Largest target is 0
;;
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
;;		 -> STR_30(CODE[12]), STR_29(CODE[10]), STR_28(CODE[6]), STR_27(CODE[10]), 
;;		 -> STR_26(CODE[6]), STR_25(CODE[15]), STR_24(CODE[12]), STR_23(CODE[6]), 
;;		 -> STR_22(CODE[13]), STR_21(CODE[6]), STR_20(CODE[16]), STR_19(CODE[6]), 
;;		 -> STR_18(CODE[10]), STR_17(CODE[7]), STR_16(CODE[15]), STR_15(CODE[11]), 
;;		 -> STR_14(CODE[9]), STR_13(CODE[12]), STR_12(CODE[9]), STR_11(CODE[14]), 
;;		 -> STR_10(CODE[14]), STR_9(CODE[13]), STR_8(CODE[15]), STR_7(CODE[16]), 
;;		 -> STR_6(CODE[17]), STR_5(CODE[4]), STR_4(CODE[6]), STR_3(CODE[6]), 
;;		 -> STR_2(CODE[17]), STR_1(CODE[16]), buff(BANK0[4]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_DelayMs
;;   _main->_myitoa
;;   _enable_valves->_DelayMs
;;   _enable_valves->_myitoa
;;   _enable_valves->_count_read
;;   _call_control_valve->_myitoa
;;   _change_modes->_DelayMs
;;   _change_modes->_count_read
;;   _myitoa->_rev
;;   _Num_Disp->_count_read
;;   _Lcd_Init->_DelayMs
;;   _control_valve->_DelayMs
;;   _count_read->___wmul
;;   _Write_ValveIn_Memory->_eeprom_write
;;   _count_write->_eeprom_write
;;   _Read_ValveFrom_Memory->_eeprom_read
;;   _Print_Menu->_SendByteSerially
;;   _Print_Name->_SendByteSerially
;;   _Inidcate_Buzzer->_DelayMs
;;   _Uart_Init->___aldiv
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
;;   _enable_valves->_call_control_valve
;;   _Mode_Init->_call_control_valve
;;   _call_control_valve->_Lcd_String
;;   _change_modes->_Num_Disp
;;   _print_yes_no->_Lcd_Cmd
;;   _print_yes_no->_Lcd_Data
;;   _myitoa->_rev
;;   _Num_Disp->___lwdiv
;;   _Lcd_String->_Lcd_Cmd
;;   _Lcd_String->_Lcd_Data
;;   _Lcd_Init->_Lcd_Cmd
;;   _control_valve->_DelayMs
;;   _Inidcate_Buzzer->_DelayMs
;;   _Uart_Init->___aldiv
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
;; (0) _main                                                 5     5      0   13999
;;                                             29 BANK0      5     5      0
;;                          _Port_Init
;;                           _Lcd_Init
;;                          _Uart_Init
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
;; (1) _enable_valves                                       12    12      0    6919
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
;;                   _SendByteSerially
;;                            ___awdiv
;;                           _Lcd_Data
;;                         _onthevalve
;;                             ___wmul
;;                         _count_read
;; ---------------------------------------------------------------------------------
;; (1) _Mode_Init                                            3     3      0    2359
;;                                             19 BANK0      3     3      0
;;              _Read_ValveFrom_Memory
;;                        _eeprom_read
;;                   _SendByteSerially
;;                       _eeprom_write
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
;; (1) _change_modes                                         3     3      0    2138
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
;; (2) _Print_Menu                                           0     0      0      22
;;                   _SendByteSerially
;; ---------------------------------------------------------------------------------
;; (2) _Print_Name                                           0     0      0      22
;;                   _SendByteSerially
;; ---------------------------------------------------------------------------------
;; (2) _Inidcate_Buzzer                                      0     0      0      68
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _Uart_Init                                           18    14      4     456
;;                                              9 COMMON     2     2      0
;;                                              6 BANK0     16    12      4
;;                            ___aldiv
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
;; (2) ___aldiv                                             15     7      8     300
;;                                              0 COMMON     9     1      8
;;                                              0 BANK0      6     6      0
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
;; (3) _SendByteSerially                                     1     1      0      22
;;                                              0 COMMON     1     1      0
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
;;   _Uart_Init
;;     ___aldiv
;;   _Inidcate_Buzzer
;;     _DelayMs
;;       ___wmul (ARG)
;;         _eeprom_read (ARG)
;;           ___bmul (ARG)
;;   _Print_Name
;;     _SendByteSerially
;;   _InitADC
;;   _Mode_Init
;;     _Read_ValveFrom_Memory
;;       _eeprom_read
;;         ___bmul (ARG)
;;     _eeprom_read
;;       ___bmul (ARG)
;;     _SendByteSerially
;;     _eeprom_write
;;       ___bmul (ARG)
;;       _eeprom_read (ARG)
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
;;       _SendByteSerially
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
;;       _SendByteSerially
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
;;     _SendByteSerially
;;     ___awdiv
;;     _Lcd_Data
;;       _DelayMs
;;         ___wmul (ARG)
;;           _eeprom_read (ARG)
;;             ___bmul (ARG)
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
;;       _SendByteSerially
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
;;		line 32 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage.c"
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
;;		_Uart_Init
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
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage.c"
	line	32
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	34
	
l11001:	
;Beverage.c: 34: Port_Init();
	fcall	_Port_Init
	line	35
;Beverage.c: 35: Lcd_Init();
	fcall	_Lcd_Init
	line	36
;Beverage.c: 36: Uart_Init(38400);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Uart_Init+3)
	movlw	0
	movwf	(?_Uart_Init+2)
	movlw	096h
	movwf	(?_Uart_Init+1)
	movlw	0
	movwf	(?_Uart_Init)

	fcall	_Uart_Init
	line	37
;Beverage.c: 37: Inidcate_Buzzer();
	fcall	_Inidcate_Buzzer
	line	38
;Beverage.c: 38: Print_Name();
	fcall	_Print_Name
	line	39
;Beverage.c: 39: InitADC();
	fcall	_InitADC
	line	40
	
l11003:	
;Beverage.c: 40: Mode_Init();
	fcall	_Mode_Init
	line	42
	
l11005:	
;Beverage.c: 42: Enable_Config_Mode=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	goto	l11007
	line	44
;Beverage.c: 44: while(1)
	
l2250:	
	line	46
	
l11007:	
;Beverage.c: 45: {
;Beverage.c: 46: ADC_value=GetADCValue(0);
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

	line	47
	
l11009:	
;Beverage.c: 47: temperature=(ADC_value*100)/204;
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

	line	48
	
l11011:	
;Beverage.c: 48: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	50
	
l11013:	
;Beverage.c: 50: if(temperature+10<=(eeprom_read(120)) && Enable_Config_Mode==1)
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
	goto	u7535
	movf	0+(??_main+0)+0,w
	subwf	0+(??_main+3)+0,w
u7535:
	skipc
	goto	u7531
	goto	u7530
u7531:
	goto	l2251
u7530:
	
l11015:	
	btfss	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	goto	u7541
	goto	u7540
u7541:
	goto	l2251
u7540:
	line	52
	
l11017:	
;Beverage.c: 51: {
;Beverage.c: 52: RC3=1;
	bsf	(59/8),(59)&7
	line	53
;Beverage.c: 53: Enable_Normal_Mode=0;
	bcf	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	line	54
	
l11019:	
;Beverage.c: 54: myitoa(temperature,buff);
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
	line	55
	
l11021:	
;Beverage.c: 55: if(_temp_flag==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(__temp_flag/8),(__temp_flag)&7
	goto	u7551
	goto	u7550
u7551:
	goto	l11025
u7550:
	line	56
	
l11023:	
;Beverage.c: 56: Lcd_String("LOW TEMPERATURE",1,0);
	movlw	low(STR_1|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_1|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	goto	l11025
	
l2252:	
	line	57
	
l11025:	
;Beverage.c: 57: Lcd_Cmd(0xC7);
	movlw	(0C7h)
	fcall	_Lcd_Cmd
	line	58
	
l11027:	
;Beverage.c: 58: Lcd_String(buff,0,0);
	movlw	(_buff&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	(0x0/2)
	movwf	(?_Lcd_String+1)
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	59
	
l11029:	
;Beverage.c: 59: _temp_flag=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(__temp_flag/8),(__temp_flag)&7
	line	60
	
l2251:	
	line	61
;Beverage.c: 60: }
;Beverage.c: 61: if(temperature>eeprom_read(120) && _temp_flag==1)
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
	goto	u7565
	movf	(_temperature),w
	subwf	0+(??_main+1)+0,w
u7565:
	skipnc
	goto	u7561
	goto	u7560
u7561:
	goto	l11047
u7560:
	
l11031:	
	btfss	(__temp_flag/8),(__temp_flag)&7
	goto	u7571
	goto	u7570
u7571:
	goto	l11047
u7570:
	line	63
	
l11033:	
;Beverage.c: 62: {
;Beverage.c: 63: RC3=0;
	bcf	(59/8),(59)&7
	line	64
	
l11035:	
;Beverage.c: 64: Lcd_String("HAVE A HOT SIP !",1,0);
	movlw	low(STR_2|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_2|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	65
	
l11037:	
;Beverage.c: 65: DelayMs(1500);
	movlw	low(05DCh)
	movwf	(?_DelayMs)
	movlw	high(05DCh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	66
	
l11039:	
;Beverage.c: 66: Enable_Normal_Mode=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	line	67
	
l11041:	
;Beverage.c: 67: Enable_Config_Mode=1;
	bsf	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	line	68
	
l11043:	
;Beverage.c: 68: Print_Name();
	fcall	_Print_Name
	line	69
	
l11045:	
;Beverage.c: 69: _temp_flag=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(__temp_flag/8),(__temp_flag)&7
	goto	l11047
	line	70
	
l2253:	
	line	71
	
l11047:	
;Beverage.c: 70: }
;Beverage.c: 71: key_press();
	fcall	_key_press
	line	72
	
l11049:	
;Beverage.c: 72: enable_valves();
	fcall	_enable_valves
	line	73
	
l11051:	
;Beverage.c: 73: change_modes();
	fcall	_change_modes
	goto	l11007
	line	74
	
l2254:	
	line	44
	goto	l11007
	
l2255:	
	line	75
	
l2256:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_enable_valves
psect	text848,local,class=CODE,delta=2
global __ptext848
__ptext848:

;; *************** function _enable_valves *****************
;; Defined at:
;;		line 153 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
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
;;		_SendByteSerially
;;		___awdiv
;;		_Lcd_Data
;;		_onthevalve
;;		___wmul
;;		_count_read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text848
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	153
	global	__size_of_enable_valves
	__size_of_enable_valves	equ	__end_of_enable_valves-_enable_valves
	
_enable_valves:	
	opt	stack 3
; Regs used in _enable_valves: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	154
	
l10263:	
;Beverage_services.c: 154: if(Enable_Normal_Mode && (_PRESSED!=_MENU_BUTTON))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	goto	u6261
	goto	u6260
u6261:
	goto	l10305
u6260:
	
l10265:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u6271
	goto	u6270
u6271:
	goto	l10305
u6270:
	line	156
	
l10267:	
;Beverage_services.c: 155: {
;Beverage_services.c: 156: Print_Menu();
	fcall	_Print_Menu
	line	157
	
l10269:	
;Beverage_services.c: 157: if(_PRESSED==_HOT_WATER_BUTTON)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	xorlw	09h
	skipz
	goto	u6281
	goto	u6280
u6281:
	goto	l10273
u6280:
	line	158
	
l10271:	
;Beverage_services.c: 158: Enable_Hot_Water_Valve=1;
	bsf	(_Enable_Hot_Water_Valve/8),(_Enable_Hot_Water_Valve)&7
	goto	l10273
	
l3142:	
	line	160
	
l10273:	
;Beverage_services.c: 160: if(_PRESSED)
	movf	(__PRESSED),w
	skipz
	goto	u6290
	goto	l10305
u6290:
	line	162
	
l10275:	
;Beverage_services.c: 161: {
;Beverage_services.c: 162: if(MENU[_PRESSED-1].COFFEE_DICATION)
	movf	(__PRESSED),w
	addlw	0FFh
	addlw	_MENU&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	goto	u6301
	goto	u6300
u6301:
	goto	l10279
u6300:
	line	164
	
l10277:	
;Beverage_services.c: 163: {
;Beverage_services.c: 164: Enable_Coffee_Valve = 1;
	bsf	(_Enable_Coffee_Valve/8),(_Enable_Coffee_Valve)&7
	goto	l10279
	line	165
	
l3144:	
	line	166
	
l10279:	
;Beverage_services.c: 165: }
;Beverage_services.c: 166: if(MENU[_PRESSED-1].TEA_DICATION)
	movf	(__PRESSED),w
	addlw	0FFh
	addlw	_MENU&0ffh
	movwf	fsr0
	btfss	indf,1
	goto	u6311
	goto	u6310
u6311:
	goto	l10283
u6310:
	line	168
	
l10281:	
;Beverage_services.c: 167: {
;Beverage_services.c: 168: Enable_Tea_Valve = 1;
	bsf	(_Enable_Tea_Valve/8),(_Enable_Tea_Valve)&7
	goto	l10283
	line	169
	
l3145:	
	line	170
	
l10283:	
;Beverage_services.c: 169: }
;Beverage_services.c: 170: if(MENU[_PRESSED-1].MIXING_HOT_WATER)
	movf	(__PRESSED),w
	addlw	0FFh
	addlw	_MENU&0ffh
	movwf	fsr0
	btfss	indf,2
	goto	u6321
	goto	u6320
u6321:
	goto	l10287
u6320:
	line	172
	
l10285:	
;Beverage_services.c: 171: {
;Beverage_services.c: 172: Enable_Mixing_Hot_Water_Valve = 1;
	bsf	(_Enable_Mixing_Hot_Water_Valve/8),(_Enable_Mixing_Hot_Water_Valve)&7
	goto	l10287
	line	173
	
l3146:	
	line	174
	
l10287:	
;Beverage_services.c: 173: }
;Beverage_services.c: 174: if(MENU[_PRESSED-1].MILK)
	movf	(__PRESSED),w
	addlw	0FFh
	addlw	_MENU&0ffh
	movwf	fsr0
	btfss	indf,3
	goto	u6331
	goto	u6330
u6331:
	goto	l10291
u6330:
	line	176
	
l10289:	
;Beverage_services.c: 175: {
;Beverage_services.c: 176: Enable_Milk_Forward = 1;
	bsf	(_Enable_Milk_Forward/8),(_Enable_Milk_Forward)&7
	line	177
;Beverage_services.c: 177: Enable_Milk_Reverse = 1;
	bsf	(_Enable_Milk_Reverse/8),(_Enable_Milk_Reverse)&7
	goto	l10291
	line	178
	
l3147:	
	line	179
	
l10291:	
;Beverage_services.c: 178: }
;Beverage_services.c: 179: if(MENU[_PRESSED-1].VIBR_MOTOR)
	movf	(__PRESSED),w
	addlw	0FFh
	addlw	_MENU&0ffh
	movwf	fsr0
	btfss	indf,4
	goto	u6341
	goto	u6340
u6341:
	goto	l10295
u6340:
	line	181
	
l10293:	
;Beverage_services.c: 180: {
;Beverage_services.c: 181: Enable_Viber_Motor = 1;
	bsf	(_Enable_Viber_Motor/8),(_Enable_Viber_Motor)&7
	goto	l10295
	line	182
	
l3148:	
	line	184
	
l10295:	
;Beverage_services.c: 182: }
;Beverage_services.c: 184: Inidcate_Buzzer();
	fcall	_Inidcate_Buzzer
	line	185
	
l10297:	
;Beverage_services.c: 185: if(_PRESSED!=_EXTRA_BUTTON)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u6351
	goto	u6350
u6351:
	goto	l10301
u6350:
	line	187
	
l10299:	
;Beverage_services.c: 186: {
;Beverage_services.c: 187: count_write(126,127,eeprom_read(126)+1);
	movlw	(07Eh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_read)
	fcall	_eeprom_read
	addlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_enable_valves$6338)
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((_enable_valves$6338))+1
;Beverage_services.c: 186: {
;Beverage_services.c: 187: count_write(126,127,eeprom_read(126)+1);
	movlw	(07Fh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_count_write)
	movf	(_enable_valves$6338+1),w
	clrf	1+(?_count_write)+01h
	addwf	1+(?_count_write)+01h
	movf	(_enable_valves$6338),w
	clrf	0+(?_count_write)+01h
	addwf	0+(?_count_write)+01h

	movlw	(07Eh)
	fcall	_count_write
	line	188
;Beverage_services.c: 188: count_write(126+(_PRESSED*2),127+(_PRESSED*2),eeprom_read(126+(_PRESSED*2))+1);
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
	movwf	(_enable_valves$6338)
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((_enable_valves$6338))+1
;Beverage_services.c: 188: count_write(126+(_PRESSED*2),127+(_PRESSED*2),eeprom_read(126+(_PRESSED*2))+1);
	movf	(__PRESSED),w
	movwf	(??_enable_valves+0)+0
	addwf	(??_enable_valves+0)+0,w
	addlw	07Fh
	movwf	(??_enable_valves+1)+0
	movf	(??_enable_valves+1)+0,w
	movwf	(?_count_write)
	movf	(_enable_valves$6338+1),w
	clrf	1+(?_count_write)+01h
	addwf	1+(?_count_write)+01h
	movf	(_enable_valves$6338),w
	clrf	0+(?_count_write)+01h
	addwf	0+(?_count_write)+01h

	movf	(__PRESSED),w
	movwf	(??_enable_valves+2)+0
	addwf	(??_enable_valves+2)+0,w
	addlw	07Eh
	fcall	_count_write
	goto	l10301
	line	189
	
l3149:	
	line	190
	
l10301:	
;Beverage_services.c: 189: }
;Beverage_services.c: 190: call_control_valve();
	fcall	_call_control_valve
	line	191
	
l10303:	
;Beverage_services.c: 191: Print_Name();
	fcall	_Print_Name
	goto	l10305
	line	192
	
l3143:	
	goto	l10305
	line	193
	
l3141:	
	line	195
	
l10305:	
;Beverage_services.c: 192: }
;Beverage_services.c: 193: }
;Beverage_services.c: 195: if(Enable_Config_Mode || Enable_Normal_Mode || Enable_Shortcut_Mode)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	goto	u6361
	goto	u6360
u6361:
	goto	l10371
u6360:
	
l10307:	
	btfsc	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	goto	u6371
	goto	u6370
u6371:
	goto	l10371
u6370:
	
l10309:	
	btfss	(_Enable_Shortcut_Mode/8),(_Enable_Shortcut_Mode)&7
	goto	u6381
	goto	u6380
u6381:
	goto	l3150
u6380:
	goto	l10371
	
l3152:	
	line	197
;Beverage_services.c: 196: {
;Beverage_services.c: 197: switch(_PRESSED)
	goto	l10371
	line	199
;Beverage_services.c: 198: {
;Beverage_services.c: 199: case _MENU_BUTTON: while(RC4==0 && (Enable_Normal_Mode || Enable_Config_Mode))
	
l3154:	
	goto	l10333
	
l3156:	
	line	201
	
l10311:	
;Beverage_services.c: 200: {
;Beverage_services.c: 201: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	line	202
;Beverage_services.c: 202: if(i==39999)
	movlw	high(09C3Fh)
	xorwf	(_i+1),w
	skipz
	goto	u6395
	movlw	low(09C3Fh)
	xorwf	(_i),w
u6395:

	skipz
	goto	u6391
	goto	u6390
u6391:
	goto	l10319
u6390:
	line	204
	
l10313:	
;Beverage_services.c: 203: {
;Beverage_services.c: 204: j++;
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	line	205
	
l10315:	
;Beverage_services.c: 205: i=0;
	clrf	(_i)
	clrf	(_i+1)
	line	206
	
l10317:	
;Beverage_services.c: 206: key_press();
	fcall	_key_press
	goto	l10319
	line	207
	
l3157:	
	line	208
	
l10319:	
;Beverage_services.c: 207: }
;Beverage_services.c: 208: if(j==5)
	movlw	05h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_j),w
	iorwf	(_j+1),w
	skipz
	goto	u6401
	goto	u6400
u6401:
	goto	l10333
u6400:
	line	210
	
l10321:	
;Beverage_services.c: 209: {
;Beverage_services.c: 210: Enable_Normal_Mode=0;
	bcf	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	line	211
;Beverage_services.c: 211: Enable_Config_Mode=0;
	bcf	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	line	212
	
l10323:	
;Beverage_services.c: 212: _DISABLE_MODE=_Normal_Mode;
	clrf	(__DISABLE_MODE)
	bsf	status,0
	rlf	(__DISABLE_MODE),f
	line	213
	
l10325:	
;Beverage_services.c: 213: _ENABLE_MODE=_Password;
	movlw	(02h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	214
	
l10327:	
;Beverage_services.c: 214: j=0;
	clrf	(_j)
	clrf	(_j+1)
	line	215
	
l10329:	
;Beverage_services.c: 215: Enable_Config_Mode=0;
	bcf	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	line	216
	
l10331:	
;Beverage_services.c: 216: _SHORTCUT=0;
	bcf	(__SHORTCUT/8),(__SHORTCUT)&7
	goto	l10333
	line	217
	
l3158:	
	goto	l10333
	line	218
	
l3155:	
	line	199
	
l10333:	
	btfsc	(60/8),(60)&7
	goto	u6411
	goto	u6410
u6411:
	goto	l3161
u6410:
	
l10335:	
	btfsc	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	goto	u6421
	goto	u6420
u6421:
	goto	l10311
u6420:
	
l10337:	
	btfsc	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	goto	u6431
	goto	u6430
u6431:
	goto	l10311
u6430:
	goto	l3161
	
l3160:	
	
l3161:	
	line	219
;Beverage_services.c: 217: }
;Beverage_services.c: 218: }
;Beverage_services.c: 219: if(_SHORTCUT==1 && Enable_Shortcut_Mode==0)
	btfss	(__SHORTCUT/8),(__SHORTCUT)&7
	goto	u6441
	goto	u6440
u6441:
	goto	l10351
u6440:
	
l10339:	
	btfsc	(_Enable_Shortcut_Mode/8),(_Enable_Shortcut_Mode)&7
	goto	u6451
	goto	u6450
u6451:
	goto	l10351
u6450:
	line	221
	
l10341:	
;Beverage_services.c: 220: {
;Beverage_services.c: 221: Enable_Normal_Mode=0;
	bcf	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	line	222
;Beverage_services.c: 222: Enable_Config_Mode=0;
	bcf	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	line	223
	
l10343:	
;Beverage_services.c: 223: _ENABLE_MODE=_Shortcut_Mode;
	movlw	(0Eh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	224
	
l10345:	
;Beverage_services.c: 224: _PROCESS=_Countdisplay;
	clrf	(__PROCESS)
	bsf	status,0
	rlf	(__PROCESS),f
	line	225
	
l10347:	
;Beverage_services.c: 225: i=0;j=0;
	clrf	(_i)
	clrf	(_i+1)
	
l10349:	
	clrf	(_j)
	clrf	(_j+1)
	goto	l10351
	line	226
	
l3162:	
	line	227
	
l10351:	
;Beverage_services.c: 226: }
;Beverage_services.c: 227: if(_SHORTCUT==0 && Enable_Shortcut_Mode==1)
	btfsc	(__SHORTCUT/8),(__SHORTCUT)&7
	goto	u6461
	goto	u6460
u6461:
	goto	l3150
u6460:
	
l10353:	
	btfss	(_Enable_Shortcut_Mode/8),(_Enable_Shortcut_Mode)&7
	goto	u6471
	goto	u6470
u6471:
	goto	l3150
u6470:
	line	229
	
l10355:	
;Beverage_services.c: 228: {
;Beverage_services.c: 229: _OFF=_Mixing_Hot_Water_Valve;
	movlw	(03h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__OFF)
	line	230
	
l10357:	
;Beverage_services.c: 230: offthevalve();
	fcall	_offthevalve
	line	231
	
l10359:	
;Beverage_services.c: 231: _OFF=_Viber_Motor;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__OFF)
	line	232
;Beverage_services.c: 232: offthevalve();
	fcall	_offthevalve
	line	233
	
l10361:	
;Beverage_services.c: 233: _DISABLE_MODE=_Shortcut_Mode;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	234
	
l10363:	
;Beverage_services.c: 234: _ENABLE_MODE=_Normal_Mode;
	clrf	(__ENABLE_MODE)
	bsf	status,0
	rlf	(__ENABLE_MODE),f
	line	235
	
l10365:	
;Beverage_services.c: 235: _PROCESS=0;
	clrf	(__PROCESS)
	line	236
	
l10367:	
;Beverage_services.c: 236: _PREVIOUS_PROCESS=0;
	clrf	(__PREVIOUS_PROCESS)
	goto	l3150
	line	237
	
l3163:	
	line	238
;Beverage_services.c: 237: }
;Beverage_services.c: 238: break;
	goto	l3150
	line	239
	
l10369:	
;Beverage_services.c: 239: }
	goto	l3150
	line	197
	
l3153:	
	
l10371:	
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
	goto	l10333
	goto	l3150
	opt asmopt_on

	line	239
	
l3164:	
	line	240
	
l3150:	
	line	241
;Beverage_services.c: 240: }
;Beverage_services.c: 241: if(Enable_Password)
	btfss	(_Enable_Password/8),(_Enable_Password)&7
	goto	u6481
	goto	u6480
u6481:
	goto	l10415
u6480:
	goto	l10403
	line	243
	
l10373:	
;Beverage_services.c: 242: {
;Beverage_services.c: 243: switch(_PRESSED)
	goto	l10403
	line	245
;Beverage_services.c: 244: {
;Beverage_services.c: 245: case _NORMAL_COFFEE_BUTTON:
	
l3167:	
	line	246
	
l10375:	
;Beverage_services.c: 246: for(unsigned int i=0;i<256;i++)
	clrf	(enable_valves@i)
	clrf	(enable_valves@i+1)
	
l10377:	
	movlw	high(0100h)
	subwf	(enable_valves@i+1),w
	movlw	low(0100h)
	skipnz
	subwf	(enable_valves@i),w
	skipc
	goto	u6491
	goto	u6490
u6491:
	goto	l10381
u6490:
	goto	l10405
	
l10379:	
	goto	l10405
	line	247
	
l3168:	
	line	248
	
l10381:	
;Beverage_services.c: 247: {
;Beverage_services.c: 248: eeprom_write(i,0x00);
	clrf	(?_eeprom_write)
	movf	(enable_valves@i),w
	fcall	_eeprom_write
	line	246
	
l10383:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(enable_valves@i),f
	skipnc
	incf	(enable_valves@i+1),f
	movlw	high(01h)
	addwf	(enable_valves@i+1),f
	
l10385:	
	movlw	high(0100h)
	subwf	(enable_valves@i+1),w
	movlw	low(0100h)
	skipnz
	subwf	(enable_valves@i),w
	skipc
	goto	u6501
	goto	u6500
u6501:
	goto	l10381
u6500:
	goto	l10405
	
l3169:	
	line	250
;Beverage_services.c: 249: }
;Beverage_services.c: 250: break;
	goto	l10405
	line	251
;Beverage_services.c: 251: case _MILK_BUTTON: if(password>0)
	
l3171:	
	
l10387:	
	movf	(_password+1),w
	iorwf	(_password),w
	skipnz
	goto	u6511
	goto	u6510
u6511:
	goto	l10405
u6510:
	line	253
	
l10389:	
;Beverage_services.c: 252: {
;Beverage_services.c: 253: password--;
	movlw	low(01h)
	subwf	(_password),f
	movlw	high(01h)
	skipc
	decf	(_password+1),f
	subwf	(_password+1),f
	goto	l10405
	line	254
	
l3172:	
	line	255
;Beverage_services.c: 254: }
;Beverage_services.c: 255: break;
	goto	l10405
	line	256
;Beverage_services.c: 256: case _HOT_WATER_BUTTON: password++;
	
l3173:	
	
l10391:	
	movlw	low(01h)
	addwf	(_password),f
	skipnc
	incf	(_password+1),f
	movlw	high(01h)
	addwf	(_password+1),f
	line	257
;Beverage_services.c: 257: break;
	goto	l10405
	line	258
;Beverage_services.c: 258: case _MENU_BUTTON: if(password==(0+2))
	
l3174:	
	
l10393:	
	movlw	02h
	xorwf	(_password),w
	iorwf	(_password+1),w
	skipz
	goto	u6521
	goto	u6520
u6521:
	goto	l10405
u6520:
	line	260
	
l10395:	
;Beverage_services.c: 259: {
;Beverage_services.c: 260: password=0;
	clrf	(_password)
	clrf	(_password+1)
	line	261
	
l10397:	
;Beverage_services.c: 261: _DISABLE_MODE=_Password;
	movlw	(02h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	262
	
l10399:	
;Beverage_services.c: 262: _ENABLE_MODE=_Valves;
	movlw	(04h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	goto	l10405
	line	263
	
l3175:	
	line	264
;Beverage_services.c: 263: }
;Beverage_services.c: 264: break;
	goto	l10405
	line	265
	
l10401:	
;Beverage_services.c: 265: }
	goto	l10405
	line	243
	
l3166:	
	
l10403:	
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
	goto	l10375
	xorlw	7^1	; case 7
	skipnz
	goto	l10387
	xorlw	9^7	; case 9
	skipnz
	goto	l10391
	xorlw	10^9	; case 10
	skipnz
	goto	l10393
	goto	l10405
	opt asmopt_on

	line	265
	
l3170:	
	line	266
	
l10405:	
;Beverage_services.c: 266: if(_PRESSED==_MILK_BUTTON || _PRESSED==_HOT_WATER_BUTTON)
	movf	(__PRESSED),w
	xorlw	07h
	skipnz
	goto	u6531
	goto	u6530
u6531:
	goto	l10409
u6530:
	
l10407:	
	movf	(__PRESSED),w
	xorlw	09h
	skipz
	goto	u6541
	goto	u6540
u6541:
	goto	l10415
u6540:
	goto	l10409
	
l3178:	
	line	268
	
l10409:	
;Beverage_services.c: 267: {
;Beverage_services.c: 268: Lcd_Cmd(0x8C);
	movlw	(08Ch)
	fcall	_Lcd_Cmd
	line	269
	
l10411:	
;Beverage_services.c: 269: Num_Disp(password,4,0);
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
	line	270
	
l10413:	
;Beverage_services.c: 270: DelayMs(150);
	movlw	low(096h)
	movwf	(?_DelayMs)
	movlw	high(096h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l10415
	line	271
	
l3176:	
	goto	l10415
	line	272
	
l3165:	
	line	273
	
l10415:	
;Beverage_services.c: 271: }
;Beverage_services.c: 272: }
;Beverage_services.c: 273: if(Enable_Valves)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Valves/8),(_Enable_Valves)&7
	goto	u6551
	goto	u6550
u6551:
	goto	l10465
u6550:
	goto	l10443
	line	275
	
l10417:	
;Beverage_services.c: 274: {
;Beverage_services.c: 275: switch(_PRESSED)
	goto	l10443
	line	277
;Beverage_services.c: 276: {
;Beverage_services.c: 277: case _NORMAL_COFFEE_BUTTON: MENU[Next].COFFEE_DICATION=~MENU[Next].COFFEE_DICATION;
	
l3181:	
	
l10419:	
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	clrc
	bcf	status, 7	;select IRP bank0
	btfss	indf,0
	setc
	btfsc	status,0
	goto	u6561
	goto	u6560
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	
u6561:
	bcf	status, 7	;select IRP bank0
	bsf	indf,0
	goto	u6574
u6560:
	bcf	status, 7	;select IRP bank0
	bcf	indf,0
u6574:
	line	278
;Beverage_services.c: 278: break;
	goto	l10445
	line	279
;Beverage_services.c: 279: case _NORMAL_TEA_BUTTON: MENU[Next].TEA_DICATION=~MENU[Next].TEA_DICATION;
	
l3183:	
	
l10421:	
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
	goto	u6581
	goto	u6580
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	
u6581:
	bcf	status, 7	;select IRP bank0
	bsf	indf,1
	goto	u6594
u6580:
	bcf	status, 7	;select IRP bank0
	bcf	indf,1
u6594:
	line	280
;Beverage_services.c: 280: break;
	goto	l10445
	line	281
;Beverage_services.c: 281: case _LIGHT_COFFEE_BUTTON: MENU[Next].MIXING_HOT_WATER=~MENU[Next].MIXING_HOT_WATER;
	
l3184:	
	
l10423:	
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
	goto	u6601
	goto	u6600
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	
u6601:
	bcf	status, 7	;select IRP bank0
	bsf	indf,2
	goto	u6614
u6600:
	bcf	status, 7	;select IRP bank0
	bcf	indf,2
u6614:
	line	282
;Beverage_services.c: 282: break;
	goto	l10445
	line	283
;Beverage_services.c: 283: case _LIGHT_TEA_BUTTON: MENU[Next].MILK=~MENU[Next].MILK;
	
l3185:	
	
l10425:	
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
	goto	u6621
	goto	u6620
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	
u6621:
	bcf	status, 7	;select IRP bank0
	bsf	indf,3
	goto	u6634
u6620:
	bcf	status, 7	;select IRP bank0
	bcf	indf,3
u6634:
	line	284
;Beverage_services.c: 284: break;
	goto	l10445
	line	285
;Beverage_services.c: 285: case _BLACK_COFFEE_BUTTON: MENU[Next].VIBR_MOTOR=~MENU[Next].VIBR_MOTOR;
	
l3186:	
	
l10427:	
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
	goto	u6641
	goto	u6640
	movf	(_Next),w
	addlw	_MENU&0ffh
	movwf	fsr0
	
u6641:
	bcf	status, 7	;select IRP bank0
	bsf	indf,4
	goto	u6654
u6640:
	bcf	status, 7	;select IRP bank0
	bcf	indf,4
u6654:
	line	286
;Beverage_services.c: 286: break;
	goto	l10445
	line	287
;Beverage_services.c: 287: case _MILK_BUTTON: if(Next>0)
	
l3187:	
	
l10429:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Next),w
	skipz
	goto	u6660
	goto	l10445
u6660:
	line	289
	
l10431:	
;Beverage_services.c: 288: {
;Beverage_services.c: 289: Next--;
	movlw	low(01h)
	subwf	(_Next),f
	goto	l10445
	line	290
	
l3188:	
	line	291
;Beverage_services.c: 290: }
;Beverage_services.c: 291: break;
	goto	l10445
	line	292
;Beverage_services.c: 292: case _HOT_WATER_BUTTON: if(Next<7)
	
l3189:	
	
l10433:	
	movlw	(07h)
	subwf	(_Next),w
	skipnc
	goto	u6671
	goto	u6670
u6671:
	goto	l10445
u6670:
	line	294
	
l10435:	
;Beverage_services.c: 293: {
;Beverage_services.c: 294: Next++;
	movlw	(01h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	addwf	(_Next),f
	goto	l10445
	line	295
	
l3190:	
	line	296
;Beverage_services.c: 295: }
;Beverage_services.c: 296: break;
	goto	l10445
	line	297
;Beverage_services.c: 297: case _MENU_BUTTON: _DISABLE_MODE=_Valves;
	
l3191:	
	
l10437:	
	movlw	(04h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	298
;Beverage_services.c: 298: _ENABLE_MODE=_Selection;
	movlw	(05h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	299
	
l10439:	
;Beverage_services.c: 299: Next=0;
	clrf	(_Next)
	line	300
;Beverage_services.c: 300: break;
	goto	l10445
	line	301
	
l10441:	
;Beverage_services.c: 301: }
	goto	l10445
	line	275
	
l3180:	
	
l10443:	
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
	goto	l10419
	xorlw	2^1	; case 2
	skipnz
	goto	l10421
	xorlw	3^2	; case 3
	skipnz
	goto	l10423
	xorlw	4^3	; case 4
	skipnz
	goto	l10425
	xorlw	5^4	; case 5
	skipnz
	goto	l10427
	xorlw	7^5	; case 7
	skipnz
	goto	l10429
	xorlw	9^7	; case 9
	skipnz
	goto	l10433
	xorlw	10^9	; case 10
	skipnz
	goto	l10437
	goto	l10445
	opt asmopt_on

	line	301
	
l3182:	
	line	302
	
l10445:	
;Beverage_services.c: 302: if(_PRESSED==_MILK_BUTTON || _PRESSED==_HOT_WATER_BUTTON)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	xorlw	07h
	skipnz
	goto	u6681
	goto	u6680
u6681:
	goto	l10449
u6680:
	
l10447:	
	movf	(__PRESSED),w
	xorlw	09h
	skipz
	goto	u6691
	goto	u6690
u6691:
	goto	l10455
u6690:
	goto	l10449
	
l3194:	
	line	304
	
l10449:	
;Beverage_services.c: 303: {
;Beverage_services.c: 304: Lcd_Cmd(0x86);
	movlw	(086h)
	fcall	_Lcd_Cmd
	line	305
	
l10451:	
;Beverage_services.c: 305: myitoa(Next+1,buff);
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
	line	306
	
l10453:	
;Beverage_services.c: 306: Lcd_String(buff,0,0);
	movlw	(_buff&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	(0x0/2)
	movwf	(?_Lcd_String+1)
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	goto	l10455
	line	307
	
l3192:	
	line	308
	
l10455:	
;Beverage_services.c: 307: }
;Beverage_services.c: 308: if(_PRESSED && (_PRESSED!=_MENU_BUTTON))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	skipz
	goto	u6700
	goto	l10465
u6700:
	
l10457:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u6711
	goto	u6710
u6711:
	goto	l10465
u6710:
	line	310
	
l10459:	
;Beverage_services.c: 309: {
;Beverage_services.c: 310: Write_ValveIn_Memory(MENU[Next],Next);
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
	line	311
	
l10461:	
;Beverage_services.c: 311: print_yes_no(Next);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Next),w
	fcall	_print_yes_no
	line	312
	
l10463:	
;Beverage_services.c: 312: DelayMs(50);
	movlw	low(032h)
	movwf	(?_DelayMs)
	movlw	high(032h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l10465
	line	313
	
l3195:	
	goto	l10465
	line	314
	
l3179:	
	line	315
	
l10465:	
;Beverage_services.c: 313: }
;Beverage_services.c: 314: }
;Beverage_services.c: 315: if(Enable_Selection)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Selection/8),(_Enable_Selection)&7
	goto	u6721
	goto	u6720
u6721:
	goto	l10571
u6720:
	goto	l10507
	line	317
	
l10467:	
;Beverage_services.c: 316: {
;Beverage_services.c: 317: switch(_PRESSED)
	goto	l10507
	line	319
;Beverage_services.c: 318: {
;Beverage_services.c: 319: case _NORMAL_COFFEE_BUTTON: if(Selection_Next>0)
	
l3198:	
	
l10469:	
	movf	(_Selection_Next),w
	skipz
	goto	u6730
	goto	l10509
u6730:
	line	321
	
l10471:	
;Beverage_services.c: 320: {
;Beverage_services.c: 321: Selection_Next--;
	movlw	low(01h)
	subwf	(_Selection_Next),f
	line	322
	
l10473:	
;Beverage_services.c: 322: Next=0;
	clrf	(_Next)
	goto	l10509
	line	323
	
l3199:	
	line	324
;Beverage_services.c: 323: }
;Beverage_services.c: 324: break;
	goto	l10509
	line	325
;Beverage_services.c: 325: case _NORMAL_TEA_BUTTON: if(Selection_Next<7)
	
l3201:	
	
l10475:	
	movlw	(07h)
	subwf	(_Selection_Next),w
	skipnc
	goto	u6741
	goto	u6740
u6741:
	goto	l10509
u6740:
	line	327
	
l10477:	
;Beverage_services.c: 326: {
;Beverage_services.c: 327: Selection_Next++;
	movlw	(01h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	addwf	(_Selection_Next),f
	line	328
	
l10479:	
;Beverage_services.c: 328: Next=0;
	clrf	(_Next)
	goto	l10509
	line	329
	
l3202:	
	line	330
;Beverage_services.c: 329: }
;Beverage_services.c: 330: break;
	goto	l10509
	line	331
;Beverage_services.c: 331: case _LIGHT_COFFEE_BUTTON: if(Next>0)
	
l3203:	
	
l10481:	
	movf	(_Next),w
	skipz
	goto	u6750
	goto	l10509
u6750:
	line	333
	
l10483:	
;Beverage_services.c: 332: {
;Beverage_services.c: 333: Next--;
	movlw	low(01h)
	subwf	(_Next),f
	goto	l10509
	line	334
	
l3204:	
	line	335
;Beverage_services.c: 334: }
;Beverage_services.c: 335: break;
	goto	l10509
	line	336
;Beverage_services.c: 336: case _LIGHT_TEA_BUTTON: if(Next<9)
	
l3205:	
	
l10485:	
	movlw	(09h)
	subwf	(_Next),w
	skipnc
	goto	u6761
	goto	u6760
u6761:
	goto	l10509
u6760:
	line	338
	
l10487:	
;Beverage_services.c: 337: {
;Beverage_services.c: 338: Next++;
	movlw	(01h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	addwf	(_Next),f
	goto	l10509
	line	339
	
l3206:	
	line	340
;Beverage_services.c: 339: }
;Beverage_services.c: 340: break;
	goto	l10509
	line	341
;Beverage_services.c: 341: case _BLACK_COFFEE_BUTTON:
	
l3207:	
	line	342
;Beverage_services.c: 342: break;
	goto	l10509
	line	343
;Beverage_services.c: 343: case _BLACK_TEA_BUTTON: _Demo=1;
	
l3208:	
	bsf	(__Demo/8),(__Demo)&7
	line	344
;Beverage_services.c: 344: break;
	goto	l10509
	line	345
;Beverage_services.c: 345: case _MILK_BUTTON: if(time>0)
	
l3209:	
	
l10489:	
	movf	(_time+1),w
	iorwf	(_time),w
	skipnz
	goto	u6771
	goto	u6770
u6771:
	goto	l10509
u6770:
	line	347
	
l10491:	
;Beverage_services.c: 346: {
;Beverage_services.c: 347: time--;
	movlw	low(01h)
	subwf	(_time),f
	movlw	high(01h)
	skipc
	decf	(_time+1),f
	subwf	(_time+1),f
	goto	l10509
	line	348
	
l3210:	
	line	349
;Beverage_services.c: 348: }
;Beverage_services.c: 349: break;
	goto	l10509
	line	350
;Beverage_services.c: 350: case _HOT_WATER_BUTTON: time++;
	
l3211:	
	
l10493:	
	movlw	low(01h)
	addwf	(_time),f
	skipnc
	incf	(_time+1),f
	movlw	high(01h)
	addwf	(_time+1),f
	line	351
;Beverage_services.c: 351: break;
	goto	l10509
	line	352
;Beverage_services.c: 352: case _EXTRA_BUTTON: _DISABLE_MODE=_Selection;
	
l3212:	
	
l10495:	
	movlw	(05h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	353
;Beverage_services.c: 353: _ENABLE_MODE=_Valves;
	movlw	(04h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	354
	
l10497:	
;Beverage_services.c: 354: Selection_Next=0;
	clrf	(_Selection_Next)
	line	355
	
l10499:	
;Beverage_services.c: 355: Next=0;
	clrf	(_Next)
	line	356
;Beverage_services.c: 356: break;
	goto	l10509
	line	357
;Beverage_services.c: 357: case _MENU_BUTTON: _DISABLE_MODE=_Selection;
	
l3213:	
	
l10501:	
	movlw	(05h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	358
;Beverage_services.c: 358: _ENABLE_MODE=_Coffee_Dication_Time;
	movlw	(06h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	359
	
l10503:	
;Beverage_services.c: 359: Selection_Next=0;
	clrf	(_Selection_Next)
	line	360
;Beverage_services.c: 360: break;
	goto	l10509
	line	361
	
l10505:	
;Beverage_services.c: 361: }
	goto	l10509
	line	317
	
l3197:	
	
l10507:	
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
	goto	l10469
	xorlw	2^1	; case 2
	skipnz
	goto	l10475
	xorlw	3^2	; case 3
	skipnz
	goto	l10481
	xorlw	4^3	; case 4
	skipnz
	goto	l10485
	xorlw	5^4	; case 5
	skipnz
	goto	l10509
	xorlw	6^5	; case 6
	skipnz
	goto	l3208
	xorlw	7^6	; case 7
	skipnz
	goto	l10489
	xorlw	8^7	; case 8
	skipnz
	goto	l10495
	xorlw	9^8	; case 9
	skipnz
	goto	l10493
	xorlw	10^9	; case 10
	skipnz
	goto	l10501
	goto	l10509
	opt asmopt_on

	line	361
	
l3200:	
	line	362
	
l10509:	
;Beverage_services.c: 362: if(_PRESSED==_NORMAL_COFFEE_BUTTON || _PRESSED==_NORMAL_TEA_BUTTON || _PRESSED==_LIGHT_COFFEE_BUTTON || _PRESSED==_LIGHT_TEA_BUTTON)
	movf	(__PRESSED),w
	xorlw	01h
	skipnz
	goto	u6781
	goto	u6780
u6781:
	goto	l10517
u6780:
	
l10511:	
	movf	(__PRESSED),w
	xorlw	02h
	skipnz
	goto	u6791
	goto	u6790
u6791:
	goto	l10517
u6790:
	
l10513:	
	movf	(__PRESSED),w
	xorlw	03h
	skipnz
	goto	u6801
	goto	u6800
u6801:
	goto	l10517
u6800:
	
l10515:	
	movf	(__PRESSED),w
	xorlw	04h
	skipz
	goto	u6811
	goto	u6810
u6811:
	goto	l10519
u6810:
	goto	l10517
	
l3216:	
	line	364
	
l10517:	
;Beverage_services.c: 363: {
;Beverage_services.c: 364: time=eeprom_read(((12*(Selection_Next+1))-2)+Next);
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
	goto	l10519
	line	365
	
l3214:	
	line	366
	
l10519:	
;Beverage_services.c: 365: }
;Beverage_services.c: 366: if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
	movf	(__PRESSED),w
	skipz
	goto	u6820
	goto	l10571
u6820:
	
l10521:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u6831
	goto	u6830
u6831:
	goto	l10571
u6830:
	
l10523:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u6841
	goto	u6840
u6841:
	goto	l10571
u6840:
	line	368
	
l10525:	
;Beverage_services.c: 367: {
;Beverage_services.c: 368: SendByteSerially(0x0D);
	movlw	(0Dh)
	fcall	_SendByteSerially
	line	369
	
l10527:	
;Beverage_services.c: 369: myitoa(Selection_Next+1,buff);
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
	line	370
	
l10529:	
;Beverage_services.c: 370: Lcd_String(buff,0,0);
	movlw	(_buff&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	(0x0/2)
	movwf	(?_Lcd_String+1)
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	371
	
l10531:	
;Beverage_services.c: 371: if(!(Next%2))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_Next),(0)&7
	goto	u6851
	goto	u6850
u6851:
	goto	l10559
u6850:
	line	373
	
l10533:	
;Beverage_services.c: 372: {
;Beverage_services.c: 373: Lcd_String("LOAD ",0,1);
	movlw	low(STR_3|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_3|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	bsf	status,0
	rlf	0+(?_Lcd_String)+03h,f
	fcall	_Lcd_String
	line	374
	
l10535:	
;Beverage_services.c: 374: Lcd_Data(asciitable[(Next/2)+1]);
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
	line	375
	
l10537:	
;Beverage_services.c: 375: if(_Demo==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(__Demo/8),(__Demo)&7
	goto	u6861
	goto	u6860
u6861:
	goto	l10563
u6860:
	line	377
	
l10539:	
;Beverage_services.c: 376: {
;Beverage_services.c: 377: if(Next==0)
	movf	(_Next),f
	skipz
	goto	u6871
	goto	u6870
u6871:
	goto	l3220
u6870:
	line	378
	
l10541:	
;Beverage_services.c: 378: _ON=_OFF=_Coffee_Valve;
	movlw	(06h)
	movwf	(__OFF)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	
l3220:	
	line	379
;Beverage_services.c: 379: if(Next==2)
	movf	(_Next),w
	xorlw	02h
	skipz
	goto	u6881
	goto	u6880
u6881:
	goto	l3221
u6880:
	line	380
	
l10543:	
;Beverage_services.c: 380: _ON=_OFF=_Tea_Valve;
	movlw	(08h)
	movwf	(__OFF)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	
l3221:	
	line	381
;Beverage_services.c: 381: if(Next==4)
	movf	(_Next),w
	xorlw	04h
	skipz
	goto	u6891
	goto	u6890
u6891:
	goto	l3222
u6890:
	line	382
	
l10545:	
;Beverage_services.c: 382: _ON=_OFF=_Mixing_Hot_Water_Valve;
	movlw	(03h)
	movwf	(__OFF)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	
l3222:	
	line	383
;Beverage_services.c: 383: if(Next==6)
	movf	(_Next),w
	xorlw	06h
	skipz
	goto	u6901
	goto	u6900
u6901:
	goto	l3223
u6900:
	line	384
	
l10547:	
;Beverage_services.c: 384: _ON=_OFF=_Milk_Valve_Forward;
	movlw	(01h)
	movwf	(__OFF)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	
l3223:	
	line	385
;Beverage_services.c: 385: if(Next==8)
	movf	(_Next),w
	xorlw	08h
	skipz
	goto	u6911
	goto	u6910
u6911:
	goto	l10551
u6910:
	line	386
	
l10549:	
;Beverage_services.c: 386: _ON=_OFF=_Viber_Motor;
	movlw	(09h)
	movwf	(__OFF)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	goto	l10551
	
l3224:	
	line	387
	
l10551:	
;Beverage_services.c: 387: onthevalve();
	fcall	_onthevalve
	line	388
	
l10553:	
;Beverage_services.c: 388: DelayMs(time*100);
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
	line	389
	
l10555:	
;Beverage_services.c: 389: offthevalve();
	fcall	_offthevalve
	line	390
	
l10557:	
;Beverage_services.c: 390: _Demo=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(__Demo/8),(__Demo)&7
	goto	l10563
	line	391
	
l3219:	
	line	392
;Beverage_services.c: 391: }
;Beverage_services.c: 392: }
	goto	l10563
	line	393
	
l3218:	
	line	395
	
l10559:	
;Beverage_services.c: 393: else
;Beverage_services.c: 394: {
;Beverage_services.c: 395: Lcd_String("DELAY",0,1);
	movlw	low(STR_4|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_4|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	bsf	status,0
	rlf	0+(?_Lcd_String)+03h,f
	fcall	_Lcd_String
	line	396
	
l10561:	
;Beverage_services.c: 396: Lcd_Data(asciitable[(Next/2)+1]);
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
	goto	l10563
	line	397
	
l3225:	
	line	398
	
l10563:	
;Beverage_services.c: 397: }
;Beverage_services.c: 398: Lcd_Cmd(0xC9);
	movlw	(0C9h)
	fcall	_Lcd_Cmd
	line	399
	
l10565:	
;Beverage_services.c: 399: Num_Disp(time,2,1);
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
	line	400
	
l10567:	
;Beverage_services.c: 400: Lcd_Cmd(0xCD);
	movlw	(0CDh)
	fcall	_Lcd_Cmd
	line	401
;Beverage_services.c: 401: Lcd_String("SEC",0,0);
	movlw	low(STR_5|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_5|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	402
	
l10569:	
;Beverage_services.c: 402: eeprom_write(((12*(Selection_Next+1))-2)+Next,time);
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
	goto	l10571
	line	403
	
l3217:	
	goto	l10571
	line	405
	
l3196:	
	line	406
	
l10571:	
;Beverage_services.c: 403: }
;Beverage_services.c: 405: }
;Beverage_services.c: 406: if(Enable_Coffee_Dication_Time)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Coffee_Dication_Time/8),(_Enable_Coffee_Dication_Time)&7
	goto	u6921
	goto	u6920
u6921:
	goto	l10609
u6920:
	goto	l10595
	line	408
	
l10573:	
;Beverage_services.c: 407: {
;Beverage_services.c: 408: switch(_PRESSED)
	goto	l10595
	line	410
;Beverage_services.c: 409: {
;Beverage_services.c: 410: case _MILK_BUTTON: if(time>0)
	
l3228:	
	
l10575:	
	movf	(_time+1),w
	iorwf	(_time),w
	skipnz
	goto	u6931
	goto	u6930
u6931:
	goto	l10597
u6930:
	line	412
	
l10577:	
;Beverage_services.c: 411: {
;Beverage_services.c: 412: time--;
	movlw	low(01h)
	subwf	(_time),f
	movlw	high(01h)
	skipc
	decf	(_time+1),f
	subwf	(_time+1),f
	goto	l10597
	line	413
	
l3229:	
	line	414
;Beverage_services.c: 413: }
;Beverage_services.c: 414: break;
	goto	l10597
	line	415
;Beverage_services.c: 415: case _HOT_WATER_BUTTON: time++;
	
l3231:	
	
l10579:	
	movlw	low(01h)
	addwf	(_time),f
	skipnc
	incf	(_time+1),f
	movlw	high(01h)
	addwf	(_time+1),f
	line	416
;Beverage_services.c: 416: break;
	goto	l10597
	line	417
;Beverage_services.c: 417: case _EXTRA_BUTTON: eeprom_write(118,time);
	
l3232:	
	
l10581:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(076h)
	fcall	_eeprom_write
	line	418
	
l10583:	
;Beverage_services.c: 418: _DISABLE_MODE=_Coffee_Dication_Time;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	419
	
l10585:	
;Beverage_services.c: 419: _ENABLE_MODE=_Selection;
	movlw	(05h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	420
;Beverage_services.c: 420: break;
	goto	l10597
	line	421
;Beverage_services.c: 421: case _MENU_BUTTON: eeprom_write(118,time);
	
l3233:	
	
l10587:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(076h)
	fcall	_eeprom_write
	line	422
	
l10589:	
;Beverage_services.c: 422: _DISABLE_MODE=_Coffee_Dication_Time;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	423
	
l10591:	
;Beverage_services.c: 423: _ENABLE_MODE=_Tea_Dication_Time;
	movlw	(07h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	424
;Beverage_services.c: 424: break;
	goto	l10597
	line	425
	
l10593:	
;Beverage_services.c: 425: }
	goto	l10597
	line	408
	
l3227:	
	
l10595:	
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
	goto	l10575
	xorlw	8^7	; case 8
	skipnz
	goto	l10581
	xorlw	9^8	; case 9
	skipnz
	goto	l10579
	xorlw	10^9	; case 10
	skipnz
	goto	l10587
	goto	l10597
	opt asmopt_on

	line	425
	
l3230:	
	line	426
	
l10597:	
;Beverage_services.c: 426: if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
	movf	(__PRESSED),w
	skipz
	goto	u6940
	goto	l10607
u6940:
	
l10599:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u6951
	goto	u6950
u6951:
	goto	l10607
u6950:
	
l10601:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u6961
	goto	u6960
u6961:
	goto	l10607
u6960:
	line	428
	
l10603:	
;Beverage_services.c: 427: {
;Beverage_services.c: 428: Lcd_Cmd(0xC8);
	movlw	(0C8h)
	fcall	_Lcd_Cmd
	line	429
	
l10605:	
;Beverage_services.c: 429: Num_Disp(time,3,0);
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
	goto	l10607
	line	430
	
l3234:	
	line	431
	
l10607:	
;Beverage_services.c: 430: }
;Beverage_services.c: 431: DelayMs(20);
	movlw	low(014h)
	movwf	(?_DelayMs)
	movlw	high(014h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l10609
	line	432
	
l3226:	
	line	433
	
l10609:	
;Beverage_services.c: 432: }
;Beverage_services.c: 433: if(Enable_Tea_Dication_Time)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Tea_Dication_Time/8),(_Enable_Tea_Dication_Time)&7
	goto	u6971
	goto	u6970
u6971:
	goto	l10647
u6970:
	goto	l10633
	line	435
	
l10611:	
;Beverage_services.c: 434: {
;Beverage_services.c: 435: switch(_PRESSED)
	goto	l10633
	line	437
;Beverage_services.c: 436: {
;Beverage_services.c: 437: case _MILK_BUTTON: if(time>0)
	
l3237:	
	
l10613:	
	movf	(_time+1),w
	iorwf	(_time),w
	skipnz
	goto	u6981
	goto	u6980
u6981:
	goto	l10635
u6980:
	line	439
	
l10615:	
;Beverage_services.c: 438: {
;Beverage_services.c: 439: time--;
	movlw	low(01h)
	subwf	(_time),f
	movlw	high(01h)
	skipc
	decf	(_time+1),f
	subwf	(_time+1),f
	goto	l10635
	line	440
	
l3238:	
	line	441
;Beverage_services.c: 440: }
;Beverage_services.c: 441: break;
	goto	l10635
	line	442
;Beverage_services.c: 442: case _HOT_WATER_BUTTON: time++;
	
l3240:	
	
l10617:	
	movlw	low(01h)
	addwf	(_time),f
	skipnc
	incf	(_time+1),f
	movlw	high(01h)
	addwf	(_time+1),f
	line	443
;Beverage_services.c: 443: break;
	goto	l10635
	line	444
;Beverage_services.c: 444: case _EXTRA_BUTTON: eeprom_write(119,time);
	
l3241:	
	
l10619:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(077h)
	fcall	_eeprom_write
	line	445
	
l10621:	
;Beverage_services.c: 445: _DISABLE_MODE=_Tea_Dication_Time;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	446
	
l10623:	
;Beverage_services.c: 446: _ENABLE_MODE=_Coffee_Dication_Time;
	movlw	(06h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	447
;Beverage_services.c: 447: break;
	goto	l10635
	line	448
;Beverage_services.c: 448: case _MENU_BUTTON: eeprom_write(119,time);
	
l3242:	
	
l10625:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(077h)
	fcall	_eeprom_write
	line	449
	
l10627:	
;Beverage_services.c: 449: _DISABLE_MODE=_Tea_Dication_Time;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	450
	
l10629:	
;Beverage_services.c: 450: _ENABLE_MODE=_Dication_Delay;
	movlw	(08h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	451
;Beverage_services.c: 451: break;
	goto	l10635
	line	452
	
l10631:	
;Beverage_services.c: 452: }
	goto	l10635
	line	435
	
l3236:	
	
l10633:	
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
	goto	l10613
	xorlw	8^7	; case 8
	skipnz
	goto	l10619
	xorlw	9^8	; case 9
	skipnz
	goto	l10617
	xorlw	10^9	; case 10
	skipnz
	goto	l10625
	goto	l10635
	opt asmopt_on

	line	452
	
l3239:	
	line	453
	
l10635:	
;Beverage_services.c: 453: if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
	movf	(__PRESSED),w
	skipz
	goto	u6990
	goto	l10645
u6990:
	
l10637:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u7001
	goto	u7000
u7001:
	goto	l10645
u7000:
	
l10639:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u7011
	goto	u7010
u7011:
	goto	l10645
u7010:
	line	455
	
l10641:	
;Beverage_services.c: 454: {
;Beverage_services.c: 455: Lcd_Cmd(0xC8);
	movlw	(0C8h)
	fcall	_Lcd_Cmd
	line	456
	
l10643:	
;Beverage_services.c: 456: Num_Disp(time,3,0);
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
	goto	l10645
	line	457
	
l3243:	
	line	458
	
l10645:	
;Beverage_services.c: 457: }
;Beverage_services.c: 458: DelayMs(20);
	movlw	low(014h)
	movwf	(?_DelayMs)
	movlw	high(014h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l10647
	line	459
	
l3235:	
	line	460
	
l10647:	
;Beverage_services.c: 459: }
;Beverage_services.c: 460: if(Enable_Dication_Delay)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Dication_Delay/8),(_Enable_Dication_Delay)&7
	goto	u7021
	goto	u7020
u7021:
	goto	l10685
u7020:
	goto	l10671
	line	462
	
l10649:	
;Beverage_services.c: 461: {
;Beverage_services.c: 462: switch(_PRESSED)
	goto	l10671
	line	464
;Beverage_services.c: 463: {
;Beverage_services.c: 464: case _MILK_BUTTON: if(time>0)
	
l3246:	
	
l10651:	
	movf	(_time+1),w
	iorwf	(_time),w
	skipnz
	goto	u7031
	goto	u7030
u7031:
	goto	l10673
u7030:
	line	466
	
l10653:	
;Beverage_services.c: 465: {
;Beverage_services.c: 466: time--;
	movlw	low(01h)
	subwf	(_time),f
	movlw	high(01h)
	skipc
	decf	(_time+1),f
	subwf	(_time+1),f
	goto	l10673
	line	467
	
l3247:	
	line	468
;Beverage_services.c: 467: }
;Beverage_services.c: 468: break;
	goto	l10673
	line	469
;Beverage_services.c: 469: case _HOT_WATER_BUTTON: time++;
	
l3249:	
	
l10655:	
	movlw	low(01h)
	addwf	(_time),f
	skipnc
	incf	(_time+1),f
	movlw	high(01h)
	addwf	(_time+1),f
	line	470
;Beverage_services.c: 470: break;
	goto	l10673
	line	471
;Beverage_services.c: 471: case _EXTRA_BUTTON: eeprom_write(121,time);
	
l3250:	
	
l10657:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(079h)
	fcall	_eeprom_write
	line	472
	
l10659:	
;Beverage_services.c: 472: _DISABLE_MODE=_Dication_Delay;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	473
	
l10661:	
;Beverage_services.c: 473: _ENABLE_MODE=_Tea_Dication_Time;
	movlw	(07h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	474
;Beverage_services.c: 474: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	475
;Beverage_services.c: 475: break;
	goto	l10673
	line	476
;Beverage_services.c: 476: case _MENU_BUTTON: eeprom_write(121,time);
	
l3251:	
	
l10663:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(079h)
	fcall	_eeprom_write
	line	477
	
l10665:	
;Beverage_services.c: 477: _DISABLE_MODE=_Dication_Delay;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	478
	
l10667:	
;Beverage_services.c: 478: _ENABLE_MODE=_Hot_Water_Time;
	movlw	(09h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	479
;Beverage_services.c: 479: break;
	goto	l10673
	line	480
	
l10669:	
;Beverage_services.c: 480: }
	goto	l10673
	line	462
	
l3245:	
	
l10671:	
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
	goto	l10651
	xorlw	8^7	; case 8
	skipnz
	goto	l10657
	xorlw	9^8	; case 9
	skipnz
	goto	l10655
	xorlw	10^9	; case 10
	skipnz
	goto	l10663
	goto	l10673
	opt asmopt_on

	line	480
	
l3248:	
	line	481
	
l10673:	
;Beverage_services.c: 481: if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	skipz
	goto	u7040
	goto	l10683
u7040:
	
l10675:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u7051
	goto	u7050
u7051:
	goto	l10683
u7050:
	
l10677:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u7061
	goto	u7060
u7061:
	goto	l10683
u7060:
	line	483
	
l10679:	
;Beverage_services.c: 482: {
;Beverage_services.c: 483: Lcd_Cmd(0xC8);
	movlw	(0C8h)
	fcall	_Lcd_Cmd
	line	484
	
l10681:	
;Beverage_services.c: 484: Num_Disp(time,3,0);
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
	goto	l10683
	line	485
	
l3252:	
	line	486
	
l10683:	
;Beverage_services.c: 485: }
;Beverage_services.c: 486: DelayMs(10);
	movlw	low(0Ah)
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l10685
	line	487
	
l3244:	
	line	488
	
l10685:	
;Beverage_services.c: 487: }
;Beverage_services.c: 488: if(Enable_Hot_Water_Time)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Hot_Water_Time/8),(_Enable_Hot_Water_Time)&7
	goto	u7071
	goto	u7070
u7071:
	goto	l10723
u7070:
	goto	l10709
	line	490
	
l10687:	
;Beverage_services.c: 489: {
;Beverage_services.c: 490: switch(_PRESSED)
	goto	l10709
	line	492
;Beverage_services.c: 491: {
;Beverage_services.c: 492: case _MILK_BUTTON: if(time>0)
	
l3255:	
	
l10689:	
	movf	(_time+1),w
	iorwf	(_time),w
	skipnz
	goto	u7081
	goto	u7080
u7081:
	goto	l10711
u7080:
	line	494
	
l10691:	
;Beverage_services.c: 493: {
;Beverage_services.c: 494: time--;
	movlw	low(01h)
	subwf	(_time),f
	movlw	high(01h)
	skipc
	decf	(_time+1),f
	subwf	(_time+1),f
	goto	l10711
	line	495
	
l3256:	
	line	496
;Beverage_services.c: 495: }
;Beverage_services.c: 496: break;
	goto	l10711
	line	497
;Beverage_services.c: 497: case _HOT_WATER_BUTTON: time++;
	
l3258:	
	
l10693:	
	movlw	low(01h)
	addwf	(_time),f
	skipnc
	incf	(_time+1),f
	movlw	high(01h)
	addwf	(_time+1),f
	line	498
;Beverage_services.c: 498: break;
	goto	l10711
	line	499
;Beverage_services.c: 499: case _EXTRA_BUTTON: eeprom_write(147,time);
	
l3259:	
	
l10695:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(093h)
	fcall	_eeprom_write
	line	500
	
l10697:	
;Beverage_services.c: 500: _DISABLE_MODE=_Hot_Water_Time;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	501
	
l10699:	
;Beverage_services.c: 501: _ENABLE_MODE=_Dication_Delay;
	movlw	(08h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	502
;Beverage_services.c: 502: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	503
;Beverage_services.c: 503: break;
	goto	l10711
	line	504
;Beverage_services.c: 504: case _MENU_BUTTON: eeprom_write(147,time);
	
l3260:	
	
l10701:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(093h)
	fcall	_eeprom_write
	line	505
	
l10703:	
;Beverage_services.c: 505: _DISABLE_MODE=_Hot_Water_Time;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	506
	
l10705:	
;Beverage_services.c: 506: _ENABLE_MODE=_Temperature;
	movlw	(0Bh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	507
;Beverage_services.c: 507: break;
	goto	l10711
	line	508
	
l10707:	
;Beverage_services.c: 508: }
	goto	l10711
	line	490
	
l3254:	
	
l10709:	
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
	goto	l10689
	xorlw	8^7	; case 8
	skipnz
	goto	l10695
	xorlw	9^8	; case 9
	skipnz
	goto	l10693
	xorlw	10^9	; case 10
	skipnz
	goto	l10701
	goto	l10711
	opt asmopt_on

	line	508
	
l3257:	
	line	509
	
l10711:	
;Beverage_services.c: 509: if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	skipz
	goto	u7090
	goto	l10721
u7090:
	
l10713:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u7101
	goto	u7100
u7101:
	goto	l10721
u7100:
	
l10715:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u7111
	goto	u7110
u7111:
	goto	l10721
u7110:
	line	511
	
l10717:	
;Beverage_services.c: 510: {
;Beverage_services.c: 511: Lcd_Cmd(0xC8);
	movlw	(0C8h)
	fcall	_Lcd_Cmd
	line	512
	
l10719:	
;Beverage_services.c: 512: Num_Disp(time,3,0);
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
	goto	l10721
	line	513
	
l3261:	
	line	514
	
l10721:	
;Beverage_services.c: 513: }
;Beverage_services.c: 514: DelayMs(10);
	movlw	low(0Ah)
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l10723
	line	515
	
l3253:	
	line	516
	
l10723:	
;Beverage_services.c: 515: }
;Beverage_services.c: 516: if(Enable_Temperature)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Temperature/8),(_Enable_Temperature)&7
	goto	u7121
	goto	u7120
u7121:
	goto	l10761
u7120:
	goto	l10747
	line	518
	
l10725:	
;Beverage_services.c: 517: {
;Beverage_services.c: 518: switch(_PRESSED)
	goto	l10747
	line	520
;Beverage_services.c: 519: {
;Beverage_services.c: 520: case _MILK_BUTTON: if(time>20)
	
l3264:	
	
l10727:	
	movlw	high(015h)
	subwf	(_time+1),w
	movlw	low(015h)
	skipnz
	subwf	(_time),w
	skipc
	goto	u7131
	goto	u7130
u7131:
	goto	l10749
u7130:
	line	522
	
l10729:	
;Beverage_services.c: 521: {
;Beverage_services.c: 522: time--;
	movlw	low(01h)
	subwf	(_time),f
	movlw	high(01h)
	skipc
	decf	(_time+1),f
	subwf	(_time+1),f
	goto	l10749
	line	523
	
l3265:	
	line	524
;Beverage_services.c: 523: }
;Beverage_services.c: 524: break;
	goto	l10749
	line	525
;Beverage_services.c: 525: case _HOT_WATER_BUTTON: time++;
	
l3267:	
	
l10731:	
	movlw	low(01h)
	addwf	(_time),f
	skipnc
	incf	(_time+1),f
	movlw	high(01h)
	addwf	(_time+1),f
	line	526
;Beverage_services.c: 526: break;
	goto	l10749
	line	527
;Beverage_services.c: 527: case _EXTRA_BUTTON: eeprom_write(120,time);
	
l3268:	
	
l10733:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(078h)
	fcall	_eeprom_write
	line	528
	
l10735:	
;Beverage_services.c: 528: _DISABLE_MODE=_Temperature;
	movlw	(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	529
	
l10737:	
;Beverage_services.c: 529: _ENABLE_MODE=_Hot_Water_Time;
	movlw	(09h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	530
;Beverage_services.c: 530: break;
	goto	l10749
	line	531
;Beverage_services.c: 531: case _MENU_BUTTON: eeprom_write(120,time);
	
l3269:	
	
l10739:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(078h)
	fcall	_eeprom_write
	line	532
	
l10741:	
;Beverage_services.c: 532: _DISABLE_MODE=_Temperature;
	movlw	(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	533
	
l10743:	
;Beverage_services.c: 533: _ENABLE_MODE=_Cup_Count;
	movlw	(0Ch)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	534
;Beverage_services.c: 534: break;
	goto	l10749
	line	535
	
l10745:	
;Beverage_services.c: 535: }
	goto	l10749
	line	518
	
l3263:	
	
l10747:	
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
	goto	l10727
	xorlw	8^7	; case 8
	skipnz
	goto	l10733
	xorlw	9^8	; case 9
	skipnz
	goto	l10731
	xorlw	10^9	; case 10
	skipnz
	goto	l10739
	goto	l10749
	opt asmopt_on

	line	535
	
l3266:	
	line	536
	
l10749:	
;Beverage_services.c: 536: if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
	movf	(__PRESSED),w
	skipz
	goto	u7140
	goto	l10759
u7140:
	
l10751:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u7151
	goto	u7150
u7151:
	goto	l10759
u7150:
	
l10753:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u7161
	goto	u7160
u7161:
	goto	l10759
u7160:
	line	538
	
l10755:	
;Beverage_services.c: 537: {
;Beverage_services.c: 538: Lcd_Cmd(0xC8);
	movlw	(0C8h)
	fcall	_Lcd_Cmd
	line	539
	
l10757:	
;Beverage_services.c: 539: Num_Disp(time,3,0);
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
	goto	l10759
	line	540
	
l3270:	
	line	541
	
l10759:	
;Beverage_services.c: 540: }
;Beverage_services.c: 541: DelayMs(10);
	movlw	low(0Ah)
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l10761
	line	542
	
l3262:	
	line	543
	
l10761:	
;Beverage_services.c: 542: }
;Beverage_services.c: 543: if(Enable_Cup_Count)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Cup_Count/8),(_Enable_Cup_Count)&7
	goto	u7171
	goto	u7170
u7171:
	goto	l10775
u7170:
	goto	l10771
	line	545
	
l10763:	
;Beverage_services.c: 544: {
;Beverage_services.c: 545: switch(_PRESSED)
	goto	l10771
	line	547
;Beverage_services.c: 546: {
;Beverage_services.c: 547: case _EXTRA_BUTTON: _DISABLE_MODE=_Cup_Count;
	
l3273:	
	
l10765:	
	movlw	(0Ch)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	548
;Beverage_services.c: 548: _ENABLE_MODE=_Temperature;
	movlw	(0Bh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	549
;Beverage_services.c: 549: break;
	goto	l10773
	line	550
;Beverage_services.c: 550: case _MENU_BUTTON: _DISABLE_MODE=_Cup_Count;
	
l3275:	
	
l10767:	
	movlw	(0Ch)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	551
;Beverage_services.c: 551: _ENABLE_MODE=_Count_Reset;
	movlw	(0Dh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	552
;Beverage_services.c: 552: break;
	goto	l10773
	line	553
	
l10769:	
;Beverage_services.c: 553: }
	goto	l10773
	line	545
	
l3272:	
	
l10771:	
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
	goto	l10765
	xorlw	10^8	; case 10
	skipnz
	goto	l10767
	goto	l10773
	opt asmopt_on

	line	553
	
l3274:	
	line	554
	
l10773:	
;Beverage_services.c: 554: DelayMs(10);
	movlw	low(0Ah)
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l10775
	line	555
	
l3271:	
	line	556
	
l10775:	
;Beverage_services.c: 555: }
;Beverage_services.c: 556: if(Enable_Count_Reset)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Count_Reset/8),(_Enable_Count_Reset)&7
	goto	u7181
	goto	u7180
u7181:
	goto	l10829
u7180:
	goto	l10805
	line	558
	
l10777:	
;Beverage_services.c: 557: {
;Beverage_services.c: 558: switch(_PRESSED)
	goto	l10805
	line	560
;Beverage_services.c: 559: {
;Beverage_services.c: 560: case _EXTRA_BUTTON: eeprom_write(124,time);
	
l3278:	
	
l10779:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(07Ch)
	fcall	_eeprom_write
	line	561
	
l10781:	
;Beverage_services.c: 561: _DISABLE_MODE=_Count_Reset;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	562
	
l10783:	
;Beverage_services.c: 562: _ENABLE_MODE=_Cup_Count;
	movlw	(0Ch)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ENABLE_MODE)
	line	564
;Beverage_services.c: 564: break;
	goto	l10807
	line	565
;Beverage_services.c: 565: case _MENU_BUTTON: eeprom_write(124,time);
	
l3280:	
	
l10785:	
	movf	(_time),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(07Ch)
	fcall	_eeprom_write
	line	566
	
l10787:	
;Beverage_services.c: 566: if(time)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_time+1),w
	iorwf	(_time),w
	skipnz
	goto	u7191
	goto	u7190
u7191:
	goto	l10799
u7190:
	line	568
	
l10789:	
;Beverage_services.c: 567: {
;Beverage_services.c: 568: for(unsigned char index=126;index<=143;index++)
	movlw	(07Eh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(enable_valves@index)
	movlw	(090h)
	subwf	(enable_valves@index),w
	skipc
	goto	u7201
	goto	u7200
u7201:
	goto	l10793
u7200:
	goto	l10799
	
l10791:	
	goto	l10799
	line	569
	
l3282:	
	line	570
	
l10793:	
;Beverage_services.c: 569: {
;Beverage_services.c: 570: eeprom_write(index,0x00);
	clrf	(?_eeprom_write)
	movf	(enable_valves@index),w
	fcall	_eeprom_write
	line	568
	
l10795:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	addwf	(enable_valves@index),f
	
l10797:	
	movlw	(090h)
	subwf	(enable_valves@index),w
	skipc
	goto	u7211
	goto	u7210
u7211:
	goto	l10793
u7210:
	goto	l10799
	
l3283:	
	goto	l10799
	line	572
	
l3281:	
	line	573
	
l10799:	
;Beverage_services.c: 571: }
;Beverage_services.c: 572: }
;Beverage_services.c: 573: _DISABLE_MODE=_Count_Reset;
	movlw	(0Dh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	574
	
l10801:	
;Beverage_services.c: 574: _ENABLE_MODE=_Normal_Mode;
	clrf	(__ENABLE_MODE)
	bsf	status,0
	rlf	(__ENABLE_MODE),f
	line	575
;Beverage_services.c: 575: break;
	goto	l10807
	line	576
	
l10803:	
;Beverage_services.c: 576: }
	goto	l10807
	line	558
	
l3277:	
	
l10805:	
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
	goto	l10779
	xorlw	10^8	; case 10
	skipnz
	goto	l10785
	goto	l10807
	opt asmopt_on

	line	576
	
l3279:	
	line	577
	
l10807:	
;Beverage_services.c: 577: if(_PRESSED && (_PRESSED!=_MENU_BUTTON) && (_PRESSED!=_EXTRA_BUTTON))
	movf	(__PRESSED),w
	skipz
	goto	u7220
	goto	l10827
u7220:
	
l10809:	
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u7231
	goto	u7230
u7231:
	goto	l10827
u7230:
	
l10811:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u7241
	goto	u7240
u7241:
	goto	l10827
u7240:
	line	579
	
l10813:	
;Beverage_services.c: 578: {
;Beverage_services.c: 579: Lcd_Cmd(0xC6);
	movlw	(0C6h)
	fcall	_Lcd_Cmd
	line	580
	
l10815:	
;Beverage_services.c: 580: if(_PRESSED==_HOT_WATER_BUTTON)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	xorlw	09h
	skipz
	goto	u7251
	goto	u7250
u7251:
	goto	l10821
u7250:
	line	582
	
l10817:	
;Beverage_services.c: 581: {
;Beverage_services.c: 582: Lcd_Data('Y');;
	movlw	(059h)
	fcall	_Lcd_Data
	line	583
	
l10819:	
;Beverage_services.c: 583: time=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_time)
	movlw	high(01h)
	movwf	((_time))+1
	goto	l10821
	line	584
	
l3285:	
	line	585
	
l10821:	
;Beverage_services.c: 584: }
;Beverage_services.c: 585: if(_PRESSED==_MILK_BUTTON)
	movf	(__PRESSED),w
	xorlw	07h
	skipz
	goto	u7261
	goto	u7260
u7261:
	goto	l10827
u7260:
	line	587
	
l10823:	
;Beverage_services.c: 586: {
;Beverage_services.c: 587: Lcd_Data('N');;
	movlw	(04Eh)
	fcall	_Lcd_Data
	line	588
	
l10825:	
;Beverage_services.c: 588: time=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_time)
	clrf	(_time+1)
	goto	l10827
	line	589
	
l3286:	
	goto	l10827
	line	590
	
l3284:	
	line	591
	
l10827:	
;Beverage_services.c: 589: }
;Beverage_services.c: 590: }
;Beverage_services.c: 591: DelayMs(10);
	movlw	low(0Ah)
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l10829
	line	592
	
l3276:	
	line	593
	
l10829:	
;Beverage_services.c: 592: }
;Beverage_services.c: 593: if(Enable_Shortcut_Mode)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Shortcut_Mode/8),(_Enable_Shortcut_Mode)&7
	goto	u7271
	goto	u7270
u7271:
	goto	l10995
u7270:
	goto	l10947
	line	595
	
l10831:	
;Beverage_services.c: 594: {
;Beverage_services.c: 595: switch(_PRESSED)
	goto	l10947
	line	597
;Beverage_services.c: 596: {
;Beverage_services.c: 597: case _NORMAL_COFFEE_BUTTON: if(_PROCESS==_Preparation)
	
l3289:	
	
l10833:	
	movf	(__PROCESS),w
	xorlw	02h
	skipz
	goto	u7281
	goto	u7280
u7281:
	goto	l10841
u7280:
	line	599
	
l10835:	
;Beverage_services.c: 598: {
;Beverage_services.c: 599: eeprom_write(145,5);
	movlw	(05h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(091h)
	fcall	_eeprom_write
	line	600
	
l10837:	
;Beverage_services.c: 600: Enable_Coffee_Hot_Water_Valve = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_Enable_Coffee_Hot_Water_Valve/8),(_Enable_Coffee_Hot_Water_Valve)&7
	line	601
	
l10839:	
;Beverage_services.c: 601: Lcd_String("PREPARING COFFEE",1,0);
	movlw	low(STR_6|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_6|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	goto	l10841
	line	602
	
l3290:	
	line	603
	
l10841:	
;Beverage_services.c: 602: }
;Beverage_services.c: 603: if(_PROCESS==_Cleaning)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PROCESS),w
	xorlw	03h
	skipz
	goto	u7291
	goto	u7290
u7291:
	goto	l10861
u7290:
	line	605
	
l10843:	
;Beverage_services.c: 604: {
;Beverage_services.c: 605: Lcd_String("COFFEE CLEANING",1,0);
	movlw	low(STR_7|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_7|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	606
	
l10845:	
;Beverage_services.c: 606: _ON=_Coffee_Valve;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	line	607
	
l10847:	
;Beverage_services.c: 607: onthevalve();
	fcall	_onthevalve
	line	608
;Beverage_services.c: 608: while(RB6!=0)
	goto	l10859
	
l3293:	
	line	610
	
l10849:	
;Beverage_services.c: 609: {
;Beverage_services.c: 610: _ON=_Coffee_Valve;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	line	611
	
l10851:	
;Beverage_services.c: 611: onthevalve();
	fcall	_onthevalve
	line	612
	
l10853:	
;Beverage_services.c: 612: DelayMs(750);
	movlw	low(02EEh)
	movwf	(?_DelayMs)
	movlw	high(02EEh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	613
	
l10855:	
;Beverage_services.c: 613: _OFF=_Coffee_Valve;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__OFF)
	line	614
	
l10857:	
;Beverage_services.c: 614: offthevalve();
	fcall	_offthevalve
	line	615
;Beverage_services.c: 615: DelayMs(250);
	movlw	low(0FAh)
	movwf	(?_DelayMs)
	movlw	high(0FAh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l10859
	line	616
	
l3292:	
	line	608
	
l10859:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(54/8),(54)&7
	goto	u7301
	goto	u7300
u7301:
	goto	l10849
u7300:
	goto	l10861
	
l3294:	
	goto	l10861
	line	617
	
l3291:	
	line	618
	
l10861:	
;Beverage_services.c: 616: }
;Beverage_services.c: 617: }
;Beverage_services.c: 618: mem_index1=128; mem_index2=129;
	movlw	(080h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	movlw	(081h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	619
;Beverage_services.c: 619: break;
	goto	l10949
	line	620
;Beverage_services.c: 620: case _NORMAL_TEA_BUTTON: if(_PROCESS==_Preparation)
	
l3296:	
	
l10863:	
	movf	(__PROCESS),w
	xorlw	02h
	skipz
	goto	u7311
	goto	u7310
u7311:
	goto	l10871
u7310:
	line	622
	
l10865:	
;Beverage_services.c: 621: {
;Beverage_services.c: 622: eeprom_write(146,5);
	movlw	(05h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(092h)
	fcall	_eeprom_write
	line	623
	
l10867:	
;Beverage_services.c: 623: Enable_Tea_Hot_Water_Valve = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_Enable_Tea_Hot_Water_Valve/8),(_Enable_Tea_Hot_Water_Valve)&7
	line	624
	
l10869:	
;Beverage_services.c: 624: Lcd_String(" PREPARING TEA",1,0);
	movlw	low(STR_8|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_8|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	goto	l10871
	line	625
	
l3297:	
	line	626
	
l10871:	
;Beverage_services.c: 625: }
;Beverage_services.c: 626: if(_PROCESS==_Cleaning)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PROCESS),w
	xorlw	03h
	skipz
	goto	u7321
	goto	u7320
u7321:
	goto	l10891
u7320:
	line	628
	
l10873:	
;Beverage_services.c: 627: {
;Beverage_services.c: 628: Lcd_String("TEA CLEANING",1,0);
	movlw	low(STR_9|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_9|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	629
	
l10875:	
;Beverage_services.c: 629: _ON=_Tea_Valve;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	line	630
	
l10877:	
;Beverage_services.c: 630: onthevalve();
	fcall	_onthevalve
	line	631
;Beverage_services.c: 631: while(RB7!=0)
	goto	l10889
	
l3300:	
	line	633
	
l10879:	
;Beverage_services.c: 632: {
;Beverage_services.c: 633: _ON=_Tea_Valve;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	line	634
	
l10881:	
;Beverage_services.c: 634: onthevalve();
	fcall	_onthevalve
	line	635
	
l10883:	
;Beverage_services.c: 635: DelayMs(750);
	movlw	low(02EEh)
	movwf	(?_DelayMs)
	movlw	high(02EEh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	636
	
l10885:	
;Beverage_services.c: 636: _OFF=_Tea_Valve;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__OFF)
	line	637
	
l10887:	
;Beverage_services.c: 637: offthevalve();
	fcall	_offthevalve
	line	638
;Beverage_services.c: 638: DelayMs(250);
	movlw	low(0FAh)
	movwf	(?_DelayMs)
	movlw	high(0FAh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l10889
	line	639
	
l3299:	
	line	631
	
l10889:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(55/8),(55)&7
	goto	u7331
	goto	u7330
u7331:
	goto	l10879
u7330:
	goto	l10891
	
l3301:	
	goto	l10891
	line	640
	
l3298:	
	line	641
	
l10891:	
;Beverage_services.c: 639: }
;Beverage_services.c: 640: }
;Beverage_services.c: 641: mem_index1=130; mem_index2=131;
	movlw	(082h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	movlw	(083h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	642
;Beverage_services.c: 642: break;
	goto	l10949
	line	643
;Beverage_services.c: 643: case _LIGHT_COFFEE_BUTTON: mem_index1=132; mem_index2=133;
	
l3302:	
	
l10893:	
	movlw	(084h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	movlw	(085h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	644
;Beverage_services.c: 644: break;
	goto	l10949
	line	645
;Beverage_services.c: 645: case _LIGHT_TEA_BUTTON: mem_index1=134; mem_index2=135;
	
l3303:	
	
l10895:	
	movlw	(086h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	movlw	(087h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	646
;Beverage_services.c: 646: break;
	goto	l10949
	line	647
;Beverage_services.c: 647: case _BLACK_COFFEE_BUTTON: mem_index1=136; mem_index2=137;
	
l3304:	
	
l10897:	
	movlw	(088h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	movlw	(089h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	648
;Beverage_services.c: 648: break;
	goto	l10949
	line	649
;Beverage_services.c: 649: case _BLACK_TEA_BUTTON: mem_index1=138; mem_index2=139;
	
l3305:	
	
l10899:	
	movlw	(08Ah)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	movlw	(08Bh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	650
;Beverage_services.c: 650: break;
	goto	l10949
	line	651
;Beverage_services.c: 651: case _MILK_BUTTON: if(_PROCESS==_Cleaning)
	
l3306:	
	
l10901:	
	movf	(__PROCESS),w
	xorlw	03h
	skipz
	goto	u7341
	goto	u7340
u7341:
	goto	l10925
u7340:
	line	653
	
l10903:	
;Beverage_services.c: 652: {
;Beverage_services.c: 653: Lcd_String("MILK CLEANING",1,0);
	movlw	low(STR_10|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_10|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	654
	
l10905:	
;Beverage_services.c: 654: _ON=_Viber_Motor;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__ON)
	line	655
	
l10907:	
;Beverage_services.c: 655: onthevalve();
	fcall	_onthevalve
	line	656
;Beverage_services.c: 656: while(RB0!=0)
	goto	l10919
	
l3309:	
	line	658
	
l10909:	
;Beverage_services.c: 657: {
;Beverage_services.c: 658: _ON=_Milk_Valve_Forward;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(__ON)
	bsf	status,0
	rlf	(__ON),f
	line	659
	
l10911:	
;Beverage_services.c: 659: onthevalve();
	fcall	_onthevalve
	line	660
	
l10913:	
;Beverage_services.c: 660: DelayMs(750);
	movlw	low(02EEh)
	movwf	(?_DelayMs)
	movlw	high(02EEh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	661
	
l10915:	
;Beverage_services.c: 661: _OFF=_Milk_Valve_Forward;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(__OFF)
	bsf	status,0
	rlf	(__OFF),f
	line	662
	
l10917:	
;Beverage_services.c: 662: offthevalve();
	fcall	_offthevalve
	line	663
;Beverage_services.c: 663: DelayMs(250);
	movlw	low(0FAh)
	movwf	(?_DelayMs)
	movlw	high(0FAh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l10919
	line	664
	
l3308:	
	line	656
	
l10919:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u7351
	goto	u7350
u7351:
	goto	l10909
u7350:
	goto	l10921
	
l3310:	
	line	665
	
l10921:	
;Beverage_services.c: 664: }
;Beverage_services.c: 665: _OFF=_Viber_Motor;
	movlw	(09h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__OFF)
	line	666
	
l10923:	
;Beverage_services.c: 666: offthevalve();
	fcall	_offthevalve
	goto	l10925
	line	667
	
l3307:	
	line	668
	
l10925:	
;Beverage_services.c: 667: }
;Beverage_services.c: 668: mem_index1=140; mem_index2=141;
	movlw	(08Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	
l10927:	
	movlw	(08Dh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	669
;Beverage_services.c: 669: break;
	goto	l10949
	line	670
;Beverage_services.c: 670: case _HOT_WATER_BUTTON: mem_index1=142; mem_index2=143;
	
l3311:	
	
l10929:	
	movlw	(08Eh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index1)
	movlw	(08Fh)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(_mem_index2)
	line	671
;Beverage_services.c: 671: break;
	goto	l10949
	line	672
;Beverage_services.c: 672: case _EXTRA_BUTTON: if(_PROCESS==_Countdisplay && _PREVIOUS_PROCESS==_Countdisplay)
	
l3312:	
	
l10931:	
	movf	(__PROCESS),w
	xorlw	01h
	skipz
	goto	u7361
	goto	u7360
u7361:
	goto	l3313
u7360:
	
l10933:	
	movf	(__PREVIOUS_PROCESS),w
	xorlw	01h
	skipz
	goto	u7371
	goto	u7370
u7371:
	goto	l3313
u7370:
	line	674
	
l10935:	
;Beverage_services.c: 673: {
;Beverage_services.c: 674: _PROCESS=_Preparation;
	movlw	(02h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__PROCESS)
	line	675
	
l3313:	
	line	676
;Beverage_services.c: 675: }
;Beverage_services.c: 676: if(_PROCESS==_Preparation && _PREVIOUS_PROCESS==_Preparation)
	movf	(__PROCESS),w
	xorlw	02h
	skipz
	goto	u7381
	goto	u7380
u7381:
	goto	l3314
u7380:
	
l10937:	
	movf	(__PREVIOUS_PROCESS),w
	xorlw	02h
	skipz
	goto	u7391
	goto	u7390
u7391:
	goto	l3314
u7390:
	line	678
	
l10939:	
;Beverage_services.c: 677: {
;Beverage_services.c: 678: _PROCESS=_Cleaning;
	movlw	(03h)
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__PROCESS)
	line	679
	
l3314:	
	line	680
;Beverage_services.c: 679: }
;Beverage_services.c: 680: if(_PROCESS==_Cleaning&& _PREVIOUS_PROCESS==_Cleaning)
	movf	(__PROCESS),w
	xorlw	03h
	skipz
	goto	u7401
	goto	u7400
u7401:
	goto	l10949
u7400:
	
l10941:	
	movf	(__PREVIOUS_PROCESS),w
	xorlw	03h
	skipz
	goto	u7411
	goto	u7410
u7411:
	goto	l10949
u7410:
	line	682
	
l10943:	
;Beverage_services.c: 681: {
;Beverage_services.c: 682: _PROCESS=_Countdisplay;
	clrf	(__PROCESS)
	bsf	status,0
	rlf	(__PROCESS),f
	goto	l10949
	line	683
	
l3315:	
	line	684
;Beverage_services.c: 683: }
;Beverage_services.c: 684: break;
	goto	l10949
	line	685
	
l10945:	
;Beverage_services.c: 685: }
	goto	l10949
	line	595
	
l3288:	
	
l10947:	
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
	goto	l10833
	xorlw	2^1	; case 2
	skipnz
	goto	l10863
	xorlw	3^2	; case 3
	skipnz
	goto	l10893
	xorlw	4^3	; case 4
	skipnz
	goto	l10895
	xorlw	5^4	; case 5
	skipnz
	goto	l10897
	xorlw	6^5	; case 6
	skipnz
	goto	l10899
	xorlw	7^6	; case 7
	skipnz
	goto	l10901
	xorlw	8^7	; case 8
	skipnz
	goto	l10931
	xorlw	9^8	; case 9
	skipnz
	goto	l10929
	goto	l10949
	opt asmopt_on

	line	685
	
l3295:	
	line	686
	
l10949:	
;Beverage_services.c: 686: if(_PREVIOUS_PROCESS!=_PROCESS)
	movf	(__PREVIOUS_PROCESS),w
	xorwf	(__PROCESS),w
	skipnz
	goto	u7421
	goto	u7420
u7421:
	goto	l10967
u7420:
	line	688
	
l10951:	
;Beverage_services.c: 687: {
;Beverage_services.c: 688: if(_PROCESS==_Countdisplay)
	movf	(__PROCESS),w
	xorlw	01h
	skipz
	goto	u7431
	goto	u7430
u7431:
	goto	l10955
u7430:
	line	690
	
l10953:	
;Beverage_services.c: 689: {
;Beverage_services.c: 690: Lcd_String("COUNT DISPLAY",1,0);
	movlw	low(STR_11|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_11|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	goto	l10955
	line	691
	
l3317:	
	line	692
	
l10955:	
;Beverage_services.c: 691: }
;Beverage_services.c: 692: if(_PROCESS==_Preparation)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PROCESS),w
	xorlw	02h
	skipz
	goto	u7441
	goto	u7440
u7441:
	goto	l10959
u7440:
	line	694
	
l10957:	
;Beverage_services.c: 693: {
;Beverage_services.c: 694: Lcd_String("DICATION",1,0);
	movlw	low(STR_12|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_12|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	695
;Beverage_services.c: 695: Lcd_String("PREPARATION",0,1);
	movlw	low(STR_13|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_13|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	bsf	status,0
	rlf	0+(?_Lcd_String)+03h,f
	fcall	_Lcd_String
	goto	l10959
	line	696
	
l3318:	
	line	697
	
l10959:	
;Beverage_services.c: 696: }
;Beverage_services.c: 697: if(_PROCESS==_Cleaning)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PROCESS),w
	xorlw	03h
	skipz
	goto	u7451
	goto	u7450
u7451:
	goto	l10963
u7450:
	line	699
	
l10961:	
;Beverage_services.c: 698: {
;Beverage_services.c: 699: Lcd_String("CLEANING",1,0);
	movlw	low(STR_14|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_14|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	goto	l10963
	line	700
	
l3319:	
	line	701
	
l10963:	
;Beverage_services.c: 700: }
;Beverage_services.c: 701: DelayMs(10);
	movlw	low(0Ah)
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	702
	
l10965:	
;Beverage_services.c: 702: _PREVIOUS_PROCESS=_PROCESS;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PROCESS),w
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__PREVIOUS_PROCESS)
	goto	l10967
	line	703
	
l3316:	
	line	704
	
l10967:	
;Beverage_services.c: 703: }
;Beverage_services.c: 704: if(_PRESSED && (_PRESSED!=_EXTRA_BUTTON))
	movf	(__PRESSED),w
	skipz
	goto	u7460
	goto	l10995
u7460:
	
l10969:	
	movf	(__PRESSED),w
	xorlw	08h
	skipnz
	goto	u7471
	goto	u7470
u7471:
	goto	l10995
u7470:
	line	706
	
l10971:	
;Beverage_services.c: 705: {
;Beverage_services.c: 706: Inidcate_Buzzer();
	fcall	_Inidcate_Buzzer
	line	707
	
l10973:	
;Beverage_services.c: 707: if(_PROCESS!=_Countdisplay)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PROCESS),w
	xorlw	01h
	skipnz
	goto	u7481
	goto	u7480
u7481:
	goto	l10981
u7480:
	line	709
	
l10975:	
;Beverage_services.c: 708: {
;Beverage_services.c: 709: call_control_valve();
	fcall	_call_control_valve
	line	711
	
l10977:	
;Beverage_services.c: 711: _DISABLE_MODE=_Shortcut_Mode;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_enable_valves+0)+0
	movf	(??_enable_valves+0)+0,w
	movwf	(__DISABLE_MODE)
	line	712
	
l10979:	
;Beverage_services.c: 712: _ENABLE_MODE=_Normal_Mode;
	clrf	(__ENABLE_MODE)
	bsf	status,0
	rlf	(__ENABLE_MODE),f
	goto	l10981
	line	713
	
l3321:	
	line	714
	
l10981:	
;Beverage_services.c: 713: }
;Beverage_services.c: 714: if(_PROCESS!=_Cleaning && _PROCESS!=_Countdisplay)
	movf	(__PROCESS),w
	xorlw	03h
	skipnz
	goto	u7491
	goto	u7490
u7491:
	goto	l10987
u7490:
	
l10983:	
	movf	(__PROCESS),w
	xorlw	01h
	skipnz
	goto	u7501
	goto	u7500
u7501:
	goto	l10987
u7500:
	line	716
	
l10985:	
;Beverage_services.c: 715: {
;Beverage_services.c: 716: Enable_Shortcut_Mode=0;
	bcf	(_Enable_Shortcut_Mode/8),(_Enable_Shortcut_Mode)&7
	line	717
;Beverage_services.c: 717: Enable_Normal_Mode=1;
	bsf	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	goto	l10987
	line	718
	
l3322:	
	line	719
	
l10987:	
;Beverage_services.c: 718: }
;Beverage_services.c: 719: if(_PROCESS==_Countdisplay)
	movf	(__PROCESS),w
	xorlw	01h
	skipz
	goto	u7511
	goto	u7510
u7511:
	goto	l10995
u7510:
	line	721
	
l10989:	
;Beverage_services.c: 720: {
;Beverage_services.c: 721: Print_Menu();
	fcall	_Print_Menu
	line	722
	
l10991:	
;Beverage_services.c: 722: Lcd_Cmd(0xC5); Num_Disp(count_read(mem_index1,mem_index2),5,0);
	movlw	(0C5h)
	fcall	_Lcd_Cmd
	
l10993:	
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
	goto	l10995
	line	723
	
l3323:	
	goto	l10995
	line	724
	
l3320:	
	goto	l10995
	line	725
	
l3287:	
	line	727
	
l10995:	
;Beverage_services.c: 723: }
;Beverage_services.c: 724: }
;Beverage_services.c: 725: }
;Beverage_services.c: 727: if(_PRESSED!=0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(__PRESSED),w
	skipz
	goto	u7520
	goto	l3325
u7520:
	line	729
	
l10997:	
;Beverage_services.c: 728: {
;Beverage_services.c: 729: _PRESSED=0;
	clrf	(__PRESSED)
	line	730
;Beverage_services.c: 730: _SHORTCUT_PRESSED=0;
	clrf	(__SHORTCUT_PRESSED)
	line	731
	
l10999:	
;Beverage_services.c: 731: i=0;j=0;
	clrf	(_i)
	clrf	(_i+1)
	clrf	(_j)
	clrf	(_j+1)
	goto	l3325
	line	732
	
l3324:	
	line	733
	
l3325:	
	return
	opt stack 0
GLOBAL	__end_of_enable_valves
	__end_of_enable_valves:
;; =============== function _enable_valves ends ============

	signat	_enable_valves,88
	global	_Mode_Init
psect	text849,local,class=CODE,delta=2
global __ptext849
__ptext849:

;; *************** function _Mode_Init *****************
;; Defined at:
;;		line 46 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
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
;;		_SendByteSerially
;;		_eeprom_write
;;		_call_control_valve
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text849
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	46
	global	__size_of_Mode_Init
	__size_of_Mode_Init	equ	__end_of_Mode_Init-_Mode_Init
	
_Mode_Init:	
	opt	stack 3
; Regs used in _Mode_Init: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	47
	
l10217:	
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
	
l10219:	
	movlw	(09h)
	subwf	(Mode_Init@option),w
	skipc
	goto	u6151
	goto	u6150
u6151:
	goto	l10223
u6150:
	goto	l10229
	
l10221:	
	goto	l10229
	line	62
	
l3105:	
	line	63
	
l10223:	
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
	
l10225:	
	movlw	(01h)
	movwf	(??_Mode_Init+0)+0
	movf	(??_Mode_Init+0)+0,w
	addwf	(Mode_Init@option),f
	
l10227:	
	movlw	(09h)
	subwf	(Mode_Init@option),w
	skipc
	goto	u6161
	goto	u6160
u6161:
	goto	l10223
u6160:
	goto	l10229
	
l3106:	
	line	65
	
l10229:	
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
	goto	u6171
	goto	u6170
u6171:
	goto	l10233
u6170:
	
l10231:	
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
	goto	u6181
	goto	u6180
u6181:
	goto	l3119
u6180:
	goto	l10233
	
l3109:	
	line	67
	
l10233:	
;Beverage_services.c: 66: {
;Beverage_services.c: 67: SendByteSerially(0x0B);
	movlw	(0Bh)
	fcall	_SendByteSerially
	goto	l10235
	line	68
;Beverage_services.c: 68: while(1)
	
l3110:	
	line	70
	
l10235:	
;Beverage_services.c: 69: {
;Beverage_services.c: 70: if(RC4==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(60/8),(60)&7
	goto	u6191
	goto	u6190
u6191:
	goto	l10253
u6190:
	line	72
	
l10237:	
;Beverage_services.c: 71: {
;Beverage_services.c: 72: eeprom_write(145,eeprom_read(145)-1);
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
	line	73
;Beverage_services.c: 73: eeprom_write(146,eeprom_read(146)-1);
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
	line	74
;Beverage_services.c: 74: SendByteSerially(0x0C);
	movlw	(0Ch)
	fcall	_SendByteSerially
	line	75
;Beverage_services.c: 75: if(eeprom_read(145)>1 && eeprom_read(145)<10)
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
	goto	u6201
	goto	u6200
u6201:
	goto	l10243
u6200:
	
l10239:	
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
	goto	u6211
	goto	u6210
u6211:
	goto	l10243
u6210:
	line	76
	
l10241:	
;Beverage_services.c: 76: Enable_Coffee_Hot_Water_Valve = 1;
	bsf	(_Enable_Coffee_Hot_Water_Valve/8),(_Enable_Coffee_Hot_Water_Valve)&7
	goto	l10243
	
l3112:	
	line	77
	
l10243:	
;Beverage_services.c: 77: if(eeprom_read(146)>1 && eeprom_read(146)<10)
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
	goto	u6221
	goto	u6220
u6221:
	goto	l10249
u6220:
	
l10245:	
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
	goto	u6231
	goto	u6230
u6231:
	goto	l10249
u6230:
	line	78
	
l10247:	
;Beverage_services.c: 78: Enable_Tea_Hot_Water_Valve = 1;
	bsf	(_Enable_Tea_Hot_Water_Valve/8),(_Enable_Tea_Hot_Water_Valve)&7
	goto	l10249
	
l3113:	
	line	79
	
l10249:	
;Beverage_services.c: 79: call_control_valve();
	fcall	_call_control_valve
	line	80
	
l10251:	
;Beverage_services.c: 80: _clear=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(__clear/8),(__clear)&7
	goto	l10253
	line	81
	
l3111:	
	line	82
	
l10253:	
;Beverage_services.c: 81: }
;Beverage_services.c: 82: if(RC5==0 || _clear==1)
	btfss	(61/8),(61)&7
	goto	u6241
	goto	u6240
u6241:
	goto	l3116
u6240:
	
l10255:	
	btfss	(__clear/8),(__clear)&7
	goto	u6251
	goto	u6250
u6251:
	goto	l10235
u6250:
	
l3116:	
	line	84
;Beverage_services.c: 83: {
;Beverage_services.c: 84: _clear=0;
	bcf	(__clear/8),(__clear)&7
	line	85
	
l10257:	
;Beverage_services.c: 85: eeprom_write(145,0);
	clrf	(?_eeprom_write)
	movlw	(091h)
	fcall	_eeprom_write
	line	86
;Beverage_services.c: 86: eeprom_write(146,0);
	clrf	(?_eeprom_write)
	movlw	(092h)
	fcall	_eeprom_write
	line	87
	
l10259:	
;Beverage_services.c: 87: _DISABLE_MODE=_Shortcut_Mode;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Mode_Init+0)+0
	movf	(??_Mode_Init+0)+0,w
	movwf	(__DISABLE_MODE)
	line	88
	
l10261:	
;Beverage_services.c: 88: _ENABLE_MODE=_Normal_Mode;
	clrf	(__ENABLE_MODE)
	bsf	status,0
	rlf	(__ENABLE_MODE),f
	line	89
;Beverage_services.c: 89: break;
	goto	l3119
	line	90
	
l3114:	
	goto	l10235
	line	91
	
l3118:	
	line	68
	goto	l10235
	
l3117:	
	goto	l3119
	line	92
	
l3107:	
	line	94
	
l3119:	
	return
	opt stack 0
GLOBAL	__end_of_Mode_Init
	__end_of_Mode_Init:
;; =============== function _Mode_Init ends ============

	signat	_Mode_Init,88
	global	_call_control_valve
psect	text850,local,class=CODE,delta=2
global __ptext850
__ptext850:

;; *************** function _call_control_valve *****************
;; Defined at:
;;		line 950 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
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
psect	text850
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	950
	global	__size_of_call_control_valve
	__size_of_call_control_valve	equ	__end_of_call_control_valve-_call_control_valve
	
_call_control_valve:	
	opt	stack 3
; Regs used in _call_control_valve: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	951
	
l10121:	
;Beverage_services.c: 951: if(Enable_Coffee_Valve)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Coffee_Valve/8),(_Enable_Coffee_Valve)&7
	goto	u6031
	goto	u6030
u6031:
	goto	l10129
u6030:
	line	953
	
l10123:	
;Beverage_services.c: 952: {
;Beverage_services.c: 953: _ON=_OFF=_Coffee_Valve;
	movlw	(06h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	954
	
l10125:	
;Beverage_services.c: 954: control_valve(eeprom_read((12*_CHOICE_SELECTED)-2),eeprom_read((12*_CHOICE_SELECTED)-2+1));
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
	line	955
	
l10127:	
;Beverage_services.c: 955: Enable_Coffee_Valve=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Coffee_Valve/8),(_Enable_Coffee_Valve)&7
	goto	l10129
	line	956
	
l3372:	
	line	957
	
l10129:	
;Beverage_services.c: 956: }
;Beverage_services.c: 957: if(Enable_Tea_Valve)
	btfss	(_Enable_Tea_Valve/8),(_Enable_Tea_Valve)&7
	goto	u6041
	goto	u6040
u6041:
	goto	l10137
u6040:
	line	959
	
l10131:	
;Beverage_services.c: 958: {
;Beverage_services.c: 959: _ON=_OFF=_Tea_Valve;
	movlw	(08h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	960
	
l10133:	
;Beverage_services.c: 960: control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+2),eeprom_read((12*_CHOICE_SELECTED)-2+3));
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
	line	961
	
l10135:	
;Beverage_services.c: 961: Enable_Tea_Valve=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Tea_Valve/8),(_Enable_Tea_Valve)&7
	goto	l10137
	line	962
	
l3373:	
	line	963
	
l10137:	
;Beverage_services.c: 962: }
;Beverage_services.c: 963: if(Enable_Mixing_Hot_Water_Valve)
	btfss	(_Enable_Mixing_Hot_Water_Valve/8),(_Enable_Mixing_Hot_Water_Valve)&7
	goto	u6051
	goto	u6050
u6051:
	goto	l10145
u6050:
	line	965
	
l10139:	
;Beverage_services.c: 964: {
;Beverage_services.c: 965: _ON=_OFF=_Mixing_Hot_Water_Valve;
	movlw	(03h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	966
	
l10141:	
;Beverage_services.c: 966: control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+4),eeprom_read((12*_CHOICE_SELECTED)-2+5));
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
	line	967
	
l10143:	
;Beverage_services.c: 967: Enable_Mixing_Hot_Water_Valve=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Mixing_Hot_Water_Valve/8),(_Enable_Mixing_Hot_Water_Valve)&7
	goto	l10145
	line	968
	
l3374:	
	line	969
	
l10145:	
;Beverage_services.c: 968: }
;Beverage_services.c: 969: if(Enable_Milk_Forward)
	btfss	(_Enable_Milk_Forward/8),(_Enable_Milk_Forward)&7
	goto	u6061
	goto	u6060
u6061:
	goto	l10153
u6060:
	line	971
	
l10147:	
;Beverage_services.c: 970: {
;Beverage_services.c: 971: _ON=_OFF=_Milk_Valve_Forward;
	movlw	(01h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	972
	
l10149:	
;Beverage_services.c: 972: control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+6),eeprom_read((12*_CHOICE_SELECTED)-2+7));
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
	line	973
	
l10151:	
;Beverage_services.c: 973: Enable_Milk_Forward=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Milk_Forward/8),(_Enable_Milk_Forward)&7
	goto	l10153
	line	974
	
l3375:	
	line	975
	
l10153:	
;Beverage_services.c: 974: }
;Beverage_services.c: 975: if(Enable_Viber_Motor)
	btfss	(_Enable_Viber_Motor/8),(_Enable_Viber_Motor)&7
	goto	u6071
	goto	u6070
u6071:
	goto	l10161
u6070:
	line	977
	
l10155:	
;Beverage_services.c: 976: {
;Beverage_services.c: 977: _ON=_OFF=_Viber_Motor;
	movlw	(09h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	978
	
l10157:	
;Beverage_services.c: 978: control_valve(eeprom_read((12*_CHOICE_SELECTED)-2+8),eeprom_read((12*_CHOICE_SELECTED)-2+9));
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
	line	979
	
l10159:	
;Beverage_services.c: 979: Enable_Viber_Motor=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Viber_Motor/8),(_Enable_Viber_Motor)&7
	goto	l10161
	line	980
	
l3376:	
	line	981
	
l10161:	
;Beverage_services.c: 980: }
;Beverage_services.c: 981: if(Enable_Hot_Water_Valve)
	btfss	(_Enable_Hot_Water_Valve/8),(_Enable_Hot_Water_Valve)&7
	goto	u6081
	goto	u6080
u6081:
	goto	l10169
u6080:
	line	983
	
l10163:	
;Beverage_services.c: 982: {
;Beverage_services.c: 983: _ON=_OFF=_Hot_Water_Valve;
	movlw	(04h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	985
	
l10165:	
;Beverage_services.c: 985: control_valve(eeprom_read(147),2);
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
	line	986
	
l10167:	
;Beverage_services.c: 986: Enable_Hot_Water_Valve=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Hot_Water_Valve/8),(_Enable_Hot_Water_Valve)&7
	goto	l10169
	line	987
	
l3377:	
	line	988
	
l10169:	
;Beverage_services.c: 987: }
;Beverage_services.c: 988: if(Enable_Coffee_Hot_Water_Valve)
	btfss	(_Enable_Coffee_Hot_Water_Valve/8),(_Enable_Coffee_Hot_Water_Valve)&7
	goto	u6091
	goto	u6090
u6091:
	goto	l3378
u6090:
	line	990
	
l10171:	
;Beverage_services.c: 989: {
;Beverage_services.c: 990: _ON=_OFF=_Coffee_Hot_Water_Valve;
	movlw	(05h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	991
	
l10173:	
;Beverage_services.c: 991: for(i=eeprom_read(145);i>0;i--)
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
	goto	l10189
	line	992
	
l3380:	
	line	993
	
l10175:	
;Beverage_services.c: 992: {
;Beverage_services.c: 993: Lcd_Cmd(0xC6);
	movlw	(0C6h)
	fcall	_Lcd_Cmd
	line	994
	
l10177:	
;Beverage_services.c: 994: myitoa(i,buff);
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
	line	995
	
l10179:	
;Beverage_services.c: 995: Lcd_String(buff,0,0);
	movlw	(_buff&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	(0x0/2)
	movwf	(?_Lcd_String+1)
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	996
	
l10181:	
;Beverage_services.c: 996: eeprom_write(145,i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i),w
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(091h)
	fcall	_eeprom_write
	line	997
	
l10183:	
;Beverage_services.c: 997: control_valve(eeprom_read(118)*10,eeprom_read(121)*10);
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
	clrf	(_call_control_valve$6339+1)
	addwf	(_call_control_valve$6339+1)
	movf	(0+(?___wmul)),w
	clrf	(_call_control_valve$6339)
	addwf	(_call_control_valve$6339)

	
l10185:	
;Beverage_services.c: 997: control_valve(eeprom_read(118)*10,eeprom_read(121)*10);
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

	movf	(_call_control_valve$6339+1),w
	clrf	1+(?_control_valve)+02h
	addwf	1+(?_control_valve)+02h
	movf	(_call_control_valve$6339),w
	clrf	0+(?_control_valve)+02h
	addwf	0+(?_control_valve)+02h

	fcall	_control_valve
	line	991
	
l10187:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_i),f
	movlw	high(01h)
	skipc
	decf	(_i+1),f
	subwf	(_i+1),f
	goto	l10189
	
l3379:	
	
l10189:	
	movf	((_i+1)),w
	iorwf	((_i)),w
	skipz
	goto	u6101
	goto	u6100
u6101:
	goto	l10175
u6100:
	
l3381:	
	line	999
;Beverage_services.c: 998: }
;Beverage_services.c: 999: Enable_Coffee_Hot_Water_Valve=0;
	bcf	(_Enable_Coffee_Hot_Water_Valve/8),(_Enable_Coffee_Hot_Water_Valve)&7
	line	1000
	
l3378:	
	line	1001
;Beverage_services.c: 1000: }
;Beverage_services.c: 1001: if(Enable_Tea_Hot_Water_Valve)
	btfss	(_Enable_Tea_Hot_Water_Valve/8),(_Enable_Tea_Hot_Water_Valve)&7
	goto	u6111
	goto	u6110
u6111:
	goto	l3382
u6110:
	line	1003
	
l10191:	
;Beverage_services.c: 1002: {
;Beverage_services.c: 1003: _ON=_OFF=_Tea_Hot_Water_Valve;
	movlw	(07h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	1004
	
l10193:	
;Beverage_services.c: 1004: for(i=eeprom_read(146);i>0;i--)
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
	goto	l10201
	line	1005
	
l3384:	
	line	1006
	
l10195:	
;Beverage_services.c: 1005: {
;Beverage_services.c: 1006: eeprom_write(146,i);
	movf	(_i),w
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(092h)
	fcall	_eeprom_write
	line	1007
;Beverage_services.c: 1007: control_valve(eeprom_read(119)*10,eeprom_read(121)*10);
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
	clrf	(_call_control_valve$6339+1)
	addwf	(_call_control_valve$6339+1)
	movf	(0+(?___wmul)),w
	clrf	(_call_control_valve$6339)
	addwf	(_call_control_valve$6339)

	
l10197:	
;Beverage_services.c: 1007: control_valve(eeprom_read(119)*10,eeprom_read(121)*10);
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

	movf	(_call_control_valve$6339+1),w
	clrf	1+(?_control_valve)+02h
	addwf	1+(?_control_valve)+02h
	movf	(_call_control_valve$6339),w
	clrf	0+(?_control_valve)+02h
	addwf	0+(?_control_valve)+02h

	fcall	_control_valve
	line	1004
	
l10199:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_i),f
	movlw	high(01h)
	skipc
	decf	(_i+1),f
	subwf	(_i+1),f
	goto	l10201
	
l3383:	
	
l10201:	
	movf	((_i+1)),w
	iorwf	((_i)),w
	skipz
	goto	u6121
	goto	u6120
u6121:
	goto	l10195
u6120:
	
l3385:	
	line	1009
;Beverage_services.c: 1008: }
;Beverage_services.c: 1009: Enable_Tea_Hot_Water_Valve=0;
	bcf	(_Enable_Tea_Hot_Water_Valve/8),(_Enable_Tea_Hot_Water_Valve)&7
	line	1010
	
l3382:	
	line	1011
;Beverage_services.c: 1010: }
;Beverage_services.c: 1011: if(Enable_Milk_Reverse)
	btfss	(_Enable_Milk_Reverse/8),(_Enable_Milk_Reverse)&7
	goto	u6131
	goto	u6130
u6131:
	goto	l10209
u6130:
	line	1013
	
l10203:	
;Beverage_services.c: 1012: {
;Beverage_services.c: 1013: _ON=_OFF=_Milk_Valve_Reverse;
	movlw	(02h)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	1014
	
l10205:	
;Beverage_services.c: 1014: control_valve(35,2);
	movlw	low(023h)
	movwf	(?_control_valve)
	movlw	high(023h)
	movwf	((?_control_valve))+1
	movlw	low(02h)
	movwf	0+(?_control_valve)+02h
	movlw	high(02h)
	movwf	(0+(?_control_valve)+02h)+1
	fcall	_control_valve
	line	1015
	
l10207:	
;Beverage_services.c: 1015: Enable_Milk_Reverse=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Milk_Reverse/8),(_Enable_Milk_Reverse)&7
	goto	l10209
	line	1016
	
l3386:	
	line	1017
	
l10209:	
;Beverage_services.c: 1016: }
;Beverage_services.c: 1017: if(Enable_Heater1)
	btfss	(_Enable_Heater1/8),(_Enable_Heater1)&7
	goto	u6141
	goto	u6140
u6141:
	goto	l3388
u6140:
	line	1019
	
l10211:	
;Beverage_services.c: 1018: {
;Beverage_services.c: 1019: _ON=_OFF=_Heater1;
	movlw	(0Ah)
	movwf	(__OFF)
	movwf	(??_call_control_valve+0)+0
	movf	(??_call_control_valve+0)+0,w
	movwf	(__ON)
	line	1020
	
l10213:	
;Beverage_services.c: 1020: control_valve(eeprom_read(255),eeprom_read(255));
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
	line	1021
	
l10215:	
;Beverage_services.c: 1021: Enable_Heater1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_Enable_Heater1/8),(_Enable_Heater1)&7
	goto	l3388
	line	1022
	
l3387:	
	line	1023
	
l3388:	
	return
	opt stack 0
GLOBAL	__end_of_call_control_valve
	__end_of_call_control_valve:
;; =============== function _call_control_valve ends ============

	signat	_call_control_valve,88
	global	_change_modes
psect	text851,local,class=CODE,delta=2
global __ptext851
__ptext851:

;; *************** function _change_modes *****************
;; Defined at:
;;		line 736 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
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
;; Hardware stack levels required when called:    3
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
psect	text851
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	736
	global	__size_of_change_modes
	__size_of_change_modes	equ	__end_of_change_modes-_change_modes
	
_change_modes:	
	opt	stack 4
; Regs used in _change_modes: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	737
	
l10001:	
;Beverage_services.c: 737: switch (_DISABLE_MODE)
	goto	l10005
	line	739
;Beverage_services.c: 738: {
;Beverage_services.c: 739: case _Normal_Mode: Enable_Normal_Mode=0;
	
l3329:	
	bcf	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	line	740
;Beverage_services.c: 740: break;
	goto	l10009
	line	741
;Beverage_services.c: 741: case _Password: Enable_Password=0;
	
l3331:	
	bcf	(_Enable_Password/8),(_Enable_Password)&7
	line	742
;Beverage_services.c: 742: break;
	goto	l10009
	line	743
;Beverage_services.c: 743: case _Config_Mode: Enable_Config_Mode=0;
	
l3332:	
	bcf	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	line	744
;Beverage_services.c: 744: break;
	goto	l10009
	line	745
;Beverage_services.c: 745: case _Valves: Enable_Valves=0;
	
l3333:	
	bcf	(_Enable_Valves/8),(_Enable_Valves)&7
	line	746
;Beverage_services.c: 746: break;
	goto	l10009
	line	747
;Beverage_services.c: 747: case _Selection: Enable_Selection=0;
	
l3334:	
	bcf	(_Enable_Selection/8),(_Enable_Selection)&7
	line	748
;Beverage_services.c: 748: break;
	goto	l10009
	line	749
;Beverage_services.c: 749: case _Coffee_Dication_Time: Enable_Coffee_Dication_Time=0;
	
l3335:	
	bcf	(_Enable_Coffee_Dication_Time/8),(_Enable_Coffee_Dication_Time)&7
	line	750
;Beverage_services.c: 750: break;
	goto	l10009
	line	751
;Beverage_services.c: 751: case _Tea_Dication_Time: Enable_Tea_Dication_Time=0;
	
l3336:	
	bcf	(_Enable_Tea_Dication_Time/8),(_Enable_Tea_Dication_Time)&7
	line	752
;Beverage_services.c: 752: break;
	goto	l10009
	line	753
;Beverage_services.c: 753: case _Dication_Delay: Enable_Dication_Delay=0;
	
l3337:	
	bcf	(_Enable_Dication_Delay/8),(_Enable_Dication_Delay)&7
	line	754
;Beverage_services.c: 754: break;
	goto	l10009
	line	755
;Beverage_services.c: 755: case _Hot_Water_Time: Enable_Hot_Water_Time=0;
	
l3338:	
	bcf	(_Enable_Hot_Water_Time/8),(_Enable_Hot_Water_Time)&7
	line	756
;Beverage_services.c: 756: break;
	goto	l10009
	line	757
;Beverage_services.c: 757: case _Temperature: Enable_Temperature=0;
	
l3339:	
	bcf	(_Enable_Temperature/8),(_Enable_Temperature)&7
	line	758
;Beverage_services.c: 758: break;
	goto	l10009
	line	759
;Beverage_services.c: 759: case _Cup_Count: Enable_Cup_Count=0;
	
l3340:	
	bcf	(_Enable_Cup_Count/8),(_Enable_Cup_Count)&7
	line	760
;Beverage_services.c: 760: break;
	goto	l10009
	line	761
;Beverage_services.c: 761: case _Count_Reset: Enable_Count_Reset=0;
	
l3341:	
	bcf	(_Enable_Count_Reset/8),(_Enable_Count_Reset)&7
	line	762
;Beverage_services.c: 762: break;
	goto	l10009
	line	763
;Beverage_services.c: 763: case _Shortcut_Mode: Enable_Shortcut_Mode=0;
	
l3342:	
	bcf	(_Enable_Shortcut_Mode/8),(_Enable_Shortcut_Mode)&7
	line	764
;Beverage_services.c: 764: break;
	goto	l10009
	line	765
	
l10003:	
;Beverage_services.c: 765: }
	goto	l10009
	line	737
	
l3328:	
	
l10005:	
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
	goto	l3329
	xorlw	2^1	; case 2
	skipnz
	goto	l3331
	xorlw	3^2	; case 3
	skipnz
	goto	l3332
	xorlw	4^3	; case 4
	skipnz
	goto	l3333
	xorlw	5^4	; case 5
	skipnz
	goto	l3334
	xorlw	6^5	; case 6
	skipnz
	goto	l3335
	xorlw	7^6	; case 7
	skipnz
	goto	l3336
	xorlw	8^7	; case 8
	skipnz
	goto	l3337
	xorlw	9^8	; case 9
	skipnz
	goto	l3338
	xorlw	11^9	; case 11
	skipnz
	goto	l3339
	xorlw	12^11	; case 12
	skipnz
	goto	l3340
	xorlw	13^12	; case 13
	skipnz
	goto	l3341
	xorlw	14^13	; case 14
	skipnz
	goto	l3342
	goto	l10009
	opt asmopt_on

	line	765
	
l3330:	
	line	766
;Beverage_services.c: 766: switch (_ENABLE_MODE)
	goto	l10009
	line	768
;Beverage_services.c: 767: {
;Beverage_services.c: 768: case _Normal_Mode: Enable_Normal_Mode=1;
	
l3344:	
	bsf	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	line	769
;Beverage_services.c: 769: break;
	goto	l3345
	line	770
;Beverage_services.c: 770: case _Password: Enable_Password=1;
	
l3346:	
	bsf	(_Enable_Password/8),(_Enable_Password)&7
	line	771
;Beverage_services.c: 771: break;
	goto	l3345
	line	772
;Beverage_services.c: 772: case _Config_Mode: Enable_Config_Mode=1;
	
l3347:	
	bsf	(_Enable_Config_Mode/8),(_Enable_Config_Mode)&7
	line	773
;Beverage_services.c: 773: break;
	goto	l3345
	line	774
;Beverage_services.c: 774: case _Valves: Enable_Valves=1;
	
l3348:	
	bsf	(_Enable_Valves/8),(_Enable_Valves)&7
	line	775
;Beverage_services.c: 775: break;
	goto	l3345
	line	776
;Beverage_services.c: 776: case _Selection: Enable_Selection=1;
	
l3349:	
	bsf	(_Enable_Selection/8),(_Enable_Selection)&7
	line	777
;Beverage_services.c: 777: break;
	goto	l3345
	line	778
;Beverage_services.c: 778: case _Coffee_Dication_Time: Enable_Coffee_Dication_Time=1;
	
l3350:	
	bsf	(_Enable_Coffee_Dication_Time/8),(_Enable_Coffee_Dication_Time)&7
	line	779
;Beverage_services.c: 779: break;
	goto	l3345
	line	780
;Beverage_services.c: 780: case _Tea_Dication_Time: Enable_Tea_Dication_Time=1;
	
l3351:	
	bsf	(_Enable_Tea_Dication_Time/8),(_Enable_Tea_Dication_Time)&7
	line	781
;Beverage_services.c: 781: break;
	goto	l3345
	line	782
;Beverage_services.c: 782: case _Dication_Delay: Enable_Dication_Delay=1;
	
l3352:	
	bsf	(_Enable_Dication_Delay/8),(_Enable_Dication_Delay)&7
	line	783
;Beverage_services.c: 783: break;
	goto	l3345
	line	784
;Beverage_services.c: 784: case _Hot_Water_Time: Enable_Hot_Water_Time=1;
	
l3353:	
	bsf	(_Enable_Hot_Water_Time/8),(_Enable_Hot_Water_Time)&7
	line	785
;Beverage_services.c: 785: break;
	goto	l3345
	line	786
;Beverage_services.c: 786: case _Temperature: Enable_Temperature=1;
	
l3354:	
	bsf	(_Enable_Temperature/8),(_Enable_Temperature)&7
	line	787
;Beverage_services.c: 787: break;
	goto	l3345
	line	788
;Beverage_services.c: 788: case _Cup_Count: Enable_Cup_Count=1;
	
l3355:	
	bsf	(_Enable_Cup_Count/8),(_Enable_Cup_Count)&7
	line	789
;Beverage_services.c: 789: break;
	goto	l3345
	line	790
;Beverage_services.c: 790: case _Count_Reset: Enable_Count_Reset=1;
	
l3356:	
	bsf	(_Enable_Count_Reset/8),(_Enable_Count_Reset)&7
	line	791
;Beverage_services.c: 791: break;
	goto	l3345
	line	792
;Beverage_services.c: 792: case _Shortcut_Mode: Enable_Shortcut_Mode=1;
	
l3357:	
	bsf	(_Enable_Shortcut_Mode/8),(_Enable_Shortcut_Mode)&7
	line	793
;Beverage_services.c: 793: break;
	goto	l3345
	line	794
	
l10007:	
;Beverage_services.c: 794: }
	goto	l3345
	line	766
	
l3343:	
	
l10009:	
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
	goto	l3344
	xorlw	2^1	; case 2
	skipnz
	goto	l3346
	xorlw	3^2	; case 3
	skipnz
	goto	l3347
	xorlw	4^3	; case 4
	skipnz
	goto	l3348
	xorlw	5^4	; case 5
	skipnz
	goto	l3349
	xorlw	6^5	; case 6
	skipnz
	goto	l3350
	xorlw	7^6	; case 7
	skipnz
	goto	l3351
	xorlw	8^7	; case 8
	skipnz
	goto	l3352
	xorlw	9^8	; case 9
	skipnz
	goto	l3353
	xorlw	11^9	; case 11
	skipnz
	goto	l3354
	xorlw	12^11	; case 12
	skipnz
	goto	l3355
	xorlw	13^12	; case 13
	skipnz
	goto	l3356
	xorlw	14^13	; case 14
	skipnz
	goto	l3357
	goto	l3345
	opt asmopt_on

	line	794
	
l3345:	
	line	796
;Beverage_services.c: 796: if(Enable_Normal_Mode && (_PREVIOUS_MODE != _ENABLE_MODE))
	btfss	(_Enable_Normal_Mode/8),(_Enable_Normal_Mode)&7
	goto	u5811
	goto	u5810
u5811:
	goto	l10015
u5810:
	
l10011:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u5821
	goto	u5820
u5821:
	goto	l10015
u5820:
	line	798
	
l10013:	
;Beverage_services.c: 797: {
;Beverage_services.c: 798: Print_Name();
	fcall	_Print_Name
	goto	l10015
	line	799
	
l3358:	
	line	800
	
l10015:	
;Beverage_services.c: 799: }
;Beverage_services.c: 800: if(Enable_Password && (_PREVIOUS_MODE != _ENABLE_MODE))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Password/8),(_Enable_Password)&7
	goto	u5831
	goto	u5830
u5831:
	goto	l10021
u5830:
	
l10017:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u5841
	goto	u5840
u5841:
	goto	l10021
u5840:
	line	802
	
l10019:	
;Beverage_services.c: 801: {
;Beverage_services.c: 802: Lcd_String("PASSWORD: ",1,0);
	movlw	low(STR_15|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_15|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	goto	l10021
	line	803
	
l3359:	
	line	804
	
l10021:	
;Beverage_services.c: 803: }
;Beverage_services.c: 804: if(Enable_Valves && (_PREVIOUS_MODE != _ENABLE_MODE))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Valves/8),(_Enable_Valves)&7
	goto	u5851
	goto	u5850
u5851:
	goto	l10031
u5850:
	
l10023:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u5861
	goto	u5860
u5861:
	goto	l10031
u5860:
	line	806
	
l10025:	
;Beverage_services.c: 805: {
;Beverage_services.c: 806: Lcd_String("CONFIGURE MODE",1,0);
	movlw	low(STR_16|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_16|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	807
	
l10027:	
;Beverage_services.c: 807: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	808
	
l10029:	
;Beverage_services.c: 808: Lcd_String("MENU: ",1,0);
	movlw	low(STR_17|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_17|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	809
;Beverage_services.c: 809: Lcd_Cmd(0x86);
	movlw	(086h)
	fcall	_Lcd_Cmd
	line	810
;Beverage_services.c: 810: Lcd_Data('1');
	movlw	(031h)
	fcall	_Lcd_Data
	line	811
;Beverage_services.c: 811: print_yes_no(Next);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Next),w
	fcall	_print_yes_no
	goto	l10031
	line	812
	
l3360:	
	line	813
	
l10031:	
;Beverage_services.c: 812: }
;Beverage_services.c: 813: if(Enable_Selection && (_PREVIOUS_MODE != _ENABLE_MODE))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Selection/8),(_Enable_Selection)&7
	goto	u5871
	goto	u5870
u5871:
	goto	l10045
u5870:
	
l10033:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u5881
	goto	u5880
u5881:
	goto	l10045
u5880:
	line	815
	
l10035:	
;Beverage_services.c: 814: {
;Beverage_services.c: 815: Lcd_Cmd(0x01);
	movlw	(01h)
	fcall	_Lcd_Cmd
	line	816
	
l10037:	
;Beverage_services.c: 816: Lcd_String("SELECTION",0,0);
	movlw	low(STR_18|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_18|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	817
	
l10039:	
;Beverage_services.c: 817: Lcd_String(" MODE",0,0);
	movlw	low(STR_19|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_19|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	818
;Beverage_services.c: 818: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	819
;Beverage_services.c: 819: time=eeprom_read(10);
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
	line	820
	
l10041:	
;Beverage_services.c: 820: _PRESSED=_NORMAL_COFFEE_BUTTON;
	clrf	(__PRESSED)
	bsf	status,0
	rlf	(__PRESSED),f
	line	821
	
l10043:	
;Beverage_services.c: 821: Lcd_Cmd(0x01);
	movlw	(01h)
	fcall	_Lcd_Cmd
	goto	l10045
	line	822
	
l3361:	
	line	823
	
l10045:	
;Beverage_services.c: 822: }
;Beverage_services.c: 823: if(Enable_Coffee_Dication_Time && (_PREVIOUS_MODE != _ENABLE_MODE))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Coffee_Dication_Time/8),(_Enable_Coffee_Dication_Time)&7
	goto	u5891
	goto	u5890
u5891:
	goto	l10055
u5890:
	
l10047:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u5901
	goto	u5900
u5901:
	goto	l10055
u5900:
	line	825
	
l10049:	
;Beverage_services.c: 824: {
;Beverage_services.c: 825: Lcd_String("COFFEE DICATION",1,0);
	movlw	low(STR_20|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_20|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	826
;Beverage_services.c: 826: Lcd_String("TIME:",0,1);
	movlw	low(STR_21|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_21|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	bsf	status,0
	rlf	0+(?_Lcd_String)+03h,f
	fcall	_Lcd_String
	line	827
	
l10051:	
;Beverage_services.c: 827: time=eeprom_read(118);
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
	line	828
	
l10053:	
;Beverage_services.c: 828: _PRESSED=_NORMAL_TEA_BUTTON;
	movlw	(02h)
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(__PRESSED)
	goto	l10055
	line	829
	
l3362:	
	line	830
	
l10055:	
;Beverage_services.c: 829: }
;Beverage_services.c: 830: if(Enable_Tea_Dication_Time && (_PREVIOUS_MODE != _ENABLE_MODE))
	btfss	(_Enable_Tea_Dication_Time/8),(_Enable_Tea_Dication_Time)&7
	goto	u5911
	goto	u5910
u5911:
	goto	l10065
u5910:
	
l10057:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u5921
	goto	u5920
u5921:
	goto	l10065
u5920:
	line	832
	
l10059:	
;Beverage_services.c: 831: {
;Beverage_services.c: 832: Lcd_String("TEA DICATION",1,0);
	movlw	low(STR_22|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_22|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	833
;Beverage_services.c: 833: Lcd_String("TIME:",0,1);
	movlw	low(STR_23|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_23|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	bsf	status,0
	rlf	0+(?_Lcd_String)+03h,f
	fcall	_Lcd_String
	line	834
	
l10061:	
;Beverage_services.c: 834: time=eeprom_read(119);
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
	line	835
	
l10063:	
;Beverage_services.c: 835: _PRESSED=_NORMAL_TEA_BUTTON;
	movlw	(02h)
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(__PRESSED)
	goto	l10065
	line	836
	
l3363:	
	line	837
	
l10065:	
;Beverage_services.c: 836: }
;Beverage_services.c: 837: if(Enable_Temperature && (_PREVIOUS_MODE != _ENABLE_MODE))
	btfss	(_Enable_Temperature/8),(_Enable_Temperature)&7
	goto	u5931
	goto	u5930
u5931:
	goto	l10075
u5930:
	
l10067:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u5941
	goto	u5940
u5941:
	goto	l10075
u5940:
	line	839
	
l10069:	
;Beverage_services.c: 838: {
;Beverage_services.c: 839: Lcd_String("TEMPERATURE",1,0);
	movlw	low(STR_24|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_24|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	840
	
l10071:	
;Beverage_services.c: 840: time=eeprom_read(120);
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
	line	841
	
l10073:	
;Beverage_services.c: 841: _PRESSED=_NORMAL_TEA_BUTTON;
	movlw	(02h)
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(__PRESSED)
	goto	l10075
	line	842
	
l3364:	
	line	843
	
l10075:	
;Beverage_services.c: 842: }
;Beverage_services.c: 843: if(Enable_Dication_Delay && (_PREVIOUS_MODE != _ENABLE_MODE))
	btfss	(_Enable_Dication_Delay/8),(_Enable_Dication_Delay)&7
	goto	u5951
	goto	u5950
u5951:
	goto	l10085
u5950:
	
l10077:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u5961
	goto	u5960
u5961:
	goto	l10085
u5960:
	line	845
	
l10079:	
;Beverage_services.c: 844: {
;Beverage_services.c: 845: Lcd_String("DICATION DELAY",1,0);
	movlw	low(STR_25|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_25|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	846
;Beverage_services.c: 846: Lcd_String("TIME:",0,1);
	movlw	low(STR_26|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd_String)
	movlw	high(STR_26|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	clrf	0+(?_Lcd_String)+03h
	bsf	status,0
	rlf	0+(?_Lcd_String)+03h,f
	fcall	_Lcd_String
	line	847
	
l10081:	
;Beverage_services.c: 847: time=eeprom_read(121);
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
	line	848
	
l10083:	
;Beverage_services.c: 848: _PRESSED=_NORMAL_TEA_BUTTON;
	movlw	(02h)
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(__PRESSED)
	goto	l10085
	line	849
	
l3365:	
	line	850
	
l10085:	
;Beverage_services.c: 849: }
;Beverage_services.c: 850: if(Enable_Hot_Water_Time && (_PREVIOUS_MODE != _ENABLE_MODE))
	btfss	(_Enable_Hot_Water_Time/8),(_Enable_Hot_Water_Time)&7
	goto	u5971
	goto	u5970
u5971:
	goto	l10095
u5970:
	
l10087:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u5981
	goto	u5980
u5981:
	goto	l10095
u5980:
	line	852
	
l10089:	
;Beverage_services.c: 851: {
;Beverage_services.c: 852: Lcd_String("HOT WATER",1,0);
	movlw	low(STR_27|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_27|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	853
;Beverage_services.c: 853: Lcd_String("TIME:",0,1);
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
	line	854
	
l10091:	
;Beverage_services.c: 854: time=eeprom_read(147);
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
	line	855
	
l10093:	
;Beverage_services.c: 855: _PRESSED=_NORMAL_TEA_BUTTON;
	movlw	(02h)
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(__PRESSED)
	goto	l10095
	line	856
	
l3366:	
	line	857
	
l10095:	
;Beverage_services.c: 856: }
;Beverage_services.c: 857: if(Enable_Cup_Count && (_PREVIOUS_MODE != _ENABLE_MODE))
	btfss	(_Enable_Cup_Count/8),(_Enable_Cup_Count)&7
	goto	u5991
	goto	u5990
u5991:
	goto	l10107
u5990:
	
l10097:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u6001
	goto	u6000
u6001:
	goto	l10107
u6000:
	line	859
	
l10099:	
;Beverage_services.c: 858: {
;Beverage_services.c: 859: Lcd_String("CUP COUNT",1,0);
	movlw	low(STR_29|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_29|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	860
	
l10101:	
;Beverage_services.c: 860: Lcd_Cmd(0xC8); Num_Disp(count_read(126,127),5,0);
	movlw	(0C8h)
	fcall	_Lcd_Cmd
	
l10103:	
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
	line	861
	
l10105:	
;Beverage_services.c: 861: DelayMs(50);
	movlw	low(032h)
	movwf	(?_DelayMs)
	movlw	high(032h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l10107
	line	862
	
l3367:	
	line	863
	
l10107:	
;Beverage_services.c: 862: }
;Beverage_services.c: 863: if(Enable_Count_Reset && (_PREVIOUS_MODE != _ENABLE_MODE))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_Enable_Count_Reset/8),(_Enable_Count_Reset)&7
	goto	u6011
	goto	u6010
u6011:
	goto	l10115
u6010:
	
l10109:	
	movf	(__PREVIOUS_MODE),w
	xorwf	(__ENABLE_MODE),w
	skipnz
	goto	u6021
	goto	u6020
u6021:
	goto	l10115
u6020:
	line	865
	
l10111:	
;Beverage_services.c: 864: {
;Beverage_services.c: 865: Lcd_String("COUNT RESET",1,0);
	movlw	low(STR_30|8000h)
	movwf	(?_Lcd_String)
	movlw	high(STR_30|8000h)
	movwf	((?_Lcd_String))+1
	clrf	0+(?_Lcd_String)+02h
	bsf	status,0
	rlf	0+(?_Lcd_String)+02h,f
	clrf	0+(?_Lcd_String)+03h
	fcall	_Lcd_String
	line	866
	
l10113:	
;Beverage_services.c: 866: _PRESSED=_MILK_BUTTON;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(__PRESSED)
	goto	l10115
	line	867
	
l3368:	
	line	869
	
l10115:	
;Beverage_services.c: 867: }
;Beverage_services.c: 869: _ENABLE_MODE=0;
	clrf	(__ENABLE_MODE)
	line	870
	
l10117:	
;Beverage_services.c: 870: _DISABLE_MODE=0;
	clrf	(__DISABLE_MODE)
	line	871
	
l10119:	
;Beverage_services.c: 871: _PREVIOUS_MODE=_ENABLE_MODE;
	movf	(__ENABLE_MODE),w
	movwf	(??_change_modes+0)+0
	movf	(??_change_modes+0)+0,w
	movwf	(__PREVIOUS_MODE)
	line	872
	
l3369:	
	return
	opt stack 0
GLOBAL	__end_of_change_modes
	__end_of_change_modes:
;; =============== function _change_modes ends ============

	signat	_change_modes,88
	global	_print_yes_no
psect	text852,local,class=CODE,delta=2
global __ptext852
__ptext852:

;; *************** function _print_yes_no *****************
;; Defined at:
;;		line 1157 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
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
psect	text852
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	1157
	global	__size_of_print_yes_no
	__size_of_print_yes_no	equ	__end_of_print_yes_no-_print_yes_no
	
_print_yes_no:	
	opt	stack 4
; Regs used in _print_yes_no: [wreg+status,2+status,0+pclath+cstack]
;print_yes_no@MEM stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(print_yes_no@MEM)
	line	1158
	
l9969:	
;Beverage_services.c: 1158: VALVE=Read_ValveFrom_Memory(MEM);
	movf	(print_yes_no@MEM),w
	fcall	_Read_ValveFrom_Memory
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_print_yes_no+0)+0
	movf	(??_print_yes_no+0)+0,w
	movwf	(_VALVE)
	line	1159
;Beverage_services.c: 1159: Lcd_Cmd(0xC3);
	movlw	(0C3h)
	fcall	_Lcd_Cmd
	line	1160
	
l9971:	
;Beverage_services.c: 1160: if( VALVE.COFFEE_DICATION )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_VALVE),0
	goto	u5761
	goto	u5760
u5761:
	goto	l9975
u5760:
	line	1162
	
l9973:	
;Beverage_services.c: 1161: {
;Beverage_services.c: 1162: Lcd_Data('Y');;
	movlw	(059h)
	fcall	_Lcd_Data
	line	1163
;Beverage_services.c: 1163: }
	goto	l3459
	line	1164
	
l3458:	
	line	1165
	
l9975:	
;Beverage_services.c: 1164: else
;Beverage_services.c: 1165: Lcd_Data('N');;
	movlw	(04Eh)
	fcall	_Lcd_Data
	
l3459:	
	line	1166
;Beverage_services.c: 1166: Lcd_Cmd(0xC5);
	movlw	(0C5h)
	fcall	_Lcd_Cmd
	line	1167
	
l9977:	
;Beverage_services.c: 1167: if( VALVE.TEA_DICATION )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_VALVE),1
	goto	u5771
	goto	u5770
u5771:
	goto	l9981
u5770:
	line	1169
	
l9979:	
;Beverage_services.c: 1168: {
;Beverage_services.c: 1169: Lcd_Data('Y');;
	movlw	(059h)
	fcall	_Lcd_Data
	line	1170
;Beverage_services.c: 1170: }
	goto	l3461
	line	1171
	
l3460:	
	line	1172
	
l9981:	
;Beverage_services.c: 1171: else
;Beverage_services.c: 1172: Lcd_Data('N');;
	movlw	(04Eh)
	fcall	_Lcd_Data
	
l3461:	
	line	1173
;Beverage_services.c: 1173: Lcd_Cmd(0xC7);
	movlw	(0C7h)
	fcall	_Lcd_Cmd
	line	1174
	
l9983:	
;Beverage_services.c: 1174: if( VALVE.MIXING_HOT_WATER )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_VALVE),2
	goto	u5781
	goto	u5780
u5781:
	goto	l9987
u5780:
	line	1176
	
l9985:	
;Beverage_services.c: 1175: {
;Beverage_services.c: 1176: Lcd_Data('Y');;
	movlw	(059h)
	fcall	_Lcd_Data
	line	1177
;Beverage_services.c: 1177: }
	goto	l3463
	line	1178
	
l3462:	
	line	1179
	
l9987:	
;Beverage_services.c: 1178: else
;Beverage_services.c: 1179: Lcd_Data('N');;
	movlw	(04Eh)
	fcall	_Lcd_Data
	
l3463:	
	line	1180
;Beverage_services.c: 1180: Lcd_Cmd(0xC9);
	movlw	(0C9h)
	fcall	_Lcd_Cmd
	line	1181
	
l9989:	
;Beverage_services.c: 1181: if( VALVE.MILK )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_VALVE),3
	goto	u5791
	goto	u5790
u5791:
	goto	l9993
u5790:
	line	1183
	
l9991:	
;Beverage_services.c: 1182: {
;Beverage_services.c: 1183: Lcd_Data('Y');;
	movlw	(059h)
	fcall	_Lcd_Data
	line	1184
;Beverage_services.c: 1184: }
	goto	l3465
	line	1185
	
l3464:	
	line	1186
	
l9993:	
;Beverage_services.c: 1185: else
;Beverage_services.c: 1186: Lcd_Data('N');;
	movlw	(04Eh)
	fcall	_Lcd_Data
	
l3465:	
	line	1187
;Beverage_services.c: 1187: Lcd_Cmd(0xCB);
	movlw	(0CBh)
	fcall	_Lcd_Cmd
	line	1188
	
l9995:	
;Beverage_services.c: 1188: if( VALVE.VIBR_MOTOR)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_VALVE),4
	goto	u5801
	goto	u5800
u5801:
	goto	l9999
u5800:
	line	1190
	
l9997:	
;Beverage_services.c: 1189: {
;Beverage_services.c: 1190: Lcd_Data('Y');;
	movlw	(059h)
	fcall	_Lcd_Data
	line	1191
;Beverage_services.c: 1191: }
	goto	l3467
	line	1192
	
l3466:	
	line	1193
	
l9999:	
;Beverage_services.c: 1192: else
;Beverage_services.c: 1193: Lcd_Data('N');;
	movlw	(04Eh)
	fcall	_Lcd_Data
	
l3467:	
	line	1194
;Beverage_services.c: 1194: Lcd_Cmd(0xCD);
	movlw	(0CDh)
	fcall	_Lcd_Cmd
	line	1195
	
l3468:	
	return
	opt stack 0
GLOBAL	__end_of_print_yes_no
	__end_of_print_yes_no:
;; =============== function _print_yes_no ends ============

	signat	_print_yes_no,4216
	global	_myitoa
psect	text853,local,class=CODE,delta=2
global __ptext853
__ptext853:

;; *************** function _myitoa *****************
;; Defined at:
;;		line 20 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\myitoa.c"
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
psect	text853
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\myitoa.c"
	line	20
	global	__size_of_myitoa
	__size_of_myitoa	equ	__end_of_myitoa-_myitoa
	
_myitoa:	
	opt	stack 4
; Regs used in _myitoa: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	21
	
l9955:	
;myitoa.c: 21: itoai=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_itoai)
	line	22
;myitoa.c: 22: while(val)
	goto	l9963
	
l1422:	
	line	24
	
l9957:	
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
	
l9959:	
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
	
l9961:	
;myitoa.c: 26: itoai++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_myitoa+0)+0
	movf	(??_myitoa+0)+0,w
	addwf	(_itoai),f
	goto	l9963
	line	27
	
l1421:	
	line	22
	
l9963:	
	movf	((myitoa@val+1)),w
	iorwf	((myitoa@val)),w
	skipz
	goto	u5751
	goto	u5750
u5751:
	goto	l9957
u5750:
	goto	l9965
	
l1423:	
	line	28
	
l9965:	
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
	
l9967:	
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
psect	text854,local,class=CODE,delta=2
global __ptext854
__ptext854:

;; *************** function _Num_Disp *****************
;; Defined at:
;;		line 148 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\lcd.c"
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
psect	text854
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\lcd.c"
	line	148
	global	__size_of_Num_Disp
	__size_of_Num_Disp	equ	__end_of_Num_Disp-_Num_Disp
	
_Num_Disp:	
	opt	stack 4
; Regs used in _Num_Disp: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	149
	
l9917:	
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
	goto	u5691
	goto	u5690
u5691:
	goto	l9921
u5690:
	goto	l9927
	
l9919:	
	goto	l9927
	line	151
	
l1401:	
	line	152
	
l9921:	
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
	
l9923:	
	movlw	low(01h)
	subwf	(Num_Disp@i),f
	movlw	high(01h)
	skipc
	decf	(Num_Disp@i+1),f
	subwf	(Num_Disp@i+1),f
	
l9925:	
	movlw	high(03h)
	subwf	(Num_Disp@i+1),w
	movlw	low(03h)
	skipnz
	subwf	(Num_Disp@i),w
	skipnc
	goto	u5701
	goto	u5700
u5701:
	goto	l9921
u5700:
	goto	l9927
	
l1402:	
	line	154
	
l9927:	
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
	goto	u5711
	goto	u5710
u5711:
	goto	l9931
u5710:
	goto	l9943
	
l9929:	
	goto	l9943
	line	155
	
l1403:	
	line	156
	
l9931:	
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
	
l9933:	
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
	
l9935:	
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
	
l9937:	
	movlw	low(01h)
	subwf	(Num_Disp@i),f
	movlw	high(01h)
	skipc
	decf	(Num_Disp@i+1),f
	subwf	(Num_Disp@i+1),f
	
l9939:	
	movlw	low(01h)
	subwf	(Num_Disp@digit),f
	
l9941:	
	movlw	high(03h)
	subwf	(Num_Disp@i+1),w
	movlw	low(03h)
	skipnz
	subwf	(Num_Disp@i),w
	skipnc
	goto	u5721
	goto	u5720
u5721:
	goto	l9931
u5720:
	goto	l9943
	
l1404:	
	line	160
	
l9943:	
;lcd.c: 159: }
;lcd.c: 160: if(digit<3)
	movlw	(03h)
	subwf	(Num_Disp@digit),w
	skipnc
	goto	u5731
	goto	u5730
u5731:
	goto	l1407
u5730:
	line	162
	
l9945:	
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
	
l9947:	
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
	
l9949:	
;lcd.c: 164: if(dot==1)
	movf	(Num_Disp@dot),w
	xorlw	01h
	skipz
	goto	u5741
	goto	u5740
u5741:
	goto	l9953
u5740:
	line	166
	
l9951:	
;lcd.c: 165: {
;lcd.c: 166: Lcd_Data('.');
	movlw	(02Eh)
	fcall	_Lcd_Data
	goto	l9953
	line	167
	
l1406:	
	line	168
	
l9953:	
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
psect	text855,local,class=CODE,delta=2
global __ptext855
__ptext855:

;; *************** function _Lcd_String *****************
;; Defined at:
;;		line 136 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\lcd.c"
;; Parameters:    Size  Location     Type
;;  st              2    5[BANK0 ] PTR const unsigned char 
;;		 -> STR_30(12), STR_29(10), STR_28(6), STR_27(10), 
;;		 -> STR_26(6), STR_25(15), STR_24(12), STR_23(6), 
;;		 -> STR_22(13), STR_21(6), STR_20(16), STR_19(6), 
;;		 -> STR_18(10), STR_17(7), STR_16(15), STR_15(11), 
;;		 -> STR_14(9), STR_13(12), STR_12(9), STR_11(14), 
;;		 -> STR_10(14), STR_9(13), STR_8(15), STR_7(16), 
;;		 -> STR_6(17), STR_5(4), STR_4(6), STR_3(6), 
;;		 -> STR_2(17), STR_1(16), buff(4), 
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
;;		_enable_valves
;;		_change_modes
;;		_call_control_valve
;; This function uses a non-reentrant model
;;
psect	text855
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\lcd.c"
	line	136
	global	__size_of_Lcd_String
	__size_of_Lcd_String	equ	__end_of_Lcd_String-_Lcd_String
	
_Lcd_String:	
	opt	stack 4
; Regs used in _Lcd_String: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	137
	
l9903:	
;lcd.c: 137: if(clear==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd_String@clear),w
	xorlw	01h
	skipz
	goto	u5661
	goto	u5660
u5661:
	goto	l9907
u5660:
	line	138
	
l9905:	
;lcd.c: 138: Lcd_Cmd(0x01);
	movlw	(01h)
	fcall	_Lcd_Cmd
	goto	l9907
	
l1393:	
	line	139
	
l9907:	
;lcd.c: 139: if(second_line==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd_String@second_line),w
	xorlw	01h
	skipz
	goto	u5671
	goto	u5670
u5671:
	goto	l9915
u5670:
	line	140
	
l9909:	
;lcd.c: 140: Lcd_Cmd(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Cmd
	goto	l9915
	
l1394:	
	line	141
;lcd.c: 141: while(*st)
	goto	l9915
	
l1396:	
	line	143
	
l9911:	
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
	
l9913:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(Lcd_String@st),f
	skipnc
	incf	(Lcd_String@st+1),f
	movlw	high(01h)
	addwf	(Lcd_String@st+1),f
	goto	l9915
	line	144
	
l1395:	
	line	141
	
l9915:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd_String@st+1),w
	movwf	btemp+1
	movf	(Lcd_String@st),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u5681
	goto	u5680
u5681:
	goto	l9911
u5680:
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
psect	text856,local,class=CODE,delta=2
global __ptext856
__ptext856:

;; *************** function _Lcd_Init *****************
;; Defined at:
;;		line 92 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\lcd.c"
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
psect	text856
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\lcd.c"
	line	92
	global	__size_of_Lcd_Init
	__size_of_Lcd_Init	equ	__end_of_Lcd_Init-_Lcd_Init
	
_Lcd_Init:	
	opt	stack 5
; Regs used in _Lcd_Init: [wreg+status,2+status,0+pclath+cstack]
	line	93
	
l9901:	
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
psect	text857,local,class=CODE,delta=2
global __ptext857
__ptext857:

;; *************** function _control_valve *****************
;; Defined at:
;;		line 1026 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
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
psect	text857
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	1026
	global	__size_of_control_valve
	__size_of_control_valve	equ	__end_of_control_valve-_control_valve
	
_control_valve:	
	opt	stack 4
; Regs used in _control_valve: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	1027
	
l9895:	
;Beverage_services.c: 1027: onthevalve();
	fcall	_onthevalve
	line	1031
	
l9897:	
;Beverage_services.c: 1031: DelayMs(load_time*100);
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
	line	1033
	
l9899:	
;Beverage_services.c: 1033: offthevalve();
	fcall	_offthevalve
	line	1037
;Beverage_services.c: 1037: DelayMs(delay_time*100);
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
	line	1038
	
l3391:	
	return
	opt stack 0
GLOBAL	__end_of_control_valve
	__end_of_control_valve:
;; =============== function _control_valve ends ============

	signat	_control_valve,8312
	global	_count_read
psect	text858,local,class=CODE,delta=2
global __ptext858
__ptext858:

;; *************** function _count_read *****************
;; Defined at:
;;		line 1131 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
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
psect	text858
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	1131
	global	__size_of_count_read
	__size_of_count_read	equ	__end_of_count_read-_count_read
	
_count_read:	
	opt	stack 5
; Regs used in _count_read: [wreg+status,2+status,0+pclath+cstack]
;count_read@addr1 stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(count_read@addr1)
	line	1132
	
l9891:	
;Beverage_services.c: 1132: return (eeprom_read(addr2)*255)+eeprom_read(addr1);
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
	goto	l3429
	
l9893:	
	line	1133
	
l3429:	
	return
	opt stack 0
GLOBAL	__end_of_count_read
	__end_of_count_read:
;; =============== function _count_read ends ============

	signat	_count_read,8314
	global	_Write_ValveIn_Memory
psect	text859,local,class=CODE,delta=2
global __ptext859
__ptext859:

;; *************** function _Write_ValveIn_Memory *****************
;; Defined at:
;;		line 1136 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
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
psect	text859
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	1136
	global	__size_of_Write_ValveIn_Memory
	__size_of_Write_ValveIn_Memory	equ	__end_of_Write_ValveIn_Memory-_Write_ValveIn_Memory
	
_Write_ValveIn_Memory:	
	opt	stack 5
; Regs used in _Write_ValveIn_Memory: [wreg+status,2+status,0+pclath+cstack]
;Write_ValveIn_Memory@VALVE stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Write_ValveIn_Memory@VALVE)
	line	1137
	
l9859:	
;Beverage_services.c: 1137: unsigned char chr=0x00;
	clrf	(Write_ValveIn_Memory@chr)
	line	1138
;Beverage_services.c: 1138: chr=(VALVE.MIXING_HOT_WATER==1)?(chr | 0x01):(chr & 0xFE);
	btfsc	(Write_ValveIn_Memory@VALVE),2
	goto	u5611
	goto	u5610
u5611:
	goto	l9863
u5610:
	
l9861:	
	movf	(Write_ValveIn_Memory@chr),w
	andlw	0FEh
	movwf	(??_Write_ValveIn_Memory+0)+0
	clrf	(??_Write_ValveIn_Memory+0)+0+1
	movf	0+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4130)
	movf	1+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4130+1)
	goto	l3435
	
l3433:	
	
l9863:	
	movlw	low(01h)
	iorwf	(Write_ValveIn_Memory@chr),w
	movwf	(_Write_ValveIn_Memory$4130)
	movlw	high(01h)
	movwf	1+(_Write_ValveIn_Memory$4130)
	
l3435:	
	movf	(_Write_ValveIn_Memory$4130),w
	movwf	(??_Write_ValveIn_Memory+0)+0
	movf	(??_Write_ValveIn_Memory+0)+0,w
	movwf	(Write_ValveIn_Memory@chr)
	line	1139
	
l9865:	
;Beverage_services.c: 1139: chr=(VALVE.MILK==1)?(chr | 0x02):(chr & 0xFD);
	btfsc	(Write_ValveIn_Memory@VALVE),3
	goto	u5621
	goto	u5620
u5621:
	goto	l9869
u5620:
	
l9867:	
	movf	(Write_ValveIn_Memory@chr),w
	andlw	0FDh
	movwf	(??_Write_ValveIn_Memory+0)+0
	clrf	(??_Write_ValveIn_Memory+0)+0+1
	movf	0+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4131)
	movf	1+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4131+1)
	goto	l3439
	
l3437:	
	
l9869:	
	movlw	low(02h)
	iorwf	(Write_ValveIn_Memory@chr),w
	movwf	(_Write_ValveIn_Memory$4131)
	movlw	high(02h)
	movwf	1+(_Write_ValveIn_Memory$4131)
	
l3439:	
	movf	(_Write_ValveIn_Memory$4131),w
	movwf	(??_Write_ValveIn_Memory+0)+0
	movf	(??_Write_ValveIn_Memory+0)+0,w
	movwf	(Write_ValveIn_Memory@chr)
	line	1140
	
l9871:	
;Beverage_services.c: 1140: chr=(VALVE.COFFEE_DICATION==1)? (chr | 0x04):(chr & 0xFB);
	btfsc	(Write_ValveIn_Memory@VALVE),0
	goto	u5631
	goto	u5630
u5631:
	goto	l9875
u5630:
	
l9873:	
	movf	(Write_ValveIn_Memory@chr),w
	andlw	0FBh
	movwf	(??_Write_ValveIn_Memory+0)+0
	clrf	(??_Write_ValveIn_Memory+0)+0+1
	movf	0+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4132)
	movf	1+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4132+1)
	goto	l3443
	
l3441:	
	
l9875:	
	movlw	low(04h)
	iorwf	(Write_ValveIn_Memory@chr),w
	movwf	(_Write_ValveIn_Memory$4132)
	movlw	high(04h)
	movwf	1+(_Write_ValveIn_Memory$4132)
	
l3443:	
	movf	(_Write_ValveIn_Memory$4132),w
	movwf	(??_Write_ValveIn_Memory+0)+0
	movf	(??_Write_ValveIn_Memory+0)+0,w
	movwf	(Write_ValveIn_Memory@chr)
	line	1141
	
l9877:	
;Beverage_services.c: 1141: chr=(VALVE.TEA_DICATION==1)? (chr | 0x08):(chr & 0xF7);
	btfsc	(Write_ValveIn_Memory@VALVE),1
	goto	u5641
	goto	u5640
u5641:
	goto	l9881
u5640:
	
l9879:	
	movf	(Write_ValveIn_Memory@chr),w
	andlw	0F7h
	movwf	(??_Write_ValveIn_Memory+0)+0
	clrf	(??_Write_ValveIn_Memory+0)+0+1
	movf	0+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4133)
	movf	1+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4133+1)
	goto	l3447
	
l3445:	
	
l9881:	
	movlw	low(08h)
	iorwf	(Write_ValveIn_Memory@chr),w
	movwf	(_Write_ValveIn_Memory$4133)
	movlw	high(08h)
	movwf	1+(_Write_ValveIn_Memory$4133)
	
l3447:	
	movf	(_Write_ValveIn_Memory$4133),w
	movwf	(??_Write_ValveIn_Memory+0)+0
	movf	(??_Write_ValveIn_Memory+0)+0,w
	movwf	(Write_ValveIn_Memory@chr)
	line	1142
	
l9883:	
;Beverage_services.c: 1142: chr=(VALVE.VIBR_MOTOR==1)? (chr | 0x10):(chr & 0xEF);
	btfsc	(Write_ValveIn_Memory@VALVE),4
	goto	u5651
	goto	u5650
u5651:
	goto	l9887
u5650:
	
l9885:	
	movf	(Write_ValveIn_Memory@chr),w
	andlw	0EFh
	movwf	(??_Write_ValveIn_Memory+0)+0
	clrf	(??_Write_ValveIn_Memory+0)+0+1
	movf	0+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4134)
	movf	1+(??_Write_ValveIn_Memory+0)+0,w
	movwf	(_Write_ValveIn_Memory$4134+1)
	goto	l3451
	
l3449:	
	
l9887:	
	movlw	low(010h)
	iorwf	(Write_ValveIn_Memory@chr),w
	movwf	(_Write_ValveIn_Memory$4134)
	movlw	high(010h)
	movwf	1+(_Write_ValveIn_Memory$4134)
	
l3451:	
	movf	(_Write_ValveIn_Memory$4134),w
	movwf	(??_Write_ValveIn_Memory+0)+0
	movf	(??_Write_ValveIn_Memory+0)+0,w
	movwf	(Write_ValveIn_Memory@chr)
	line	1143
	
l9889:	
;Beverage_services.c: 1143: eeprom_write(loc,chr);
	movf	(Write_ValveIn_Memory@chr),w
	movwf	(??_Write_ValveIn_Memory+0)+0
	movf	(??_Write_ValveIn_Memory+0)+0,w
	movwf	(?_eeprom_write)
	movf	(Write_ValveIn_Memory@loc),w
	fcall	_eeprom_write
	line	1144
	
l3452:	
	return
	opt stack 0
GLOBAL	__end_of_Write_ValveIn_Memory
	__end_of_Write_ValveIn_Memory:
;; =============== function _Write_ValveIn_Memory ends ============

	signat	_Write_ValveIn_Memory,8312
	global	_count_write
psect	text860,local,class=CODE,delta=2
global __ptext860
__ptext860:

;; *************** function _count_write *****************
;; Defined at:
;;		line 1118 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
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
psect	text860
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	1118
	global	__size_of_count_write
	__size_of_count_write	equ	__end_of_count_write-_count_write
	
_count_write:	
	opt	stack 5
; Regs used in _count_write: [wreg+status,2+status,0+pclath+cstack]
;count_write@addr1 stored from wreg
	movwf	(count_write@addr1)
	line	1119
	
l9853:	
;Beverage_services.c: 1119: if(count<=255)
	movlw	high(0100h)
	subwf	(count_write@count+1),w
	movlw	low(0100h)
	skipnz
	subwf	(count_write@count),w
	skipnc
	goto	u5601
	goto	u5600
u5601:
	goto	l9857
u5600:
	line	1121
	
l9855:	
;Beverage_services.c: 1120: {
;Beverage_services.c: 1121: eeprom_write(addr1,count);
	movf	(count_write@count),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_count_write+0)+0
	movf	(??_count_write+0)+0,w
	movwf	(?_eeprom_write)
	movf	(count_write@addr1),w
	fcall	_eeprom_write
	line	1122
;Beverage_services.c: 1122: }
	goto	l3426
	line	1123
	
l3424:	
	line	1125
	
l9857:	
;Beverage_services.c: 1123: else
;Beverage_services.c: 1124: {
;Beverage_services.c: 1125: eeprom_write(addr1,count-255);
	movf	(count_write@count),w
	addlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_count_write+0)+0
	movf	(??_count_write+0)+0,w
	movwf	(?_eeprom_write)
	movf	(count_write@addr1),w
	fcall	_eeprom_write
	line	1126
;Beverage_services.c: 1126: eeprom_write(addr2,(eeprom_read(addr2)+count-255));
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
	goto	l3426
	line	1127
	
l3425:	
	line	1128
	
l3426:	
	return
	opt stack 0
GLOBAL	__end_of_count_write
	__end_of_count_write:
;; =============== function _count_write ends ============

	signat	_count_write,12408
	global	_Read_ValveFrom_Memory
psect	text861,local,class=CODE,delta=2
global __ptext861
__ptext861:

;; *************** function _Read_ValveFrom_Memory *****************
;; Defined at:
;;		line 1147 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
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
psect	text861
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	1147
	global	__size_of_Read_ValveFrom_Memory
	__size_of_Read_ValveFrom_Memory	equ	__end_of_Read_ValveFrom_Memory-_Read_ValveFrom_Memory
	
_Read_ValveFrom_Memory:	
	opt	stack 4
; Regs used in _Read_ValveFrom_Memory: [wreg+status,2+status,0+pclath+cstack]
;Read_ValveFrom_Memory@MEM stored from wreg
	movwf	(Read_ValveFrom_Memory@MEM)
	line	1148
	
l9847:	
;Beverage_services.c: 1148: VALVE.MIXING_HOT_WATER= (eeprom_read(MEM)&0x01)>0?1:0;
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
	line	1149
;Beverage_services.c: 1149: VALVE.MILK= (eeprom_read(MEM)&0x02)>0?1:0;
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
	line	1150
;Beverage_services.c: 1150: VALVE.COFFEE_DICATION= (eeprom_read(MEM)&0x04)>0?1:0;
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
	line	1151
;Beverage_services.c: 1151: VALVE.TEA_DICATION= (eeprom_read(MEM)&0x08)>0?1:0;
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
	line	1152
;Beverage_services.c: 1152: VALVE.VIBR_MOTOR= (eeprom_read(MEM)&0x10)>0?1:0;
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
	line	1153
	
l9849:	
;Beverage_services.c: 1153: return VALVE;
	movf	(_VALVE),w
	goto	l3455
	
l9851:	
	line	1154
	
l3455:	
	return
	opt stack 0
GLOBAL	__end_of_Read_ValveFrom_Memory
	__end_of_Read_ValveFrom_Memory:
;; =============== function _Read_ValveFrom_Memory ends ============

	signat	_Read_ValveFrom_Memory,4217
	global	_Print_Menu
psect	text862,local,class=CODE,delta=2
global __ptext862
__ptext862:

;; *************** function _Print_Menu *****************
;; Defined at:
;;		line 14 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SendByteSerially
;; This function is called by:
;;		_enable_valves
;; This function uses a non-reentrant model
;;
psect	text862
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	14
	global	__size_of_Print_Menu
	__size_of_Print_Menu	equ	__end_of_Print_Menu-_Print_Menu
	
_Print_Menu:	
	opt	stack 5
; Regs used in _Print_Menu: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	15
	
l9823:	
;Beverage_services.c: 15: switch(_PRESSED)
	goto	l9845
	line	17
;Beverage_services.c: 16: {
;Beverage_services.c: 17: case _NORMAL_COFFEE_BUTTON: SendByteSerially(0x02);
	
l3089:	
	
l9825:	
	movlw	(02h)
	fcall	_SendByteSerially
	line	18
;Beverage_services.c: 18: break;
	goto	l3099
	line	19
;Beverage_services.c: 19: case _NORMAL_TEA_BUTTON: SendByteSerially(0x03);
	
l3091:	
	
l9827:	
	movlw	(03h)
	fcall	_SendByteSerially
	line	20
;Beverage_services.c: 20: break;
	goto	l3099
	line	21
;Beverage_services.c: 21: case _LIGHT_COFFEE_BUTTON: SendByteSerially(0x04);
	
l3092:	
	
l9829:	
	movlw	(04h)
	fcall	_SendByteSerially
	line	22
;Beverage_services.c: 22: break;
	goto	l3099
	line	23
;Beverage_services.c: 23: case _LIGHT_TEA_BUTTON: SendByteSerially(0x05);
	
l3093:	
	
l9831:	
	movlw	(05h)
	fcall	_SendByteSerially
	line	24
;Beverage_services.c: 24: break;
	goto	l3099
	line	25
;Beverage_services.c: 25: case _BLACK_COFFEE_BUTTON: SendByteSerially(0x06);
	
l3094:	
	
l9833:	
	movlw	(06h)
	fcall	_SendByteSerially
	line	26
;Beverage_services.c: 26: break;
	goto	l3099
	line	27
;Beverage_services.c: 27: case _BLACK_TEA_BUTTON: SendByteSerially(0x07);
	
l3095:	
	
l9835:	
	movlw	(07h)
	fcall	_SendByteSerially
	line	28
;Beverage_services.c: 28: break;
	goto	l3099
	line	29
;Beverage_services.c: 29: case _MILK_BUTTON: SendByteSerially(0x08);
	
l3096:	
	
l9837:	
	movlw	(08h)
	fcall	_SendByteSerially
	line	30
;Beverage_services.c: 30: break;
	goto	l3099
	line	31
;Beverage_services.c: 31: case _HOT_WATER_BUTTON: SendByteSerially(0x09);
	
l3097:	
	
l9839:	
	movlw	(09h)
	fcall	_SendByteSerially
	line	32
;Beverage_services.c: 32: break;
	goto	l3099
	line	33
;Beverage_services.c: 33: case _EXTRA_BUTTON: SendByteSerially(0x0A);
	
l3098:	
	
l9841:	
	movlw	(0Ah)
	fcall	_SendByteSerially
	line	34
;Beverage_services.c: 34: break;
	goto	l3099
	line	35
	
l9843:	
;Beverage_services.c: 35: }
	goto	l3099
	line	15
	
l3088:	
	
l9845:	
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
	goto	l9825
	xorlw	2^1	; case 2
	skipnz
	goto	l9827
	xorlw	3^2	; case 3
	skipnz
	goto	l9829
	xorlw	4^3	; case 4
	skipnz
	goto	l9831
	xorlw	5^4	; case 5
	skipnz
	goto	l9833
	xorlw	6^5	; case 6
	skipnz
	goto	l9835
	xorlw	7^6	; case 7
	skipnz
	goto	l9837
	xorlw	8^7	; case 8
	skipnz
	goto	l9841
	xorlw	9^8	; case 9
	skipnz
	goto	l9839
	goto	l3099
	opt asmopt_on

	line	35
	
l3090:	
	line	36
	
l3099:	
	return
	opt stack 0
GLOBAL	__end_of_Print_Menu
	__end_of_Print_Menu:
;; =============== function _Print_Menu ends ============

	signat	_Print_Menu,88
	global	_Print_Name
psect	text863,local,class=CODE,delta=2
global __ptext863
__ptext863:

;; *************** function _Print_Name *****************
;; Defined at:
;;		line 9 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
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
;;		_SendByteSerially
;; This function is called by:
;;		_main
;;		_enable_valves
;;		_change_modes
;; This function uses a non-reentrant model
;;
psect	text863
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	9
	global	__size_of_Print_Name
	__size_of_Print_Name	equ	__end_of_Print_Name-_Print_Name
	
_Print_Name:	
	opt	stack 5
; Regs used in _Print_Name: [wreg+status,2+status,0+pclath+cstack]
	line	10
	
l9821:	
;Beverage_services.c: 10: SendByteSerially(0x01);
	movlw	(01h)
	fcall	_SendByteSerially
	line	11
	
l3085:	
	return
	opt stack 0
GLOBAL	__end_of_Print_Name
	__end_of_Print_Name:
;; =============== function _Print_Name ends ============

	signat	_Print_Name,88
	global	_Inidcate_Buzzer
psect	text864,local,class=CODE,delta=2
global __ptext864
__ptext864:

;; *************** function _Inidcate_Buzzer *****************
;; Defined at:
;;		line 39 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
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
psect	text864
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	39
	global	__size_of_Inidcate_Buzzer
	__size_of_Inidcate_Buzzer	equ	__end_of_Inidcate_Buzzer-_Inidcate_Buzzer
	
_Inidcate_Buzzer:	
	opt	stack 5
; Regs used in _Inidcate_Buzzer: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l9815:	
;Beverage_services.c: 40: RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	41
	
l9817:	
;Beverage_services.c: 41: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	42
	
l9819:	
;Beverage_services.c: 42: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	43
	
l3102:	
	return
	opt stack 0
GLOBAL	__end_of_Inidcate_Buzzer
	__end_of_Inidcate_Buzzer:
;; =============== function _Inidcate_Buzzer ends ============

	signat	_Inidcate_Buzzer,88
	global	_Uart_Init
psect	text865,local,class=CODE,delta=2
global __ptext865
__ptext865:

;; *************** function _Uart_Init *****************
;; Defined at:
;;		line 6 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\uart.c"
;; Parameters:    Size  Location     Type
;;  baudrate        4    6[BANK0 ] const long 
;; Auto vars:     Size  Location     Type
;;  x               2    9[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0      12       0       0       0
;;      Totals:         2      16       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text865
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\uart.c"
	line	6
	global	__size_of_Uart_Init
	__size_of_Uart_Init	equ	__end_of_Uart_Init-_Uart_Init
	
_Uart_Init:	
	opt	stack 6
; Regs used in _Uart_Init: [wreg+status,2+status,0+pclath+cstack]
	line	8
	
l9789:	
;uart.c: 7: unsigned int x;
;uart.c: 8: x = (20000000 - baudrate*64)/(baudrate*64);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Uart_Init@baudrate),w
	movwf	(??_Uart_Init+0)+0
	movf	(Uart_Init@baudrate+1),w
	movwf	((??_Uart_Init+0)+0+1)
	movf	(Uart_Init@baudrate+2),w
	movwf	((??_Uart_Init+0)+0+2)
	movf	(Uart_Init@baudrate+3),w
	movwf	((??_Uart_Init+0)+0+3)
	movlw	06h
u5525:
	clrc
	rlf	(??_Uart_Init+0)+0,f
	rlf	(??_Uart_Init+0)+1,f
	rlf	(??_Uart_Init+0)+2,f
	rlf	(??_Uart_Init+0)+3,f
u5520:
	addlw	-1
	skipz
	goto	u5525
	movf	3+(??_Uart_Init+0)+0,w
	movwf	(?___aldiv+3)
	movf	2+(??_Uart_Init+0)+0,w
	movwf	(?___aldiv+2)
	movf	1+(??_Uart_Init+0)+0,w
	movwf	(?___aldiv+1)
	movf	0+(??_Uart_Init+0)+0,w
	movwf	(?___aldiv)

	movlw	0
	movwf	((??_Uart_Init+4)+0)
	movlw	02Dh
	movwf	((??_Uart_Init+4)+0+1)
	movlw	031h
	movwf	((??_Uart_Init+4)+0+2)
	movlw	01h
	movwf	((??_Uart_Init+4)+0+3)
	movf	(Uart_Init@baudrate),w
	movwf	(??_Uart_Init+8)+0
	movf	(Uart_Init@baudrate+1),w
	movwf	((??_Uart_Init+8)+0+1)
	movf	(Uart_Init@baudrate+2),w
	movwf	((??_Uart_Init+8)+0+2)
	movf	(Uart_Init@baudrate+3),w
	movwf	((??_Uart_Init+8)+0+3)
	movlw	06h
u5535:
	clrc
	rlf	(??_Uart_Init+8)+0,f
	rlf	(??_Uart_Init+8)+1,f
	rlf	(??_Uart_Init+8)+2,f
	rlf	(??_Uart_Init+8)+3,f
u5530:
	addlw	-1
	skipz
	goto	u5535
	comf	(??_Uart_Init+8)+0,f
	comf	(??_Uart_Init+8)+1,f
	comf	(??_Uart_Init+8)+2,f
	comf	(??_Uart_Init+8)+3,f
	incf	(??_Uart_Init+8)+0,f
	skipnz
	incf	(??_Uart_Init+8)+1,f
	skipnz
	incf	(??_Uart_Init+8)+2,f
	skipnz
	incf	(??_Uart_Init+8)+3,f
	movf	0+(??_Uart_Init+8)+0,w
	addwf	(??_Uart_Init+4)+0,f
	movf	1+(??_Uart_Init+8)+0,w
	skipnc
	incfsz	1+(??_Uart_Init+8)+0,w
	goto	u5540
	goto	u5541
u5540:
	addwf	(??_Uart_Init+4)+1,f
u5541:
	movf	2+(??_Uart_Init+8)+0,w
	skipnc
	incfsz	2+(??_Uart_Init+8)+0,w
	goto	u5542
	goto	u5543
u5542:
	addwf	(??_Uart_Init+4)+2,f
u5543:
	movf	3+(??_Uart_Init+8)+0,w
	skipnc
	incf	3+(??_Uart_Init+8)+0,w
	addwf	(??_Uart_Init+4)+3,f
	movf	3+(??_Uart_Init+4)+0,w
	movwf	3+(?___aldiv)+04h
	movf	2+(??_Uart_Init+4)+0,w
	movwf	2+(?___aldiv)+04h
	movf	1+(??_Uart_Init+4)+0,w
	movwf	1+(?___aldiv)+04h
	movf	0+(??_Uart_Init+4)+0,w
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	1+(((0+(?___aldiv)))),w
	clrf	(Uart_Init@x+1)
	addwf	(Uart_Init@x+1)
	movf	0+(((0+(?___aldiv)))),w
	clrf	(Uart_Init@x)
	addwf	(Uart_Init@x)

	line	9
	
l9791:	
;uart.c: 9: if(x>255)
	movlw	high(0100h)
	subwf	(Uart_Init@x+1),w
	movlw	low(0100h)
	skipnz
	subwf	(Uart_Init@x),w
	skipc
	goto	u5551
	goto	u5550
u5551:
	goto	l9797
u5550:
	line	11
	
l9793:	
;uart.c: 10: {
;uart.c: 11: x = (20000000 - baudrate*16)/(baudrate*16);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Uart_Init@baudrate),w
	movwf	(??_Uart_Init+0)+0
	movf	(Uart_Init@baudrate+1),w
	movwf	((??_Uart_Init+0)+0+1)
	movf	(Uart_Init@baudrate+2),w
	movwf	((??_Uart_Init+0)+0+2)
	movf	(Uart_Init@baudrate+3),w
	movwf	((??_Uart_Init+0)+0+3)
	movlw	04h
u5565:
	clrc
	rlf	(??_Uart_Init+0)+0,f
	rlf	(??_Uart_Init+0)+1,f
	rlf	(??_Uart_Init+0)+2,f
	rlf	(??_Uart_Init+0)+3,f
u5560:
	addlw	-1
	skipz
	goto	u5565
	movf	3+(??_Uart_Init+0)+0,w
	movwf	(?___aldiv+3)
	movf	2+(??_Uart_Init+0)+0,w
	movwf	(?___aldiv+2)
	movf	1+(??_Uart_Init+0)+0,w
	movwf	(?___aldiv+1)
	movf	0+(??_Uart_Init+0)+0,w
	movwf	(?___aldiv)

	movlw	0
	movwf	((??_Uart_Init+4)+0)
	movlw	02Dh
	movwf	((??_Uart_Init+4)+0+1)
	movlw	031h
	movwf	((??_Uart_Init+4)+0+2)
	movlw	01h
	movwf	((??_Uart_Init+4)+0+3)
	movf	(Uart_Init@baudrate),w
	movwf	(??_Uart_Init+8)+0
	movf	(Uart_Init@baudrate+1),w
	movwf	((??_Uart_Init+8)+0+1)
	movf	(Uart_Init@baudrate+2),w
	movwf	((??_Uart_Init+8)+0+2)
	movf	(Uart_Init@baudrate+3),w
	movwf	((??_Uart_Init+8)+0+3)
	movlw	04h
u5575:
	clrc
	rlf	(??_Uart_Init+8)+0,f
	rlf	(??_Uart_Init+8)+1,f
	rlf	(??_Uart_Init+8)+2,f
	rlf	(??_Uart_Init+8)+3,f
u5570:
	addlw	-1
	skipz
	goto	u5575
	comf	(??_Uart_Init+8)+0,f
	comf	(??_Uart_Init+8)+1,f
	comf	(??_Uart_Init+8)+2,f
	comf	(??_Uart_Init+8)+3,f
	incf	(??_Uart_Init+8)+0,f
	skipnz
	incf	(??_Uart_Init+8)+1,f
	skipnz
	incf	(??_Uart_Init+8)+2,f
	skipnz
	incf	(??_Uart_Init+8)+3,f
	movf	0+(??_Uart_Init+8)+0,w
	addwf	(??_Uart_Init+4)+0,f
	movf	1+(??_Uart_Init+8)+0,w
	skipnc
	incfsz	1+(??_Uart_Init+8)+0,w
	goto	u5580
	goto	u5581
u5580:
	addwf	(??_Uart_Init+4)+1,f
u5581:
	movf	2+(??_Uart_Init+8)+0,w
	skipnc
	incfsz	2+(??_Uart_Init+8)+0,w
	goto	u5582
	goto	u5583
u5582:
	addwf	(??_Uart_Init+4)+2,f
u5583:
	movf	3+(??_Uart_Init+8)+0,w
	skipnc
	incf	3+(??_Uart_Init+8)+0,w
	addwf	(??_Uart_Init+4)+3,f
	movf	3+(??_Uart_Init+4)+0,w
	movwf	3+(?___aldiv)+04h
	movf	2+(??_Uart_Init+4)+0,w
	movwf	2+(?___aldiv)+04h
	movf	1+(??_Uart_Init+4)+0,w
	movwf	1+(?___aldiv)+04h
	movf	0+(??_Uart_Init+4)+0,w
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	1+(((0+(?___aldiv)))),w
	clrf	(Uart_Init@x+1)
	addwf	(Uart_Init@x+1)
	movf	0+(((0+(?___aldiv)))),w
	clrf	(Uart_Init@x)
	addwf	(Uart_Init@x)

	line	12
	
l9795:	
;uart.c: 12: BRGH = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7
	goto	l9797
	line	13
	
l4163:	
	line	14
	
l9797:	
;uart.c: 13: }
;uart.c: 14: if(x<256)
	movlw	high(0100h)
	subwf	(Uart_Init@x+1),w
	movlw	low(0100h)
	skipnz
	subwf	(Uart_Init@x),w
	skipnc
	goto	u5591
	goto	u5590
u5591:
	goto	l4165
u5590:
	line	16
	
l9799:	
;uart.c: 15: {
;uart.c: 16: SPBRG = x;
	movf	(Uart_Init@x),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	17
	
l9801:	
;uart.c: 17: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	18
	
l9803:	
;uart.c: 18: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	20
	
l9805:	
;uart.c: 20: CREN = 1;
	bsf	(196/8),(196)&7
	line	21
	
l9807:	
;uart.c: 21: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	line	23
	
l9809:	
;uart.c: 23: GIE = 1;
	bsf	(95/8),(95)&7
	line	24
	
l9811:	
;uart.c: 24: PEIE = 1;
	bsf	(94/8),(94)&7
	line	25
	
l9813:	
;uart.c: 25: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	goto	l4165
	line	26
	
l4164:	
	line	27
	
l4165:	
	return
	opt stack 0
GLOBAL	__end_of_Uart_Init
	__end_of_Uart_Init:
;; =============== function _Uart_Init ends ============

	signat	_Uart_Init,4216
	global	_rev
psect	text866,local,class=CODE,delta=2
global __ptext866
__ptext866:

;; *************** function _rev *****************
;; Defined at:
;;		line 5 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\myitoa.c"
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
psect	text866
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\myitoa.c"
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
	
l9769:	
;myitoa.c: 6: char t,*f,*l;
;myitoa.c: 7: for(f=buf,l=buf+strlen(buf)-1;f<l;f++,l--)
	movf	(rev@buf),w
	movwf	(??_rev+0)+0
	movf	(??_rev+0)+0,w
	movwf	(rev@f)
	
l9771:	
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
	goto	l9787
	line	8
	
l1415:	
	line	9
	
l9773:	
;myitoa.c: 8: {
;myitoa.c: 9: if(*buf == '-')
	movf	(rev@buf),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u5501
	goto	u5500
u5501:
	goto	l9777
u5500:
	line	11
	
l9775:	
;myitoa.c: 10: {
;myitoa.c: 11: buf++;
	movlw	(01h)
	movwf	(??_rev+0)+0
	movf	(??_rev+0)+0,w
	addwf	(rev@buf),f
	goto	l9777
	line	12
	
l1416:	
	line	13
	
l9777:	
;myitoa.c: 12: }
;myitoa.c: 13: t=*f;
	movf	(rev@f),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_rev+0)+0
	movf	(??_rev+0)+0,w
	movwf	(rev@t)
	line	14
	
l9779:	
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
	
l9781:	
;myitoa.c: 15: *l=t;
	movf	(rev@t),w
	movwf	(??_rev+0)+0
	movf	(rev@l),w
	movwf	fsr0
	movf	(??_rev+0)+0,w
	movwf	indf
	line	7
	
l9783:	
	movlw	(01h)
	movwf	(??_rev+0)+0
	movf	(??_rev+0)+0,w
	addwf	(rev@f),f
	
l9785:	
	movlw	low(01h)
	subwf	(rev@l),f
	goto	l9787
	
l1414:	
	
l9787:	
	movf	(rev@l),w
	subwf	(rev@f),w
	skipc
	goto	u5511
	goto	u5510
u5511:
	goto	l9773
u5510:
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
psect	text867,local,class=CODE,delta=2
global __ptext867
__ptext867:

;; *************** function _Lcd_Data *****************
;; Defined at:
;;		line 121 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\lcd.c"
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
psect	text867
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\lcd.c"
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
	
l9747:	
;lcd.c: 122: PORTD=x & 0XF0;
	movf	(Lcd_Data@x),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	123
	
l9749:	
;lcd.c: 123: RD2=1;
	bsf	(66/8),(66)&7
	line	124
	
l9751:	
;lcd.c: 124: RD3=1;
	bsf	(67/8),(67)&7
	line	125
	
l9753:	
;lcd.c: 125: DelayMs(5);
	movlw	low(05h)
	movwf	(?_DelayMs)
	movlw	high(05h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	126
	
l9755:	
;lcd.c: 126: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	127
	
l9757:	
;lcd.c: 127: DelayMs(5);
	movlw	low(05h)
	movwf	(?_DelayMs)
	movlw	high(05h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	128
	
l9759:	
;lcd.c: 128: PORTD=x << 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd_Data@x),w
	movwf	(??_Lcd_Data+0)+0
	movlw	(04h)-1
u5495:
	clrc
	rlf	(??_Lcd_Data+0)+0,f
	addlw	-1
	skipz
	goto	u5495
	clrc
	rlf	(??_Lcd_Data+0)+0,w
	movwf	(8)	;volatile
	line	129
	
l9761:	
;lcd.c: 129: RD2=1;
	bsf	(66/8),(66)&7
	line	130
	
l9763:	
;lcd.c: 130: RD3=1;
	bsf	(67/8),(67)&7
	line	131
	
l9765:	
;lcd.c: 131: DelayMs(5);
	movlw	low(05h)
	movwf	(?_DelayMs)
	movlw	high(05h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	132
	
l9767:	
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
psect	text868,local,class=CODE,delta=2
global __ptext868
__ptext868:

;; *************** function _Lcd_Cmd *****************
;; Defined at:
;;		line 106 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\lcd.c"
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
;;		_enable_valves
;;		_change_modes
;;		_call_control_valve
;;		_print_yes_no
;; This function uses a non-reentrant model
;;
psect	text868
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\lcd.c"
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
	
l9725:	
;lcd.c: 107: PORTD=s & 0XF0;
	movf	(Lcd_Cmd@s),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	108
	
l9727:	
;lcd.c: 108: RD2=0;
	bcf	(66/8),(66)&7
	line	109
	
l9729:	
;lcd.c: 109: RD3=1;
	bsf	(67/8),(67)&7
	line	110
	
l9731:	
;lcd.c: 110: DelayMs(5);
	movlw	low(05h)
	movwf	(?_DelayMs)
	movlw	high(05h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	111
	
l9733:	
;lcd.c: 111: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	112
	
l9735:	
;lcd.c: 112: DelayMs(5);
	movlw	low(05h)
	movwf	(?_DelayMs)
	movlw	high(05h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	113
	
l9737:	
;lcd.c: 113: PORTD=s << 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd_Cmd@s),w
	movwf	(??_Lcd_Cmd+0)+0
	movlw	(04h)-1
u5485:
	clrc
	rlf	(??_Lcd_Cmd+0)+0,f
	addlw	-1
	skipz
	goto	u5485
	clrc
	rlf	(??_Lcd_Cmd+0)+0,w
	movwf	(8)	;volatile
	line	114
	
l9739:	
;lcd.c: 114: RD2=0;
	bcf	(66/8),(66)&7
	line	115
	
l9741:	
;lcd.c: 115: RD3=1;
	bsf	(67/8),(67)&7
	line	116
	
l9743:	
;lcd.c: 116: DelayMs(5);
	movlw	low(05h)
	movwf	(?_DelayMs)
	movlw	high(05h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	117
	
l9745:	
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
psect	text869,local,class=CODE,delta=2
global __ptext869
__ptext869:

;; *************** function _GetADCValue *****************
;; Defined at:
;;		line 31 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\adc.c"
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
psect	text869
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\adc.c"
	line	31
	global	__size_of_GetADCValue
	__size_of_GetADCValue	equ	__end_of_GetADCValue-_GetADCValue
	
_GetADCValue:	
	opt	stack 7
; Regs used in _GetADCValue: [wreg+status,2+status,0+btemp+1]
;GetADCValue@Channel stored from wreg
	movwf	(GetADCValue@Channel)
	line	32
	
l9715:	
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
u5465:
	clrc
	rlf	(??_GetADCValue+0)+0,f
	addlw	-1
	skipz
	goto	u5465
	clrc
	rlf	(??_GetADCValue+0)+0,w
	movwf	(??_GetADCValue+1)+0
	movf	(??_GetADCValue+1)+0,w
	iorwf	(31),f	;volatile
	line	35
	
l9717:	
;adc.c: 35: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_GetADCValue+0)+0+1),f
	movlw	238
movwf	((??_GetADCValue+0)+0),f
u7587:
	decfsz	((??_GetADCValue+0)+0),f
	goto	u7587
	decfsz	((??_GetADCValue+0)+0+1),f
	goto	u7587
	clrwdt
opt asmopt_on

	line	37
	
l9719:	
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
	goto	u5471
	goto	u5470
u5471:
	goto	l690
u5470:
	goto	l9721
	
l692:	
	line	41
	
l9721:	
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
	
l9723:	
	line	42
	
l693:	
	return
	opt stack 0
GLOBAL	__end_of_GetADCValue
	__end_of_GetADCValue:
;; =============== function _GetADCValue ends ============

	signat	_GetADCValue,4218
	global	___awmod
psect	text870,local,class=CODE,delta=2
global __ptext870
__ptext870:

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
psect	text870
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l9681:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u5371
	goto	u5370
u5371:
	goto	l9685
u5370:
	line	10
	
l9683:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l9685
	line	12
	
l6313:	
	line	13
	
l9685:	
	btfss	(___awmod@divisor+1),7
	goto	u5381
	goto	u5380
u5381:
	goto	l9689
u5380:
	line	14
	
l9687:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l9689
	
l6314:	
	line	15
	
l9689:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u5391
	goto	u5390
u5391:
	goto	l9707
u5390:
	line	16
	
l9691:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l9697
	
l6317:	
	line	18
	
l9693:	
	movlw	01h
	
u5405:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u5405
	line	19
	
l9695:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l9697
	line	20
	
l6316:	
	line	17
	
l9697:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u5411
	goto	u5410
u5411:
	goto	l9693
u5410:
	goto	l9699
	
l6318:	
	goto	l9699
	line	21
	
l6319:	
	line	22
	
l9699:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u5425
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u5425:
	skipc
	goto	u5421
	goto	u5420
u5421:
	goto	l9703
u5420:
	line	23
	
l9701:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l9703
	
l6320:	
	line	24
	
l9703:	
	movlw	01h
	
u5435:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u5435
	line	25
	
l9705:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u5441
	goto	u5440
u5441:
	goto	l9699
u5440:
	goto	l9707
	
l6321:	
	goto	l9707
	line	26
	
l6315:	
	line	27
	
l9707:	
	movf	(___awmod@sign),w
	skipz
	goto	u5450
	goto	l9711
u5450:
	line	28
	
l9709:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l9711
	
l6322:	
	line	29
	
l9711:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l6323
	
l9713:	
	line	30
	
l6323:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___aldiv
psect	text871,local,class=CODE,delta=2
global __ptext871
__ptext871:

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] long 
;;  dividend        4    4[COMMON] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    2[BANK0 ] long 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       6       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Uart_Init
;; This function uses a non-reentrant model
;;
psect	text871
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt	stack 6
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l9639:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	10
	btfss	(___aldiv@divisor+3),7
	goto	u5271
	goto	u5270
u5271:
	goto	l9645
u5270:
	line	11
	
l9641:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	12
	
l9643:	
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	goto	l9645
	line	13
	
l6300:	
	line	14
	
l9645:	
	btfss	(___aldiv@dividend+3),7
	goto	u5281
	goto	u5280
u5281:
	goto	l9651
u5280:
	line	15
	
l9647:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	16
	
l9649:	
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	goto	l9651
	line	17
	
l6301:	
	line	18
	
l9651:	
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	line	19
	
l9653:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u5291
	goto	u5290
u5291:
	goto	l9673
u5290:
	line	20
	
l9655:	
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	line	21
	goto	l9659
	
l6304:	
	line	22
	
l9657:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u5305:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u5305
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	goto	l9659
	line	24
	
l6303:	
	line	21
	
l9659:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u5311
	goto	u5310
u5311:
	goto	l9657
u5310:
	goto	l9661
	
l6305:	
	goto	l9661
	line	25
	
l6306:	
	line	26
	
l9661:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u5325:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u5325
	line	27
	
l9663:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u5335
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u5335
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u5335
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u5335:
	skipc
	goto	u5331
	goto	u5330
u5331:
	goto	l9669
u5330:
	line	28
	
l9665:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	line	29
	
l9667:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	goto	l9669
	line	30
	
l6307:	
	line	31
	
l9669:	
	movlw	01h
u5345:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u5345

	line	32
	
l9671:	
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u5351
	goto	u5350
u5351:
	goto	l9661
u5350:
	goto	l9673
	
l6308:	
	goto	l9673
	line	33
	
l6302:	
	line	34
	
l9673:	
	movf	(___aldiv@sign),w
	skipz
	goto	u5360
	goto	l9677
u5360:
	line	35
	
l9675:	
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	goto	l9677
	
l6309:	
	line	36
	
l9677:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	goto	l6310
	
l9679:	
	line	37
	
l6310:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
;; =============== function ___aldiv ends ============

	signat	___aldiv,8316
	global	___awdiv
psect	text872,local,class=CODE,delta=2
global __ptext872
__ptext872:

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
psect	text872
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l9599:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u5171
	goto	u5170
u5171:
	goto	l9603
u5170:
	line	11
	
l9601:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l9603
	line	13
	
l6245:	
	line	14
	
l9603:	
	btfss	(___awdiv@dividend+1),7
	goto	u5181
	goto	u5180
u5181:
	goto	l9609
u5180:
	line	15
	
l9605:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l9607:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l9609
	line	17
	
l6246:	
	line	18
	
l9609:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l9611:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u5191
	goto	u5190
u5191:
	goto	l9631
u5190:
	line	20
	
l9613:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l9619
	
l6249:	
	line	22
	
l9615:	
	movlw	01h
	
u5205:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u5205
	line	23
	
l9617:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l9619
	line	24
	
l6248:	
	line	21
	
l9619:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u5211
	goto	u5210
u5211:
	goto	l9615
u5210:
	goto	l9621
	
l6250:	
	goto	l9621
	line	25
	
l6251:	
	line	26
	
l9621:	
	movlw	01h
	
u5225:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u5225
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u5235
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u5235:
	skipc
	goto	u5231
	goto	u5230
u5231:
	goto	l9627
u5230:
	line	28
	
l9623:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l9625:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l9627
	line	30
	
l6252:	
	line	31
	
l9627:	
	movlw	01h
	
u5245:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u5245
	line	32
	
l9629:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u5251
	goto	u5250
u5251:
	goto	l9621
u5250:
	goto	l9631
	
l6253:	
	goto	l9631
	line	33
	
l6247:	
	line	34
	
l9631:	
	movf	(___awdiv@sign),w
	skipz
	goto	u5260
	goto	l9635
u5260:
	line	35
	
l9633:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l9635
	
l6254:	
	line	36
	
l9635:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l6255
	
l9637:	
	line	37
	
l6255:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text873,local,class=CODE,delta=2
global __ptext873
__ptext873:

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
psect	text873
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l9577:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u5111
	goto	u5110
u5111:
	goto	l9595
u5110:
	line	9
	
l9579:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l9585
	
l6123:	
	line	11
	
l9581:	
	movlw	01h
	
u5125:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u5125
	line	12
	
l9583:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l9585
	line	13
	
l6122:	
	line	10
	
l9585:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u5131
	goto	u5130
u5131:
	goto	l9581
u5130:
	goto	l9587
	
l6124:	
	goto	l9587
	line	14
	
l6125:	
	line	15
	
l9587:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u5145
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u5145:
	skipc
	goto	u5141
	goto	u5140
u5141:
	goto	l9591
u5140:
	line	16
	
l9589:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l9591
	
l6126:	
	line	17
	
l9591:	
	movlw	01h
	
u5155:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u5155
	line	18
	
l9593:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u5161
	goto	u5160
u5161:
	goto	l9587
u5160:
	goto	l9595
	
l6127:	
	goto	l9595
	line	19
	
l6121:	
	line	20
	
l9595:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l6128
	
l9597:	
	line	21
	
l6128:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text874,local,class=CODE,delta=2
global __ptext874
__ptext874:

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
psect	text874
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l9551:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l9553:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u5041
	goto	u5040
u5041:
	goto	l9573
u5040:
	line	11
	
l9555:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l9561
	
l6113:	
	line	13
	
l9557:	
	movlw	01h
	
u5055:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u5055
	line	14
	
l9559:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l9561
	line	15
	
l6112:	
	line	12
	
l9561:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u5061
	goto	u5060
u5061:
	goto	l9557
u5060:
	goto	l9563
	
l6114:	
	goto	l9563
	line	16
	
l6115:	
	line	17
	
l9563:	
	movlw	01h
	
u5075:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u5075
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u5085
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u5085:
	skipc
	goto	u5081
	goto	u5080
u5081:
	goto	l9569
u5080:
	line	19
	
l9565:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l9567:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l9569
	line	21
	
l6116:	
	line	22
	
l9569:	
	movlw	01h
	
u5095:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u5095
	line	23
	
l9571:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u5101
	goto	u5100
u5101:
	goto	l9563
u5100:
	goto	l9573
	
l6117:	
	goto	l9573
	line	24
	
l6111:	
	line	25
	
l9573:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l6118
	
l9575:	
	line	26
	
l6118:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text875,local,class=CODE,delta=2
global __ptext875
__ptext875:

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
psect	text875
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l9539:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l9541
	line	6
	
l6105:	
	line	7
	
l9541:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u5001
	goto	u5000
u5001:
	goto	l6106
u5000:
	line	8
	
l9543:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l6106:	
	line	9
	movlw	01h
	
u5015:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u5015
	line	10
	
l9545:	
	movlw	01h
	
u5025:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u5025
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u5031
	goto	u5030
u5031:
	goto	l9541
u5030:
	goto	l9547
	
l6107:	
	line	12
	
l9547:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l6108
	
l9549:	
	line	13
	
l6108:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text876,local,class=CODE,delta=2
global __ptext876
__ptext876:

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
psect	text876
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
	
l9525:	
	clrf	(___bmul@product)
	line	6
	
l6099:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u4981
	goto	u4980
u4981:
	goto	l9529
u4980:
	line	8
	
l9527:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l9529
	
l6100:	
	line	9
	
l9529:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l9531:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l9533:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u4991
	goto	u4990
u4991:
	goto	l6099
u4990:
	goto	l9535
	
l6101:	
	line	12
	
l9535:	
	movf	(___bmul@product),w
	goto	l6102
	
l9537:	
	line	13
	
l6102:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_onthevalve
psect	text877,local,class=CODE,delta=2
global __ptext877
__ptext877:

;; *************** function _onthevalve *****************
;; Defined at:
;;		line 1041 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
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
psect	text877
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	1041
	global	__size_of_onthevalve
	__size_of_onthevalve	equ	__end_of_onthevalve-_onthevalve
	
_onthevalve:	
	opt	stack 6
; Regs used in _onthevalve: [wreg-fsr0h+status,2+status,0]
	line	1042
	
l9511:	
;Beverage_services.c: 1042: switch(_ON)
	goto	l9515
	line	1044
;Beverage_services.c: 1043: {
;Beverage_services.c: 1044: case _Milk_Valve_Forward:
	
l3395:	
	line	1045
;Beverage_services.c: 1045: RA2=1;
	bsf	(42/8),(42)&7
	line	1046
;Beverage_services.c: 1046: RA4=0;
	bcf	(44/8),(44)&7
	line	1047
;Beverage_services.c: 1047: break;
	goto	l3406
	line	1048
;Beverage_services.c: 1048: case _Milk_Valve_Reverse:
	
l3397:	
	line	1049
;Beverage_services.c: 1049: RA2=0;
	bcf	(42/8),(42)&7
	line	1050
;Beverage_services.c: 1050: RA4=1;
	bsf	(44/8),(44)&7
	line	1051
;Beverage_services.c: 1051: break;
	goto	l3406
	line	1052
;Beverage_services.c: 1052: case _Mixing_Hot_Water_Valve:
	
l3398:	
	line	1053
;Beverage_services.c: 1053: RA5=1;
	bsf	(45/8),(45)&7
	line	1054
;Beverage_services.c: 1054: break;
	goto	l3406
	line	1055
;Beverage_services.c: 1055: case _Hot_Water_Valve:
	
l3399:	
	line	1056
;Beverage_services.c: 1056: RC0=1;
	bsf	(56/8),(56)&7
	line	1057
;Beverage_services.c: 1057: break;
	goto	l3406
	line	1058
;Beverage_services.c: 1058: case _Coffee_Hot_Water_Valve:
	
l3400:	
	line	1059
;Beverage_services.c: 1059: RC1=1;
	bsf	(57/8),(57)&7
	line	1060
;Beverage_services.c: 1060: break;
	goto	l3406
	line	1061
;Beverage_services.c: 1061: case _Coffee_Valve:
	
l3401:	
	line	1062
;Beverage_services.c: 1062: RE0=1;
	bsf	(72/8),(72)&7
	line	1063
;Beverage_services.c: 1063: break;
	goto	l3406
	line	1064
;Beverage_services.c: 1064: case _Tea_Hot_Water_Valve:
	
l3402:	
	line	1065
;Beverage_services.c: 1065: RC2=1;
	bsf	(58/8),(58)&7
	line	1066
;Beverage_services.c: 1066: break;
	goto	l3406
	line	1067
;Beverage_services.c: 1067: case _Tea_Valve:
	
l3403:	
	line	1068
;Beverage_services.c: 1068: RE1=1;
	bsf	(73/8),(73)&7
	line	1069
;Beverage_services.c: 1069: break;
	goto	l3406
	line	1070
;Beverage_services.c: 1070: case _Viber_Motor:
	
l3404:	
	line	1071
;Beverage_services.c: 1071: RE2=1;
	bsf	(74/8),(74)&7
	line	1072
;Beverage_services.c: 1072: break;
	goto	l3406
	line	1073
;Beverage_services.c: 1073: case _Heater1:
	
l3405:	
	line	1074
;Beverage_services.c: 1074: RC3=1;
	bsf	(59/8),(59)&7
	line	1075
;Beverage_services.c: 1075: break;
	goto	l3406
	line	1076
	
l9513:	
;Beverage_services.c: 1076: }
	goto	l3406
	line	1042
	
l3394:	
	
l9515:	
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
	goto	l3395
	xorlw	2^1	; case 2
	skipnz
	goto	l3397
	xorlw	3^2	; case 3
	skipnz
	goto	l3398
	xorlw	4^3	; case 4
	skipnz
	goto	l3399
	xorlw	5^4	; case 5
	skipnz
	goto	l3400
	xorlw	6^5	; case 6
	skipnz
	goto	l3401
	xorlw	7^6	; case 7
	skipnz
	goto	l3402
	xorlw	8^7	; case 8
	skipnz
	goto	l3403
	xorlw	9^8	; case 9
	skipnz
	goto	l3404
	xorlw	10^9	; case 10
	skipnz
	goto	l3405
	goto	l3406
	opt asmopt_on

	line	1076
	
l3396:	
	line	1077
	
l3406:	
	return
	opt stack 0
GLOBAL	__end_of_onthevalve
	__end_of_onthevalve:
;; =============== function _onthevalve ends ============

	signat	_onthevalve,88
	global	_offthevalve
psect	text878,local,class=CODE,delta=2
global __ptext878
__ptext878:

;; *************** function _offthevalve *****************
;; Defined at:
;;		line 1080 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
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
psect	text878
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	1080
	global	__size_of_offthevalve
	__size_of_offthevalve	equ	__end_of_offthevalve-_offthevalve
	
_offthevalve:	
	opt	stack 6
; Regs used in _offthevalve: [wreg-fsr0h+status,2+status,0]
	line	1081
	
l9505:	
;Beverage_services.c: 1081: switch(_OFF)
	goto	l9509
	line	1083
;Beverage_services.c: 1082: {
;Beverage_services.c: 1083: case _Milk_Valve_Forward:
	
l3410:	
	line	1084
;Beverage_services.c: 1084: RA2=0;
	bcf	(42/8),(42)&7
	line	1085
;Beverage_services.c: 1085: RA4=0;
	bcf	(44/8),(44)&7
	line	1086
;Beverage_services.c: 1086: case _Milk_Valve_Reverse:
	
l3411:	
	line	1087
;Beverage_services.c: 1087: RA2=0;
	bcf	(42/8),(42)&7
	line	1088
;Beverage_services.c: 1088: RA4=0;
	bcf	(44/8),(44)&7
	line	1089
;Beverage_services.c: 1089: break;
	goto	l3421
	line	1090
;Beverage_services.c: 1090: case _Mixing_Hot_Water_Valve:
	
l3413:	
	line	1091
;Beverage_services.c: 1091: RA5=0;
	bcf	(45/8),(45)&7
	line	1092
;Beverage_services.c: 1092: break;
	goto	l3421
	line	1093
;Beverage_services.c: 1093: case _Hot_Water_Valve:
	
l3414:	
	line	1094
;Beverage_services.c: 1094: RC0=0;
	bcf	(56/8),(56)&7
	line	1095
;Beverage_services.c: 1095: break;
	goto	l3421
	line	1096
;Beverage_services.c: 1096: case _Coffee_Hot_Water_Valve:
	
l3415:	
	line	1097
;Beverage_services.c: 1097: RC1=0;
	bcf	(57/8),(57)&7
	line	1098
;Beverage_services.c: 1098: break;
	goto	l3421
	line	1099
;Beverage_services.c: 1099: case _Coffee_Valve:
	
l3416:	
	line	1100
;Beverage_services.c: 1100: RE0=0;
	bcf	(72/8),(72)&7
	line	1101
;Beverage_services.c: 1101: break;
	goto	l3421
	line	1102
;Beverage_services.c: 1102: case _Tea_Hot_Water_Valve:
	
l3417:	
	line	1103
;Beverage_services.c: 1103: RC2=0;
	bcf	(58/8),(58)&7
	line	1104
;Beverage_services.c: 1104: break;
	goto	l3421
	line	1105
;Beverage_services.c: 1105: case _Tea_Valve:
	
l3418:	
	line	1106
;Beverage_services.c: 1106: RE1=0;
	bcf	(73/8),(73)&7
	line	1107
;Beverage_services.c: 1107: break;
	goto	l3421
	line	1108
;Beverage_services.c: 1108: case _Viber_Motor:
	
l3419:	
	line	1109
;Beverage_services.c: 1109: RE2=0;
	bcf	(74/8),(74)&7
	line	1110
;Beverage_services.c: 1110: break;
	goto	l3421
	line	1111
;Beverage_services.c: 1111: case _Heater1:
	
l3420:	
	line	1112
;Beverage_services.c: 1112: RC3=0;
	bcf	(59/8),(59)&7
	line	1113
;Beverage_services.c: 1113: break;
	goto	l3421
	line	1114
	
l9507:	
;Beverage_services.c: 1114: }
	goto	l3421
	line	1081
	
l3409:	
	
l9509:	
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
	goto	l3410
	xorlw	2^1	; case 2
	skipnz
	goto	l3411
	xorlw	3^2	; case 3
	skipnz
	goto	l3413
	xorlw	4^3	; case 4
	skipnz
	goto	l3414
	xorlw	5^4	; case 5
	skipnz
	goto	l3415
	xorlw	6^5	; case 6
	skipnz
	goto	l3416
	xorlw	7^6	; case 7
	skipnz
	goto	l3417
	xorlw	8^7	; case 8
	skipnz
	goto	l3418
	xorlw	9^8	; case 9
	skipnz
	goto	l3419
	xorlw	10^9	; case 10
	skipnz
	goto	l3420
	goto	l3421
	opt asmopt_on

	line	1114
	
l3412:	
	line	1115
	
l3421:	
	return
	opt stack 0
GLOBAL	__end_of_offthevalve
	__end_of_offthevalve:
;; =============== function _offthevalve ends ============

	signat	_offthevalve,88
	global	_eeprom_write
psect	text879,local,class=CODE,delta=2
global __ptext879
__ptext879:

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
psect	text879
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
	
l5409:	
	goto	l5410
	
l5411:	
	
l5410:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u4941
	goto	u4940
u4941:
	goto	l5410
u4940:
	goto	l9485
	
l5412:	
	
l9485:	
	movf	(eeprom_write@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movf	(eeprom_write@value),w
	movwf	(268)^0100h	;volatile
	
l9487:	
	movlw	(03Fh)
	movwf	(??_eeprom_write+0)+0
	movf	(??_eeprom_write+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volatile
	
l9489:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(24/8),(24)&7
	
l9491:	
	btfss	(95/8),(95)&7
	goto	u4951
	goto	u4950
u4951:
	goto	l5413
u4950:
	
l9493:	
	bsf	(24/8),(24)&7
	
l5413:	
	bcf	(95/8),(95)&7
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3170/8)^0180h,(3170)&7
	
l9495:	
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	
l9497:	
	bsf	(3169/8)^0180h,(3169)&7
	
l9499:	
	bcf	(3170/8)^0180h,(3170)&7
	
l9501:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(24/8),(24)&7
	goto	u4961
	goto	u4960
u4961:
	goto	l5416
u4960:
	
l9503:	
	bsf	(95/8),(95)&7
	goto	l5416
	
l5414:	
	goto	l5416
	
l5415:	
	line	10
;	Return value of _eeprom_write is never used
	
l5416:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
;; =============== function _eeprom_write ends ============

	signat	_eeprom_write,8313
	global	_SendByteSerially
psect	text880,local,class=CODE,delta=2
global __ptext880
__ptext880:

;; *************** function _SendByteSerially *****************
;; Defined at:
;;		line 30 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\uart.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Print_Name
;;		_Print_Menu
;;		_Mode_Init
;;		_enable_valves
;;		_SendStringSerially
;; This function uses a non-reentrant model
;;
psect	text880
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\uart.c"
	line	30
	global	__size_of_SendByteSerially
	__size_of_SendByteSerially	equ	__end_of_SendByteSerially-_SendByteSerially
	
_SendByteSerially:	
	opt	stack 5
; Regs used in _SendByteSerially: [wreg]
;SendByteSerially@Byte stored from wreg
	movwf	(SendByteSerially@Byte)
	line	31
	
l9481:	
;uart.c: 31: while(!TXIF);
	goto	l4168
	
l4169:	
	
l4168:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u4931
	goto	u4930
u4931:
	goto	l4168
u4930:
	goto	l9483
	
l4170:	
	line	32
	
l9483:	
;uart.c: 32: TXREG = Byte;
	movf	(SendByteSerially@Byte),w
	movwf	(25)	;volatile
	line	33
	
l4171:	
	return
	opt stack 0
GLOBAL	__end_of_SendByteSerially
	__end_of_SendByteSerially:
;; =============== function _SendByteSerially ends ============

	signat	_SendByteSerially,4216
	global	_key_press
psect	text881,local,class=CODE,delta=2
global __ptext881
__ptext881:

;; *************** function _key_press *****************
;; Defined at:
;;		line 97 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
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
psect	text881
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage_services.c"
	line	97
	global	__size_of_key_press
	__size_of_key_press	equ	__end_of_key_press-_key_press
	
_key_press:	
	opt	stack 6
; Regs used in _key_press: [wreg+status,2+status,0]
	line	98
	
l9415:	
;Beverage_services.c: 98: if(!RB0 || !RB1 || !RB2 || !RB3 || !RB4 || !RB5 || !RB6 || !RB7 || !RC4 || !RC5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u4711
	goto	u4710
u4711:
	goto	l3124
u4710:
	
l9417:	
	btfss	(49/8),(49)&7
	goto	u4721
	goto	u4720
u4721:
	goto	l3124
u4720:
	
l9419:	
	btfss	(50/8),(50)&7
	goto	u4731
	goto	u4730
u4731:
	goto	l3124
u4730:
	
l9421:	
	btfss	(51/8),(51)&7
	goto	u4741
	goto	u4740
u4741:
	goto	l3124
u4740:
	
l9423:	
	btfss	(52/8),(52)&7
	goto	u4751
	goto	u4750
u4751:
	goto	l3124
u4750:
	
l9425:	
	btfss	(53/8),(53)&7
	goto	u4761
	goto	u4760
u4761:
	goto	l3124
u4760:
	
l9427:	
	btfss	(54/8),(54)&7
	goto	u4771
	goto	u4770
u4771:
	goto	l3124
u4770:
	
l9429:	
	btfss	(55/8),(55)&7
	goto	u4781
	goto	u4780
u4781:
	goto	l3124
u4780:
	
l9431:	
	btfss	(60/8),(60)&7
	goto	u4791
	goto	u4790
u4791:
	goto	l3124
u4790:
	
l9433:	
	btfsc	(61/8),(61)&7
	goto	u4801
	goto	u4800
u4801:
	goto	l9477
u4800:
	
l3124:	
	line	100
;Beverage_services.c: 99: {
;Beverage_services.c: 100: if(RB6==0)
	btfsc	(54/8),(54)&7
	goto	u4811
	goto	u4810
u4811:
	goto	l9437
u4810:
	line	102
	
l9435:	
;Beverage_services.c: 101: {
;Beverage_services.c: 102: _PRESSED=_NORMAL_COFFEE_BUTTON;
	clrf	(__PRESSED)
	bsf	status,0
	rlf	(__PRESSED),f
	goto	l9437
	line	103
	
l3125:	
	line	104
	
l9437:	
;Beverage_services.c: 103: }
;Beverage_services.c: 104: if(RB7==0)
	btfsc	(55/8),(55)&7
	goto	u4821
	goto	u4820
u4821:
	goto	l9441
u4820:
	line	106
	
l9439:	
;Beverage_services.c: 105: {
;Beverage_services.c: 106: _PRESSED=_NORMAL_TEA_BUTTON;
	movlw	(02h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l9441
	line	107
	
l3126:	
	line	108
	
l9441:	
;Beverage_services.c: 107: }
;Beverage_services.c: 108: if(RB4==0)
	btfsc	(52/8),(52)&7
	goto	u4831
	goto	u4830
u4831:
	goto	l9445
u4830:
	line	110
	
l9443:	
;Beverage_services.c: 109: {
;Beverage_services.c: 110: _PRESSED=_LIGHT_COFFEE_BUTTON;
	movlw	(03h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l9445
	line	111
	
l3127:	
	line	112
	
l9445:	
;Beverage_services.c: 111: }
;Beverage_services.c: 112: if(RB5==0)
	btfsc	(53/8),(53)&7
	goto	u4841
	goto	u4840
u4841:
	goto	l9449
u4840:
	line	114
	
l9447:	
;Beverage_services.c: 113: {
;Beverage_services.c: 114: _PRESSED=_LIGHT_TEA_BUTTON;
	movlw	(04h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l9449
	line	115
	
l3128:	
	line	116
	
l9449:	
;Beverage_services.c: 115: }
;Beverage_services.c: 116: if(RB2==0)
	btfsc	(50/8),(50)&7
	goto	u4851
	goto	u4850
u4851:
	goto	l9453
u4850:
	line	118
	
l9451:	
;Beverage_services.c: 117: {
;Beverage_services.c: 118: _PRESSED=_BLACK_COFFEE_BUTTON;
	movlw	(05h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l9453
	line	119
	
l3129:	
	line	120
	
l9453:	
;Beverage_services.c: 119: }
;Beverage_services.c: 120: if(RB3==0)
	btfsc	(51/8),(51)&7
	goto	u4861
	goto	u4860
u4861:
	goto	l9457
u4860:
	line	122
	
l9455:	
;Beverage_services.c: 121: {
;Beverage_services.c: 122: _PRESSED=_BLACK_TEA_BUTTON;
	movlw	(06h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l9457
	line	123
	
l3130:	
	line	124
	
l9457:	
;Beverage_services.c: 123: }
;Beverage_services.c: 124: if(RB0==0)
	btfsc	(48/8),(48)&7
	goto	u4871
	goto	u4870
u4871:
	goto	l9461
u4870:
	line	126
	
l9459:	
;Beverage_services.c: 125: {
;Beverage_services.c: 126: _PRESSED=_MILK_BUTTON;
	movlw	(07h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l9461
	line	127
	
l3131:	
	line	128
	
l9461:	
;Beverage_services.c: 127: }
;Beverage_services.c: 128: if(RB1==0)
	btfsc	(49/8),(49)&7
	goto	u4881
	goto	u4880
u4881:
	goto	l9465
u4880:
	line	130
	
l9463:	
;Beverage_services.c: 129: {
;Beverage_services.c: 130: _PRESSED=_HOT_WATER_BUTTON;
	movlw	(09h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l9465
	line	131
	
l3132:	
	line	132
	
l9465:	
;Beverage_services.c: 131: }
;Beverage_services.c: 132: if(RC5==0)
	btfsc	(61/8),(61)&7
	goto	u4891
	goto	u4890
u4891:
	goto	l9469
u4890:
	line	134
	
l9467:	
;Beverage_services.c: 133: {
;Beverage_services.c: 134: _PRESSED=_EXTRA_BUTTON;
	movlw	(08h)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	goto	l9469
	line	135
	
l3133:	
	line	136
	
l9469:	
;Beverage_services.c: 135: }
;Beverage_services.c: 136: if(RC4==0)
	btfsc	(60/8),(60)&7
	goto	u4901
	goto	u4900
u4901:
	goto	l9477
u4900:
	line	138
	
l9471:	
;Beverage_services.c: 137: {
;Beverage_services.c: 138: _PRESSED=_MENU_BUTTON;
	movlw	(0Ah)
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__PRESSED)
	line	139
	
l9473:	
;Beverage_services.c: 139: if(_SHORTCUT==1)
	btfss	(__SHORTCUT/8),(__SHORTCUT)&7
	goto	u4911
	goto	u4910
u4911:
	goto	l3135
u4910:
	line	140
	
l9475:	
;Beverage_services.c: 140: _SHORTCUT=0;
	bcf	(__SHORTCUT/8),(__SHORTCUT)&7
	goto	l9477
	line	141
	
l3135:	
	line	142
;Beverage_services.c: 141: else
;Beverage_services.c: 142: _SHORTCUT=1;
	bsf	(__SHORTCUT/8),(__SHORTCUT)&7
	goto	l9477
	
l3136:	
	goto	l9477
	line	143
	
l3134:	
	goto	l9477
	line	144
	
l3122:	
	line	145
	
l9477:	
;Beverage_services.c: 143: }
;Beverage_services.c: 144: }
;Beverage_services.c: 145: if(_PRESSED!=_MENU_BUTTON)
	movf	(__PRESSED),w
	xorlw	0Ah
	skipnz
	goto	u4921
	goto	u4920
u4921:
	goto	l3138
u4920:
	line	147
	
l9479:	
;Beverage_services.c: 146: {
;Beverage_services.c: 147: _CHOICE_SELECTED=_PRESSED;
	movf	(__PRESSED),w
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__CHOICE_SELECTED)
	line	148
;Beverage_services.c: 148: _SHORTCUT_PRESSED=_PRESSED;
	movf	(__PRESSED),w
	movwf	(??_key_press+0)+0
	movf	(??_key_press+0)+0,w
	movwf	(__SHORTCUT_PRESSED)
	goto	l3138
	line	149
	
l3137:	
	line	150
	
l3138:	
	return
	opt stack 0
GLOBAL	__end_of_key_press
	__end_of_key_press:
;; =============== function _key_press ends ============

	signat	_key_press,88
	global	_eeprom_read
psect	text882,local,class=CODE,delta=2
global __ptext882
__ptext882:

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
psect	text882
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\eeread.c"
	line	7
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
	opt	stack 5
; Regs used in _eeprom_read: [wreg+status,2+status,0]
	line	8
	
l4792:	
	line	9
# 9 "C:\Program Files\HI-TECH Software\PICC\9.82\sources\eeread.c"
clrwdt ;#
psect	text882
	line	10
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u4701
	goto	u4700
u4701:
	goto	l4792
u4700:
	goto	l9411
	
l4793:	
	line	11
	
l9411:	
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
	goto	l4794
	
l9413:	
	line	12
	
l4794:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
;; =============== function _eeprom_read ends ============

	signat	_eeprom_read,4217
	global	_Port_Init
psect	text883,local,class=CODE,delta=2
global __ptext883
__ptext883:

;; *************** function _Port_Init *****************
;; Defined at:
;;		line 14 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage.c"
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
psect	text883
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\Beverage.c"
	line	14
	global	__size_of_Port_Init
	__size_of_Port_Init	equ	__end_of_Port_Init-_Port_Init
	
_Port_Init:	
	opt	stack 7
; Regs used in _Port_Init: [wreg+status,2]
	line	15
	
l9397:	
;Beverage.c: 15: ADCON1 = 0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	16
;Beverage.c: 16: CMCON = 0X07;
	movlw	(07h)
	movwf	(156)^080h	;volatile
	line	18
;Beverage.c: 18: TRISA = 0x01;
	movlw	(01h)
	movwf	(133)^080h	;volatile
	line	19
;Beverage.c: 19: TRISB = 0XFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	20
	
l9399:	
;Beverage.c: 20: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	21
	
l9401:	
;Beverage.c: 21: TRISC = 0X30;
	movlw	(030h)
	movwf	(135)^080h	;volatile
	line	22
;Beverage.c: 22: TRISE = 0X00;
	clrf	(137)^080h	;volatile
	line	24
;Beverage.c: 24: PORTA = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	25
	
l9403:	
;Beverage.c: 25: PORTB = 0XFF;
	movlw	(0FFh)
	movwf	(6)	;volatile
	line	26
	
l9405:	
;Beverage.c: 26: PORTC = 0X30;
	movlw	(030h)
	movwf	(7)	;volatile
	line	27
	
l9407:	
;Beverage.c: 27: PORTD = 0XFD;
	movlw	(0FDh)
	movwf	(8)	;volatile
	line	28
	
l9409:	
;Beverage.c: 28: PORTE = 0X00;
	clrf	(9)	;volatile
	line	29
	
l2247:	
	return
	opt stack 0
GLOBAL	__end_of_Port_Init
	__end_of_Port_Init:
;; =============== function _Port_Init ends ============

	signat	_Port_Init,88
	global	_strlen
psect	text884,local,class=CODE,delta=2
global __ptext884
__ptext884:

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
psect	text884
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
	
l9389:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l9391
	
l6094:	
	line	10
	goto	l9391
	
l6093:	
	line	9
	
l9391:	
	movf	(strlen@cp),w
	movwf	fsr0
	movlw	01h
	addwf	(strlen@cp),f
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u4691
	goto	u4690
u4691:
	goto	l9391
u4690:
	goto	l9393
	
l6095:	
	line	11
	
l9393:	
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
	goto	l6096
	
l9395:	
	line	12
	
l6096:	
	return
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
;; =============== function _strlen ends ============

	signat	_strlen,4218
	global	_DelayMs
psect	text885,local,class=CODE,delta=2
global __ptext885
__ptext885:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 19 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\delay.c"
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
psect	text885
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\delay.c"
	line	19
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 4
; Regs used in _DelayMs: [wreg+status,2+status,0]
	line	36
;delay.c: 34: unsigned char i;
;delay.c: 36: do {
	
l3471:	
	line	38
	
l9381:	
;delay.c: 38: i = 4;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@i)
	line	40
;delay.c: 40: do {
	
l3472:	
	line	42
;delay.c: 42: { unsigned char _dcnt; _dcnt = (175)*((20*1000L)/(12*1000L)); while(--_dcnt != 0) continue; };
	movlw	(0AFh)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@_dcnt)
	goto	l9383
	
l3474:	
	goto	l9383
	
l3473:	
	
l9383:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u4661
	goto	u4660
u4661:
	goto	l9383
u4660:
	goto	l9385
	
l3475:	
	line	44
	
l9385:	
;delay.c: 44: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u4671
	goto	u4670
u4671:
	goto	l3472
u4670:
	goto	l9387
	
l3476:	
	line	46
	
l9387:	
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
	goto	u4681
	goto	u4680
u4681:
	goto	l3471
u4680:
	goto	l3478
	
l3477:	
	line	50
	
l3478:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	_InitADC
psect	text886,local,class=CODE,delta=2
global __ptext886
__ptext886:

;; *************** function _InitADC *****************
;; Defined at:
;;		line 11 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\adc.c"
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
psect	text886
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\MASTER_PIC_16F877A\2015_09_13\adc.c"
	line	11
	global	__size_of_InitADC
	__size_of_InitADC	equ	__end_of_InitADC-_InitADC
	
_InitADC:	
	opt	stack 7
; Regs used in _InitADC: [wreg]
	line	12
	
l9379:	
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
