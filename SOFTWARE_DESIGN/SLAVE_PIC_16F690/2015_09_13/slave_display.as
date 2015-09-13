opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

opt pagewidth 120

	opt lm

	processor	16F690
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
# 16 "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 16 "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\main.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFCFF ;#
	FNCALL	_main,_SYSTEM_INIT
	FNCALL	_main,_LCD_INIT
	FNCALL	_main,_UART_INIT
	FNCALL	_main,_Lcd_Write
	FNCALL	_main,_DelayMs
	FNCALL	_SYSTEM_INIT,_DelayMs
	FNCALL	_UART_INIT,___aldiv
	FNCALL	_LCD_INIT,_DelayMs
	FNCALL	_LCD_INIT,_Lcd_Write
	FNROOT	_main
	FNCALL	_ISR,_Display_In_Lcd
	FNCALL	_ISR,_SendByteSerially
	FNCALL	_Display_In_Lcd,_Lcd_String
	FNCALL	_Display_In_Lcd,i1_Lcd_Write
	FNCALL	_Lcd_String,i1_Lcd_Write
	FNCALL	_Lcd_String,i1_DelayMs
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_asciitable
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\lcd.h"
	line	11

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
	global	_PORTC
_PORTC	set	7
	global	_RCREG
_RCREG	set	26
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_OERR
_OERR	set	193
	global	_PEIE
_PEIE	set	94
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_RCIF
_RCIF	set	101
	global	_SPEN
_SPEN	set	199
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_BRGH
_BRGH	set	1218
	global	_IRCF0
_IRCF0	set	1148
	global	_IRCF1
_IRCF1	set	1149
	global	_IRCF2
_IRCF2	set	1150
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_TXEN
_TXEN	set	1221
	global	_WPUA2
_WPUA2	set	1194
	global	_nRABPU
_nRABPU	set	1039
	global	_ANSEL
_ANSEL	set	286
	global	_ANSELH
_ANSELH	set	287
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
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_7:	
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
psect	strings
	
STR_3:	
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
psect	strings
	
STR_5:	
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
psect	strings
	
STR_4:	
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
psect	strings
	
STR_1:	
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
psect	strings
	
STR_8:	
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
psect	strings
	
STR_6:	
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
psect	strings
	
STR_10:	
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
psect	strings
	
STR_2:	
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
psect	strings
	
STR_11:	
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
psect	strings
	
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
psect	strings
	
STR_9:	
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
psect	strings
	
STR_15:	
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
psect	strings
	
STR_12:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	85	;'U'
	retlw	69	;'E'
	retlw	0
psect	strings
	
STR_14:	
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	strings
	file	"slave_display.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\lcd.h"
_asciitable:
       ds      10

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
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+10)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
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
	global	?_LCD_INIT
?_LCD_INIT:	; 0 bytes @ 0x0
	global	?_SendByteSerially
?_SendByteSerially:	; 0 bytes @ 0x0
	global	??_SendByteSerially
??_SendByteSerially:	; 0 bytes @ 0x0
	global	?_Display_In_Lcd
?_Display_In_Lcd:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	?_SYSTEM_INIT
?_SYSTEM_INIT:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?i1_DelayMs
?i1_DelayMs:	; 0 bytes @ 0x0
	global	?i1_Lcd_Write
?i1_Lcd_Write:	; 0 bytes @ 0x0
	global	SendByteSerially@Byte
SendByteSerially@Byte:	; 1 bytes @ 0x0
	global	i1Lcd_Write@c
i1Lcd_Write@c:	; 1 bytes @ 0x0
	global	i1DelayMs@cnt
i1DelayMs@cnt:	; 2 bytes @ 0x0
	ds	1
	global	??i1_Lcd_Write
??i1_Lcd_Write:	; 0 bytes @ 0x1
	ds	1
	global	??i1_DelayMs
??i1_DelayMs:	; 0 bytes @ 0x2
	global	i1DelayMs@_dcnt
i1DelayMs@_dcnt:	; 2 bytes @ 0x2
	ds	1
	global	i1Lcd_Write@rs
i1Lcd_Write@rs:	; 1 bytes @ 0x3
	ds	1
	global	i1Lcd_Write@_dcnt
i1Lcd_Write@_dcnt:	; 2 bytes @ 0x4
	ds	2
	global	i1Lcd_Write@_dcnt_1579
i1Lcd_Write@_dcnt_1579:	; 2 bytes @ 0x6
	ds	2
	global	?_Lcd_String
?_Lcd_String:	; 0 bytes @ 0x8
	global	Lcd_String@clear
Lcd_String@clear:	; 1 bytes @ 0x8
	ds	1
	global	Lcd_String@second_line
Lcd_String@second_line:	; 1 bytes @ 0x9
	ds	1
	global	??_Lcd_String
??_Lcd_String:	; 0 bytes @ 0xA
	ds	1
	global	Lcd_String@st
Lcd_String@st:	; 1 bytes @ 0xB
	ds	1
	global	??_Display_In_Lcd
??_Display_In_Lcd:	; 0 bytes @ 0xC
	ds	1
	global	Display_In_Lcd@sel
Display_In_Lcd@sel:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	ds	4
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x4
	global	?_Lcd_Write
?_Lcd_Write:	; 0 bytes @ 0x4
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x4
	global	Lcd_Write@c
Lcd_Write@c:	; 1 bytes @ 0x4
	global	DelayMs@cnt
DelayMs@cnt:	; 2 bytes @ 0x4
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x4
	ds	1
	global	??_Lcd_Write
??_Lcd_Write:	; 0 bytes @ 0x5
	ds	1
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x6
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 2 bytes @ 0x6
	ds	1
	global	Lcd_Write@_dcnt
Lcd_Write@_dcnt:	; 2 bytes @ 0x7
	ds	1
	global	??_SYSTEM_INIT
??_SYSTEM_INIT:	; 0 bytes @ 0x8
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x8
	ds	1
	global	Lcd_Write@_dcnt_1579
Lcd_Write@_dcnt_1579:	; 2 bytes @ 0x9
	ds	2
	global	Lcd_Write@rs
Lcd_Write@rs:	; 1 bytes @ 0xB
	ds	1
	global	??_LCD_INIT
??_LCD_INIT:	; 0 bytes @ 0xC
	global	??___aldiv
??___aldiv:	; 0 bytes @ 0xC
	ds	1
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0xD
	global	LCD_INIT@_dcnt
LCD_INIT@_dcnt:	; 2 bytes @ 0xD
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0xE
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0xF
	ds	4
	global	?_UART_INIT
?_UART_INIT:	; 0 bytes @ 0x13
	global	UART_INIT@baudrate
UART_INIT@baudrate:	; 4 bytes @ 0x13
	ds	4
	global	??_UART_INIT
??_UART_INIT:	; 0 bytes @ 0x17
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0x1B
;;Data sizes: Strings 188, constant 0, data 10, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     27      37
;; BANK1           80      0       0
;; BANK2           80      0       0

;;
;; Pointer list with targets:

;; ?___aldiv	long  size(1) Largest target is 0
;;
;; ?_Lcd_Data	int  size(1) Largest target is 0
;;
;; Lcd_String@st	PTR const unsigned char  size(1) Largest target is 15
;;		 -> STR_15(CODE[10]), STR_14(CODE[9]), STR_13(CODE[12]), STR_12(CODE[9]), 
;;		 -> STR_11(CODE[12]), STR_10(CODE[13]), STR_9(CODE[11]), STR_8(CODE[13]), 
;;		 -> STR_7(CODE[15]), STR_6(CODE[13]), STR_5(CODE[15]), STR_4(CODE[14]), 
;;		 -> STR_3(CODE[15]), STR_2(CODE[13]), STR_1(CODE[14]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   _ISR->_Display_In_Lcd
;;   _Display_In_Lcd->_Lcd_String
;;   _Lcd_String->i1_Lcd_Write
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_UART_INIT
;;   _SYSTEM_INIT->_DelayMs
;;   _UART_INIT->___aldiv
;;   _LCD_INIT->_Lcd_Write
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     704
;;                        _SYSTEM_INIT
;;                           _LCD_INIT
;;                          _UART_INIT
;;                          _Lcd_Write
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _SYSTEM_INIT                                          0     0      0      45
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _UART_INIT                                            8     4      4     322
;;                                             19 BANK0      8     4      4
;;                            ___aldiv
;; ---------------------------------------------------------------------------------
;; (1) _LCD_INIT                                             3     3      0     180
;;                                             12 BANK0      3     3      0
;;                            _DelayMs
;;                          _Lcd_Write
;; ---------------------------------------------------------------------------------
;; (2) ___aldiv                                             15     7      8     300
;;                                              4 BANK0     15     7      8
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Write                                            8     7      1     112
;;                                              4 BANK0      8     7      1
;; ---------------------------------------------------------------------------------
;; (1) _DelayMs                                              4     2      2      45
;;                                              4 BANK0      4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ISR                                                  4     4      0     984
;;                                              0 BANK0      4     4      0
;;                     _Display_In_Lcd
;;                   _SendByteSerially
;; ---------------------------------------------------------------------------------
;; (4) _Display_In_Lcd                                       2     2      0     969
;;                                             12 COMMON     2     2      0
;;                         _Lcd_String
;;                        i1_Lcd_Write
;; ---------------------------------------------------------------------------------
;; (5) _Lcd_String                                           4     2      2     578
;;                                              8 COMMON     4     2      2
;;                        i1_Lcd_Write
;;                          i1_DelayMs
;; ---------------------------------------------------------------------------------
;; (5) i1_Lcd_Write                                          8     7      1     369
;;                                              0 COMMON     8     7      1
;; ---------------------------------------------------------------------------------
;; (6) i1_DelayMs                                            4     2      2     120
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (4) _SendByteSerially                                     1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _SYSTEM_INIT
;;     _DelayMs
;;   _LCD_INIT
;;     _DelayMs
;;     _Lcd_Write
;;   _UART_INIT
;;     ___aldiv
;;   _Lcd_Write
;;   _DelayMs
;;
;; _ISR (ROOT)
;;   _Display_In_Lcd
;;     _Lcd_String
;;       i1_Lcd_Write
;;       i1_DelayMs
;;     i1_Lcd_Write
;;   _SendByteSerially
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               50      0       0       7        0.0%
;;BITBANK2            50      0       0       6        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       5        0.0%
;;BITBANK1            50      0       0       4        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      3D      10        0.0%
;;ABS                  0      0      33       8        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       A       2        0.0%
;;BANK0               50     1B      25       3       46.3%
;;BITBANK0            50      0       0       9        0.0%
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
;;		line 62 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_SYSTEM_INIT
;;		_LCD_INIT
;;		_UART_INIT
;;		_Lcd_Write
;;		_DelayMs
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\main.c"
	line	62
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l3804:	
;main.c: 63: SYSTEM_INIT();
	fcall	_SYSTEM_INIT
	line	64
;main.c: 64: LCD_INIT();
	fcall	_LCD_INIT
	line	65
;main.c: 65: UART_INIT(38400);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_UART_INIT+3)
	movlw	0
	movwf	(?_UART_INIT+2)
	movlw	096h
	movwf	(?_UART_INIT+1)
	movlw	0
	movwf	(?_UART_INIT)

	fcall	_UART_INIT
	line	66
;main.c: 66: (Lcd_Write( 0, 0X01),DelayMs(2));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_Lcd_Write)
	bsf	status,0
	rlf	(?_Lcd_Write),f
	movlw	(0)
	fcall	_Lcd_Write
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	movlw	high(02h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l995
	line	67
;main.c: 67: while(1)
	
l994:	
	line	71
;main.c: 68: {
	
l995:	
	line	67
	goto	l995
	
l996:	
	line	72
	
l997:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_SYSTEM_INIT
psect	text318,local,class=CODE,delta=2
global __ptext318
__ptext318:

;; *************** function _SYSTEM_INIT *****************
;; Defined at:
;;		line 38 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text318
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\main.c"
	line	38
	global	__size_of_SYSTEM_INIT
	__size_of_SYSTEM_INIT	equ	__end_of_SYSTEM_INIT-_SYSTEM_INIT
	
_SYSTEM_INIT:	
	opt	stack 2
; Regs used in _SYSTEM_INIT: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l3794:	
;main.c: 39: IRCF2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1150/8)^080h,(1150)&7
	line	40
;main.c: 40: IRCF1 = 1;
	bsf	(1149/8)^080h,(1149)&7
	line	41
;main.c: 41: IRCF0 = 1;
	bsf	(1148/8)^080h,(1148)&7
	line	43
	
l3796:	
;main.c: 43: ANSEL = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h	;volatile
	line	44
;main.c: 44: ANSELH = 0x00;
	clrf	(287)^0100h	;volatile
	line	46
;main.c: 46: TRISA = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	47
;main.c: 47: TRISC = 0b00000000;
	clrf	(135)^080h	;volatile
	line	49
	
l3798:	
;main.c: 49: WPUA2 = 1;
	bsf	(1194/8)^080h,(1194)&7
	line	50
	
l3800:	
;main.c: 50: nRABPU = 0;
	bcf	(1039/8)^080h,(1039)&7
	line	52
;main.c: 52: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	54
	
l3802:	
;main.c: 54: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	55
	
l991:	
	return
	opt stack 0
GLOBAL	__end_of_SYSTEM_INIT
	__end_of_SYSTEM_INIT:
;; =============== function _SYSTEM_INIT ends ============

	signat	_SYSTEM_INIT,88
	global	_UART_INIT
psect	text319,local,class=CODE,delta=2
global __ptext319
__ptext319:

;; *************** function _UART_INIT *****************
;; Defined at:
;;		line 2 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\uart.h"
;; Parameters:    Size  Location     Type
;;  baudrate        4   19[BANK0 ] const long 
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text319
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\uart.h"
	line	2
	global	__size_of_UART_INIT
	__size_of_UART_INIT	equ	__end_of_UART_INIT-_UART_INIT
	
_UART_INIT:	
	opt	stack 2
; Regs used in _UART_INIT: [wreg+status,2+status,0+pclath+cstack]
	line	3
	
l3776:	
;uart.h: 3: SPBRG = ((8000000)/(baudrate*16))-1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(UART_INIT@baudrate),w
	movwf	(??_UART_INIT+0)+0
	movf	(UART_INIT@baudrate+1),w
	movwf	((??_UART_INIT+0)+0+1)
	movf	(UART_INIT@baudrate+2),w
	movwf	((??_UART_INIT+0)+0+2)
	movf	(UART_INIT@baudrate+3),w
	movwf	((??_UART_INIT+0)+0+3)
	movlw	04h
u3175:
	clrc
	rlf	(??_UART_INIT+0)+0,f
	rlf	(??_UART_INIT+0)+1,f
	rlf	(??_UART_INIT+0)+2,f
	rlf	(??_UART_INIT+0)+3,f
u3170:
	addlw	-1
	skipz
	goto	u3175
	movf	3+(??_UART_INIT+0)+0,w
	movwf	(?___aldiv+3)
	movf	2+(??_UART_INIT+0)+0,w
	movwf	(?___aldiv+2)
	movf	1+(??_UART_INIT+0)+0,w
	movwf	(?___aldiv+1)
	movf	0+(??_UART_INIT+0)+0,w
	movwf	(?___aldiv)

	movlw	0
	movwf	3+(?___aldiv)+04h
	movlw	07Ah
	movwf	2+(?___aldiv)+04h
	movlw	012h
	movwf	1+(?___aldiv)+04h
	movlw	0
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___aldiv)))),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	5
	
l3778:	
;uart.h: 5: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	6
	
l3780:	
;uart.h: 6: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	7
	
l3782:	
;uart.h: 7: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	9
	
l3784:	
;uart.h: 9: CREN = 1;
	bsf	(196/8),(196)&7
	line	10
	
l3786:	
;uart.h: 10: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	line	12
	
l3788:	
;uart.h: 12: GIE = 1;
	bsf	(95/8),(95)&7
	line	13
	
l3790:	
;uart.h: 13: PEIE = 1;
	bsf	(94/8),(94)&7
	line	14
	
l3792:	
;uart.h: 14: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	15
	
l940:	
	return
	opt stack 0
GLOBAL	__end_of_UART_INIT
	__end_of_UART_INIT:
;; =============== function _UART_INIT ends ============

	signat	_UART_INIT,4216
	global	_LCD_INIT
psect	text320,local,class=CODE,delta=2
global __ptext320
__ptext320:

;; *************** function _LCD_INIT *****************
;; Defined at:
;;		line 27 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\lcd.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _dcnt           2   13[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DelayMs
;;		_Lcd_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text320
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\lcd.h"
	line	27
	global	__size_of_LCD_INIT
	__size_of_LCD_INIT	equ	__end_of_LCD_INIT-_LCD_INIT
	
_LCD_INIT:	
	opt	stack 2
; Regs used in _LCD_INIT: [wreg+status,2+status,0+pclath+cstack]
	line	28
	
l3746:	
;lcd.h: 28: RA4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7
	line	29
;lcd.h: 29: RA5 = 0;
	bcf	(45/8),(45)&7
	line	31
	
l3748:	
;lcd.h: 31: DelayMs(50);
	movlw	low(032h)
	movwf	(?_DelayMs)
	movlw	high(032h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	32
	
l3750:	
;lcd.h: 32: PORTC= (PORTC & 0x0F) | ( ( 0x3 << 4 ) & 0xF0 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w
	andlw	0Fh
	iorlw	030h
	movwf	(7)	;volatile
	line	33
	
l3752:	
;lcd.h: 33: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
l3754:	
	bcf	(45/8),(45)&7
	line	34
	
l3756:	
;lcd.h: 34: { unsigned int _dcnt; _dcnt = (200)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(01Ah)
	movwf	(LCD_INIT@_dcnt)
	movlw	high(01Ah)
	movwf	((LCD_INIT@_dcnt))+1
	goto	l3758
	
l909:	
	goto	l3758
	
l908:	
	
l3758:	
	movlw	low(01h)
	subwf	(LCD_INIT@_dcnt),f
	movlw	high(01h)
	skipc
	decf	(LCD_INIT@_dcnt+1),f
	subwf	(LCD_INIT@_dcnt+1),f
	movf	(((LCD_INIT@_dcnt+1))),w
	iorwf	(((LCD_INIT@_dcnt))),w
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l3758
u3160:
	goto	l3760
	
l910:	
	line	35
	
l3760:	
;lcd.h: 35: PORTC = (PORTC & 0x0F) | ( ( 0x2 << 4 ) & 0xF0 );
	movf	(7),w
	andlw	0Fh
	iorlw	020h
	movwf	(7)	;volatile
	line	36
	
l3762:	
;lcd.h: 36: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
l3764:	
	bcf	(45/8),(45)&7
	line	38
	
l3766:	
;lcd.h: 38: Lcd_Write( 0, 0x28);
	movlw	(028h)
	movwf	(??_LCD_INIT+0)+0
	movf	(??_LCD_INIT+0)+0,w
	movwf	(?_Lcd_Write)
	movlw	(0)
	fcall	_Lcd_Write
	line	39
	
l3768:	
;lcd.h: 39: Lcd_Write( 0, 0x0C);
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_INIT+0)+0
	movf	(??_LCD_INIT+0)+0,w
	movwf	(?_Lcd_Write)
	movlw	(0)
	fcall	_Lcd_Write
	line	40
	
l3770:	
;lcd.h: 40: (Lcd_Write( 0, 0X01),DelayMs(2));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_Lcd_Write)
	bsf	status,0
	rlf	(?_Lcd_Write),f
	movlw	(0)
	fcall	_Lcd_Write
	
l3772:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	movlw	high(02h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	41
	
l3774:	
;lcd.h: 41: Lcd_Write( 0, 0x06);
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_INIT+0)+0
	movf	(??_LCD_INIT+0)+0,w
	movwf	(?_Lcd_Write)
	movlw	(0)
	fcall	_Lcd_Write
	line	42
	
l911:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_INIT
	__end_of_LCD_INIT:
;; =============== function _LCD_INIT ends ============

	signat	_LCD_INIT,88
	global	___aldiv
psect	text321,local,class=CODE,delta=2
global __ptext321
__ptext321:

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    4[BANK0 ] long 
;;  dividend        4    8[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   15[BANK0 ] long 
;;  sign            1   14[BANK0 ] unsigned char 
;;  counter         1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    4[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       8       0       0
;;      Locals:         0       6       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0      15       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_INIT
;; This function uses a non-reentrant model
;;
psect	text321
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt	stack 2
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l3684:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	10
	btfss	(___aldiv@divisor+3),7
	goto	u3011
	goto	u3010
u3011:
	goto	l3690
u3010:
	line	11
	
l3686:	
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
	
l3688:	
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	goto	l3690
	line	13
	
l2051:	
	line	14
	
l3690:	
	btfss	(___aldiv@dividend+3),7
	goto	u3021
	goto	u3020
u3021:
	goto	l3696
u3020:
	line	15
	
l3692:	
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
	
l3694:	
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	goto	l3696
	line	17
	
l2052:	
	line	18
	
l3696:	
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	line	19
	
l3698:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u3031
	goto	u3030
u3031:
	goto	l3718
u3030:
	line	20
	
l3700:	
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	line	21
	goto	l3704
	
l2055:	
	line	22
	
l3702:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u3045:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u3045
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	goto	l3704
	line	24
	
l2054:	
	line	21
	
l3704:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l3702
u3050:
	goto	l3706
	
l2056:	
	goto	l3706
	line	25
	
l2057:	
	line	26
	
l3706:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u3065:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u3065
	line	27
	
l3708:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u3075
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u3075
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u3075
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u3075:
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l3714
u3070:
	line	28
	
l3710:	
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
	
l3712:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	goto	l3714
	line	30
	
l2058:	
	line	31
	
l3714:	
	movlw	01h
u3085:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u3085

	line	32
	
l3716:	
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l3706
u3090:
	goto	l3718
	
l2059:	
	goto	l3718
	line	33
	
l2053:	
	line	34
	
l3718:	
	movf	(___aldiv@sign),w
	skipz
	goto	u3100
	goto	l3722
u3100:
	line	35
	
l3720:	
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
	goto	l3722
	
l2060:	
	line	36
	
l3722:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	goto	l2061
	
l3724:	
	line	37
	
l2061:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
;; =============== function ___aldiv ends ============

	signat	___aldiv,8316
	global	_Lcd_Write
psect	text322,local,class=CODE,delta=2
global __ptext322
__ptext322:

;; *************** function _Lcd_Write *****************
;; Defined at:
;;		line 15 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\lcd.h"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  c               1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1   11[BANK0 ] unsigned char 
;;  _dcnt           2    9[BANK0 ] unsigned int 
;;  _dcnt           2    7[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       5       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_INIT
;;		_main
;;		_Lcd_Char
;;		_Lcd_Goto
;; This function uses a non-reentrant model
;;
psect	text322
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\lcd.h"
	line	15
	global	__size_of_Lcd_Write
	__size_of_Lcd_Write	equ	__end_of_Lcd_Write-_Lcd_Write
	
_Lcd_Write:	
	opt	stack 3
; Regs used in _Lcd_Write: [wreg+status,2+status,0]
;Lcd_Write@rs stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Write@rs)
	line	16
	
l3490:	
;lcd.h: 16: RA4 =rs;
	btfsc	(Lcd_Write@rs),0
	goto	u2651
	goto	u2650
	
u2651:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(44/8),(44)&7
	goto	u2664
u2650:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7
u2664:
	line	17
	
l3492:	
;lcd.h: 17: { unsigned int _dcnt; _dcnt = (40)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(05h)
	movwf	(Lcd_Write@_dcnt)
	movlw	high(05h)
	movwf	((Lcd_Write@_dcnt))+1
	goto	l3494
	
l900:	
	goto	l3494
	
l899:	
	
l3494:	
	movlw	low(01h)
	subwf	(Lcd_Write@_dcnt),f
	movlw	high(01h)
	skipc
	decf	(Lcd_Write@_dcnt+1),f
	subwf	(Lcd_Write@_dcnt+1),f
	movf	(((Lcd_Write@_dcnt+1))),w
	iorwf	(((Lcd_Write@_dcnt))),w
	skipz
	goto	u2671
	goto	u2670
u2671:
	goto	l3494
u2670:
	goto	l3496
	
l901:	
	line	18
	
l3496:	
;lcd.h: 18: PORTC = (PORTC & 0x0F) | (c & 0xF0);
	movlw	(0F0h)
	andwf	(Lcd_Write@c),w
	movwf	(??_Lcd_Write+0)+0
	movf	(7),w
	andlw	0Fh
	iorwf	0+(??_Lcd_Write+0)+0,w
	movwf	(7)	;volatile
	line	19
	
l3498:	
;lcd.h: 19: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
l3500:	
	bcf	(45/8),(45)&7
	line	20
;lcd.h: 20: PORTC = (PORTC & 0x0F) | ( ( c << 4 ) & 0xF0 );
	movf	(Lcd_Write@c),w
	movwf	(??_Lcd_Write+0)+0
	movlw	04h
u2685:
	clrc
	rlf	(??_Lcd_Write+0)+0,f
	addlw	-1
	skipz
	goto	u2685
	movlw	(0F0h)
	andwf	0+(??_Lcd_Write+0)+0,w
	movwf	(??_Lcd_Write+1)+0
	movf	(7),w
	andlw	0Fh
	iorwf	0+(??_Lcd_Write+1)+0,w
	movwf	(7)	;volatile
	line	21
	
l3502:	
;lcd.h: 21: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
l3504:	
	bcf	(45/8),(45)&7
	line	22
	
l3506:	
;lcd.h: 22: { unsigned int _dcnt; _dcnt = (40)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(05h)
	movwf	(Lcd_Write@_dcnt_1579)
	movlw	high(05h)
	movwf	((Lcd_Write@_dcnt_1579))+1
	goto	l3508
	
l903:	
	goto	l3508
	
l902:	
	
l3508:	
	movlw	low(01h)
	subwf	(Lcd_Write@_dcnt_1579),f
	movlw	high(01h)
	skipc
	decf	(Lcd_Write@_dcnt_1579+1),f
	subwf	(Lcd_Write@_dcnt_1579+1),f
	movf	(((Lcd_Write@_dcnt_1579+1))),w
	iorwf	(((Lcd_Write@_dcnt_1579))),w
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l3508
u2690:
	goto	l905
	
l904:	
	line	23
	
l905:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Write
	__end_of_Lcd_Write:
;; =============== function _Lcd_Write ends ============

	signat	_Lcd_Write,8312
	global	_DelayMs
psect	text323,local,class=CODE,delta=2
global __ptext323
__ptext323:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 54 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\delay.h"
;; Parameters:    Size  Location     Type
;;  cnt             2    4[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  _dcnt           2    6[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_INIT
;;		_SYSTEM_INIT
;;		_main
;; This function uses a non-reentrant model
;;
psect	text323
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\delay.h"
	line	54
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 3
; Regs used in _DelayMs: [wreg+status,2+status,0]
	line	55
;delay.h: 55: do {
	
l891:	
	line	56
	
l3484:	
;delay.h: 56: { unsigned int _dcnt; _dcnt = (1000)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(085h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DelayMs@_dcnt)
	movlw	high(085h)
	movwf	((DelayMs@_dcnt))+1
	goto	l3486
	
l893:	
	goto	l3486
	
l892:	
	
l3486:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	movlw	high(01h)
	skipc
	decf	(DelayMs@_dcnt+1),f
	subwf	(DelayMs@_dcnt+1),f
	movf	(((DelayMs@_dcnt+1))),w
	iorwf	(((DelayMs@_dcnt))),w
	skipz
	goto	u2631
	goto	u2630
u2631:
	goto	l3486
u2630:
	goto	l3488
	
l894:	
	line	57
	
l3488:	
;delay.h: 57: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	movlw	high(01h)
	skipc
	decf	(DelayMs@cnt+1),f
	subwf	(DelayMs@cnt+1),f
	movf	(((DelayMs@cnt+1))),w
	iorwf	(((DelayMs@cnt))),w
	skipz
	goto	u2641
	goto	u2640
u2641:
	goto	l891
u2640:
	goto	l896
	
l895:	
	line	58
	
l896:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	_ISR
psect	text324,local,class=CODE,delta=2
global __ptext324
__ptext324:

;; *************** function _ISR *****************
;; Defined at:
;;		line 23 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Display_In_Lcd
;;		_SendByteSerially
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text324
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\main.c"
	line	23
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 2
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text324
	line	24
	
i1l3614:	
;main.c: 24: if(RCIF)
	btfss	(101/8),(101)&7
	goto	u281_21
	goto	u281_20
u281_21:
	goto	i1l988
u281_20:
	line	26
	
i1l3616:	
;main.c: 25: {
;main.c: 26: if(OERR)
	btfss	(193/8),(193)&7
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l985
u282_20:
	line	28
	
i1l3618:	
;main.c: 27: {
;main.c: 28: CREN = 0;
	bcf	(196/8),(196)&7
	line	29
;main.c: 29: CREN = 1;
	bsf	(196/8),(196)&7
	goto	i1l985
	line	30
	
i1l984:	
	line	31
;main.c: 30: }
;main.c: 31: while(!RCIF);
	goto	i1l985
	
i1l986:	
	
i1l985:	
	btfss	(101/8),(101)&7
	goto	u283_21
	goto	u283_20
u283_21:
	goto	i1l985
u283_20:
	goto	i1l3620
	
i1l987:	
	line	32
	
i1l3620:	
;main.c: 32: Display_In_Lcd(RCREG);
	movf	(26),w	;volatile
	fcall	_Display_In_Lcd
	line	33
	
i1l3622:	
;main.c: 33: SendByteSerially(RCREG);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	fcall	_SendByteSerially
	goto	i1l988
	line	34
	
i1l983:	
	line	35
	
i1l988:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
	global	_Display_In_Lcd
psect	text325,local,class=CODE,delta=2
global __ptext325
__ptext325:

;; *************** function _Display_In_Lcd *****************
;; Defined at:
;;		line 2 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\disp_enums.h"
;; Parameters:    Size  Location     Type
;;  sel             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sel             1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_String
;;		i1_Lcd_Write
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text325
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\disp_enums.h"
	line	2
	global	__size_of_Display_In_Lcd
	__size_of_Display_In_Lcd	equ	__end_of_Display_In_Lcd-_Display_In_Lcd
	
_Display_In_Lcd:	
	opt	stack 2
; Regs used in _Display_In_Lcd: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Display_In_Lcd@sel stored from wreg
	movwf	(Display_In_Lcd@sel)
	line	3
	
i1l3572:	
;disp_enums.h: 3: switch(sel)
	goto	i1l3610
	line	5
;disp_enums.h: 4: {
;disp_enums.h: 5: case 0x01: Lcd_String("  CAFE DE VIE",1,0);
	
i1l966:	
	
i1l3574:	
	clrf	(?_Lcd_String)
	bsf	status,0
	rlf	(?_Lcd_String),f
	clrf	0+(?_Lcd_String)+01h
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_Lcd_String
	line	6
;disp_enums.h: 6: Lcd_String("   BEVERAGES",0,1);
	clrf	(?_Lcd_String)
	clrf	0+(?_Lcd_String)+01h
	bsf	status,0
	rlf	0+(?_Lcd_String)+01h,f
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_Lcd_String
	line	7
;disp_enums.h: 7: break;
	goto	i1l980
	line	8
;disp_enums.h: 8: case 0x02: Lcd_String(" NORMAL COFFEE",1,0);
	
i1l968:	
	
i1l3576:	
	clrf	(?_Lcd_String)
	bsf	status,0
	rlf	(?_Lcd_String),f
	clrf	0+(?_Lcd_String)+01h
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_Lcd_String
	line	9
;disp_enums.h: 9: break;
	goto	i1l980
	line	10
;disp_enums.h: 10: case 0x03: Lcd_String("   NORMAL TEA",1,0);
	
i1l969:	
	
i1l3578:	
	clrf	(?_Lcd_String)
	bsf	status,0
	rlf	(?_Lcd_String),f
	clrf	0+(?_Lcd_String)+01h
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_Lcd_String
	line	11
;disp_enums.h: 11: break;
	goto	i1l980
	line	12
;disp_enums.h: 12: case 0x04: Lcd_String("  LIGHT COFFEE",1,0);
	
i1l970:	
	
i1l3580:	
	clrf	(?_Lcd_String)
	bsf	status,0
	rlf	(?_Lcd_String),f
	clrf	0+(?_Lcd_String)+01h
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_Lcd_String
	line	13
;disp_enums.h: 13: break;
	goto	i1l980
	line	14
;disp_enums.h: 14: case 0x05: Lcd_String("   LIGHT TEA",1,0);
	
i1l971:	
	
i1l3582:	
	clrf	(?_Lcd_String)
	bsf	status,0
	rlf	(?_Lcd_String),f
	clrf	0+(?_Lcd_String)+01h
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_Lcd_String
	line	15
;disp_enums.h: 15: break;
	goto	i1l980
	line	16
;disp_enums.h: 16: case 0x06: Lcd_String("  BLACK COFFEE",1,0);
	
i1l972:	
	
i1l3584:	
	clrf	(?_Lcd_String)
	bsf	status,0
	rlf	(?_Lcd_String),f
	clrf	0+(?_Lcd_String)+01h
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_Lcd_String
	line	17
;disp_enums.h: 17: break;
	goto	i1l980
	line	18
;disp_enums.h: 18: case 0x07: Lcd_String("   BLACK TEA",1,0);
	
i1l973:	
	
i1l3586:	
	clrf	(?_Lcd_String)
	bsf	status,0
	rlf	(?_Lcd_String),f
	clrf	0+(?_Lcd_String)+01h
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_Lcd_String
	line	19
;disp_enums.h: 19: break;
	goto	i1l980
	line	20
;disp_enums.h: 20: case 0x08: Lcd_String("      MILK",1,0);
	
i1l974:	
	
i1l3588:	
	clrf	(?_Lcd_String)
	bsf	status,0
	rlf	(?_Lcd_String),f
	clrf	0+(?_Lcd_String)+01h
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_Lcd_String
	line	21
;disp_enums.h: 21: break;
	goto	i1l980
	line	22
;disp_enums.h: 22: case 0x09: Lcd_String("   HOT WATER",1,0);
	
i1l975:	
	
i1l3590:	
	clrf	(?_Lcd_String)
	bsf	status,0
	rlf	(?_Lcd_String),f
	clrf	0+(?_Lcd_String)+01h
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_Lcd_String
	line	23
;disp_enums.h: 23: break;
	goto	i1l980
	line	24
;disp_enums.h: 24: case 0x0A: Lcd_String("      EXTRA",1,0);
	
i1l976:	
	
i1l3592:	
	clrf	(?_Lcd_String)
	bsf	status,0
	rlf	(?_Lcd_String),f
	clrf	0+(?_Lcd_String)+01h
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_Lcd_String
	line	25
;disp_enums.h: 25: break;
	goto	i1l980
	line	26
;disp_enums.h: 26: case 0x0B: Lcd_String("CONTINUE",1,0);
	
i1l977:	
	
i1l3594:	
	clrf	(?_Lcd_String)
	bsf	status,0
	rlf	(?_Lcd_String),f
	clrf	0+(?_Lcd_String)+01h
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_Lcd_String
	line	27
;disp_enums.h: 27: Lcd_String("PREPARATION",0,1);
	clrf	(?_Lcd_String)
	clrf	0+(?_Lcd_String)+01h
	bsf	status,0
	rlf	0+(?_Lcd_String)+01h,f
	movlw	((STR_13-__stringbase))&0ffh
	fcall	_Lcd_String
	line	28
;disp_enums.h: 28: break;
	goto	i1l980
	line	29
;disp_enums.h: 29: case 0x0C: Lcd_Write(0, 0x80);
	
i1l978:	
	
i1l3596:	
	movlw	(080h)
	movwf	(??_Display_In_Lcd+0)+0
	movf	(??_Display_In_Lcd+0)+0,w
	movwf	(?i1_Lcd_Write)
	movlw	(0)
	fcall	i1_Lcd_Write
	line	30
	
i1l3598:	
;disp_enums.h: 30: Lcd_String("DICATION",0,0);
	clrf	(?_Lcd_String)
	clrf	0+(?_Lcd_String)+01h
	movlw	((STR_14-__stringbase))&0ffh
	fcall	_Lcd_String
	line	31
;disp_enums.h: 31: break;
	goto	i1l980
	line	32
;disp_enums.h: 32: case 0x0D: Lcd_Write(0, 0x80);
	
i1l979:	
	
i1l3600:	
	movlw	(080h)
	movwf	(??_Display_In_Lcd+0)+0
	movf	(??_Display_In_Lcd+0)+0,w
	movwf	(?i1_Lcd_Write)
	movlw	(0)
	fcall	i1_Lcd_Write
	line	33
	
i1l3602:	
;disp_enums.h: 33: Lcd_String("SELECTION",0,0);
	clrf	(?_Lcd_String)
	clrf	0+(?_Lcd_String)+01h
	movlw	((STR_15-__stringbase))&0ffh
	fcall	_Lcd_String
	line	34
	
i1l3604:	
;disp_enums.h: 34: Lcd_Write(1, ':');
	movlw	(03Ah)
	movwf	(??_Display_In_Lcd+0)+0
	movf	(??_Display_In_Lcd+0)+0,w
	movwf	(?i1_Lcd_Write)
	movlw	(01h)
	fcall	i1_Lcd_Write
	line	35
	
i1l3606:	
;disp_enums.h: 35: Lcd_Write(0, 0x8C);
	movlw	(08Ch)
	movwf	(??_Display_In_Lcd+0)+0
	movf	(??_Display_In_Lcd+0)+0,w
	movwf	(?i1_Lcd_Write)
	movlw	(0)
	fcall	i1_Lcd_Write
	line	36
;disp_enums.h: 36: break;
	goto	i1l980
	line	37
	
i1l3608:	
;disp_enums.h: 37: }
	goto	i1l980
	line	3
	
i1l965:	
	
i1l3610:	
	movf	(Display_In_Lcd@sel),w
	; Switch size 1, requested type "space"
; Number of cases is 13, Range of values is 1 to 13
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           36    10 (fixed)
; simple_byte           40    21 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is direct_byte

	addlw	-1
	skipc
goto i1l980
	movwf fsr
	movlw	13
	subwf	fsr,w
skipnc
goto i1l980
movlw high(i1S3816)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(i1S3816)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S3816:
	ljmp	i1l3574
	ljmp	i1l3576
	ljmp	i1l3578
	ljmp	i1l3580
	ljmp	i1l3582
	ljmp	i1l3584
	ljmp	i1l3586
	ljmp	i1l3588
	ljmp	i1l3590
	ljmp	i1l3592
	ljmp	i1l3594
	ljmp	i1l3596
	ljmp	i1l3600
psect	text325

	line	37
	
i1l967:	
	line	38
	
i1l980:	
	return
	opt stack 0
GLOBAL	__end_of_Display_In_Lcd
	__end_of_Display_In_Lcd:
;; =============== function _Display_In_Lcd ends ============

	signat	_Display_In_Lcd,4216
	global	_Lcd_String
psect	text326,local,class=CODE,delta=2
global __ptext326
__ptext326:

;; *************** function _Lcd_String *****************
;; Defined at:
;;		line 52 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\lcd.h"
;; Parameters:    Size  Location     Type
;;  st              1    wreg     PTR const unsigned char 
;;		 -> STR_15(10), STR_14(9), STR_13(12), STR_12(9), 
;;		 -> STR_11(12), STR_10(13), STR_9(11), STR_8(13), 
;;		 -> STR_7(15), STR_6(13), STR_5(15), STR_4(14), 
;;		 -> STR_3(15), STR_2(13), STR_1(14), 
;;  clear           1    8[COMMON] unsigned char 
;;  second_line     1    9[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  st              1   11[COMMON] PTR const unsigned char 
;;		 -> STR_15(10), STR_14(9), STR_13(12), STR_12(9), 
;;		 -> STR_11(12), STR_10(13), STR_9(11), STR_8(13), 
;;		 -> STR_7(15), STR_6(13), STR_5(15), STR_4(14), 
;;		 -> STR_3(15), STR_2(13), STR_1(14), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_Lcd_Write
;;		i1_DelayMs
;; This function is called by:
;;		_Display_In_Lcd
;; This function uses a non-reentrant model
;;
psect	text326
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\lcd.h"
	line	52
	global	__size_of_Lcd_String
	__size_of_Lcd_String	equ	__end_of_Lcd_String-_Lcd_String
	
_Lcd_String:	
	opt	stack 2
; Regs used in _Lcd_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd_String@st stored from wreg
	movwf	(Lcd_String@st)
	line	53
	
i1l3512:	
;lcd.h: 53: if(clear==1)
	movf	(Lcd_String@clear),w
	xorlw	01h
	skipz
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l3516
u270_20:
	line	54
	
i1l3514:	
;lcd.h: 54: (Lcd_Write( 0, 0X01),DelayMs(2));
	clrf	(?i1_Lcd_Write)
	bsf	status,0
	rlf	(?i1_Lcd_Write),f
	movlw	(0)
	fcall	i1_Lcd_Write
	movlw	low(02h)
	movwf	(?i1_DelayMs)
	movlw	high(02h)
	movwf	((?i1_DelayMs))+1
	fcall	i1_DelayMs
	goto	i1l3516
	
i1l917:	
	line	55
	
i1l3516:	
;lcd.h: 55: if(second_line==1)
	movf	(Lcd_String@second_line),w
	xorlw	01h
	skipz
	goto	u271_21
	goto	u271_20
u271_21:
	goto	i1l3524
u271_20:
	line	56
	
i1l3518:	
;lcd.h: 56: (Lcd_Write( 0, 0xC0),DelayMs(2));
	movlw	(0C0h)
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	movwf	(?i1_Lcd_Write)
	movlw	(0)
	fcall	i1_Lcd_Write
	movlw	low(02h)
	movwf	(?i1_DelayMs)
	movlw	high(02h)
	movwf	((?i1_DelayMs))+1
	fcall	i1_DelayMs
	goto	i1l3524
	
i1l918:	
	line	57
;lcd.h: 57: while(*st)
	goto	i1l3524
	
i1l920:	
	line	59
	
i1l3520:	
;lcd.h: 58: {
;lcd.h: 59: Lcd_Write(1, *st++);
	movf	(Lcd_String@st),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	movwf	(?i1_Lcd_Write)
	movlw	(01h)
	fcall	i1_Lcd_Write
	
i1l3522:	
	movlw	(01h)
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	addwf	(Lcd_String@st),f
	goto	i1l3524
	line	60
	
i1l919:	
	line	57
	
i1l3524:	
	movf	(Lcd_String@st),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u272_21
	goto	u272_20
u272_21:
	goto	i1l3520
u272_20:
	goto	i1l922
	
i1l921:	
	line	61
	
i1l922:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_String
	__end_of_Lcd_String:
;; =============== function _Lcd_String ends ============

	signat	_Lcd_String,12408
	global	i1_Lcd_Write
psect	text327,local,class=CODE,delta=2
global __ptext327
__ptext327:

;; *************** function i1_Lcd_Write *****************
;; Defined at:
;;		line 15 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\lcd.h"
;; Parameters:    Size  Location     Type
;;  Lcd_Write       1    wreg     unsigned char 
;;  Lcd_Write       1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Lcd_Write       1    3[COMMON] unsigned char 
;;  Lcd_Write       2    6[COMMON] unsigned int 
;;  Lcd_Write       2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         5       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_String
;;		_Display_In_Lcd
;; This function uses a non-reentrant model
;;
psect	text327
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\lcd.h"
	line	15
	global	__size_ofi1_Lcd_Write
	__size_ofi1_Lcd_Write	equ	__end_ofi1_Lcd_Write-i1_Lcd_Write
	
i1_Lcd_Write:	
	opt	stack 3
; Regs used in i1_Lcd_Write: [wreg+status,2+status,0]
;i1Lcd_Write@rs stored from wreg
	movwf	(i1Lcd_Write@rs)
	line	16
	
i1l3726:	
;lcd.h: 16: RA4 =rs;
	btfsc	(i1Lcd_Write@rs),0
	goto	u311_21
	goto	u311_20
	
u311_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(44/8),(44)&7
	goto	u312_24
u311_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7
u312_24:
	line	17
	
i1l3728:	
;lcd.h: 17: { unsigned int _dcnt; _dcnt = (40)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(05h)
	movwf	(i1Lcd_Write@_dcnt)
	movlw	high(05h)
	movwf	((i1Lcd_Write@_dcnt))+1
	goto	i1l3730
	
i1l900:	
	goto	i1l3730
	
i1l899:	
	
i1l3730:	
	movlw	low(01h)
	subwf	(i1Lcd_Write@_dcnt),f
	movlw	high(01h)
	skipc
	decf	(i1Lcd_Write@_dcnt+1),f
	subwf	(i1Lcd_Write@_dcnt+1),f
	movf	(((i1Lcd_Write@_dcnt+1))),w
	iorwf	(((i1Lcd_Write@_dcnt))),w
	skipz
	goto	u313_21
	goto	u313_20
u313_21:
	goto	i1l3730
u313_20:
	goto	i1l3732
	
i1l901:	
	line	18
	
i1l3732:	
;lcd.h: 18: PORTC = (PORTC & 0x0F) | (c & 0xF0);
	movlw	(0F0h)
	andwf	(i1Lcd_Write@c),w
	movwf	(??i1_Lcd_Write+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w
	andlw	0Fh
	iorwf	0+(??i1_Lcd_Write+0)+0,w
	movwf	(7)	;volatile
	line	19
	
i1l3734:	
;lcd.h: 19: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
i1l3736:	
	bcf	(45/8),(45)&7
	line	20
;lcd.h: 20: PORTC = (PORTC & 0x0F) | ( ( c << 4 ) & 0xF0 );
	movf	(i1Lcd_Write@c),w
	movwf	(??i1_Lcd_Write+0)+0
	movlw	04h
u314_25:
	clrc
	rlf	(??i1_Lcd_Write+0)+0,f
	addlw	-1
	skipz
	goto	u314_25
	movlw	(0F0h)
	andwf	0+(??i1_Lcd_Write+0)+0,w
	movwf	(??i1_Lcd_Write+1)+0
	movf	(7),w
	andlw	0Fh
	iorwf	0+(??i1_Lcd_Write+1)+0,w
	movwf	(7)	;volatile
	line	21
	
i1l3738:	
;lcd.h: 21: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
i1l3740:	
	bcf	(45/8),(45)&7
	line	22
	
i1l3742:	
;lcd.h: 22: { unsigned int _dcnt; _dcnt = (40)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(05h)
	movwf	(i1Lcd_Write@_dcnt_1579)
	movlw	high(05h)
	movwf	((i1Lcd_Write@_dcnt_1579))+1
	goto	i1l3744
	
i1l903:	
	goto	i1l3744
	
i1l902:	
	
i1l3744:	
	movlw	low(01h)
	subwf	(i1Lcd_Write@_dcnt_1579),f
	movlw	high(01h)
	skipc
	decf	(i1Lcd_Write@_dcnt_1579+1),f
	subwf	(i1Lcd_Write@_dcnt_1579+1),f
	movf	(((i1Lcd_Write@_dcnt_1579+1))),w
	iorwf	(((i1Lcd_Write@_dcnt_1579))),w
	skipz
	goto	u315_21
	goto	u315_20
u315_21:
	goto	i1l3744
u315_20:
	goto	i1l905
	
i1l904:	
	line	23
	
i1l905:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Lcd_Write
	__end_ofi1_Lcd_Write:
;; =============== function i1_Lcd_Write ends ============

	signat	i1_Lcd_Write,88
	global	i1_DelayMs
psect	text328,local,class=CODE,delta=2
global __ptext328
__ptext328:

;; *************** function i1_DelayMs *****************
;; Defined at:
;;		line 54 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\delay.h"
;; Parameters:    Size  Location     Type
;;  DelayMs         2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  DelayMs         2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_String
;; This function uses a non-reentrant model
;;
psect	text328
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\delay.h"
	line	54
	global	__size_ofi1_DelayMs
	__size_ofi1_DelayMs	equ	__end_ofi1_DelayMs-i1_DelayMs
	
i1_DelayMs:	
	opt	stack 2
; Regs used in i1_DelayMs: [wreg+status,2+status,0]
	line	55
;delay.h: 55: do {
	
i1l891:	
	line	56
	
i1l3354:	
;delay.h: 56: { unsigned int _dcnt; _dcnt = (1000)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(085h)
	movwf	(i1DelayMs@_dcnt)
	movlw	high(085h)
	movwf	((i1DelayMs@_dcnt))+1
	goto	i1l3356
	
i1l893:	
	goto	i1l3356
	
i1l892:	
	
i1l3356:	
	movlw	low(01h)
	subwf	(i1DelayMs@_dcnt),f
	movlw	high(01h)
	skipc
	decf	(i1DelayMs@_dcnt+1),f
	subwf	(i1DelayMs@_dcnt+1),f
	movf	(((i1DelayMs@_dcnt+1))),w
	iorwf	(((i1DelayMs@_dcnt))),w
	skipz
	goto	u249_21
	goto	u249_20
u249_21:
	goto	i1l3356
u249_20:
	goto	i1l3358
	
i1l894:	
	line	57
	
i1l3358:	
;delay.h: 57: } while(--cnt);
	movlw	low(01h)
	subwf	(i1DelayMs@cnt),f
	movlw	high(01h)
	skipc
	decf	(i1DelayMs@cnt+1),f
	subwf	(i1DelayMs@cnt+1),f
	movf	(((i1DelayMs@cnt+1))),w
	iorwf	(((i1DelayMs@cnt))),w
	skipz
	goto	u250_21
	goto	u250_20
u250_21:
	goto	i1l891
u250_20:
	goto	i1l896
	
i1l895:	
	line	58
	
i1l896:	
	return
	opt stack 0
GLOBAL	__end_ofi1_DelayMs
	__end_ofi1_DelayMs:
;; =============== function i1_DelayMs ends ============

	signat	i1_DelayMs,88
	global	_SendByteSerially
psect	text329,local,class=CODE,delta=2
global __ptext329
__ptext329:

;; *************** function _SendByteSerially *****************
;; Defined at:
;;		line 18 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\uart.h"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;;		_SendStringSerially
;; This function uses a non-reentrant model
;;
psect	text329
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_13\uart.h"
	line	18
	global	__size_of_SendByteSerially
	__size_of_SendByteSerially	equ	__end_of_SendByteSerially-_SendByteSerially
	
_SendByteSerially:	
	opt	stack 4
; Regs used in _SendByteSerially: [wreg]
;SendByteSerially@Byte stored from wreg
	movwf	(SendByteSerially@Byte)
	line	19
	
i1l2400:	
;uart.h: 19: while(!TXIF);
	goto	i1l943
	
i1l944:	
	
i1l943:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u19_21
	goto	u19_20
u19_21:
	goto	i1l943
u19_20:
	goto	i1l2402
	
i1l945:	
	line	20
	
i1l2402:	
;uart.h: 20: TXREG = Byte;
	movf	(SendByteSerially@Byte),w
	movwf	(25)	;volatile
	line	21
	
i1l946:	
	return
	opt stack 0
GLOBAL	__end_of_SendByteSerially
	__end_of_SendByteSerially:
;; =============== function _SendByteSerially ends ============

	signat	_SendByteSerially,4216
psect	text330,local,class=CODE,delta=2
global __ptext330
__ptext330:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
