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
# 12 "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 12 "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\main.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFCFF ;#
	FNCALL	_main,_SYSTEM_INIT
	FNCALL	_main,_LCD_INIT
	FNCALL	_main,_UART_INIT
	FNCALL	_main,_DelayMs
	FNCALL	_main,_Lcd_String
	FNCALL	_main,_Lcd_Write
	FNCALL	_main,_SendStringSerially
	FNCALL	_SYSTEM_INIT,_DelayMs
	FNCALL	_SendStringSerially,_SendByteSerially
	FNCALL	_UART_INIT,___aldiv
	FNCALL	_LCD_INIT,_DelayMs
	FNCALL	_LCD_INIT,_Lcd_Write
	FNCALL	_Lcd_String,_Lcd_Write
	FNCALL	_Lcd_String,_DelayMs
	FNROOT	_main
	FNCALL	_ISR,_Lcd_Char
	FNCALL	_Lcd_Char,i1_Lcd_Write
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_asciitable
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\lcd.h"
	line	10

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
	
STR_1:	
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	67	;'C'
	retlw	73	;'I'
	retlw	82	;'R'
	retlw	67	;'C'
	retlw	85	;'U'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	46	;'.'
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	0
psect	strings
	
STR_2:	
	retlw	87	;'W'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	101	;'e'
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
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\lcd.h"
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
	global	?_Lcd_Char
?_Lcd_Char:	; 0 bytes @ 0x0
	global	?_Lcd_String
?_Lcd_String:	; 0 bytes @ 0x0
	global	?_LCD_INIT
?_LCD_INIT:	; 0 bytes @ 0x0
	global	?_SendByteSerially
?_SendByteSerially:	; 0 bytes @ 0x0
	global	?_SendStringSerially
?_SendStringSerially:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	?_SYSTEM_INIT
?_SYSTEM_INIT:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?i1_Lcd_Write
?i1_Lcd_Write:	; 0 bytes @ 0x0
	global	i1Lcd_Write@c
i1Lcd_Write@c:	; 1 bytes @ 0x0
	ds	1
	global	??i1_Lcd_Write
??i1_Lcd_Write:	; 0 bytes @ 0x1
	ds	2
	global	i1Lcd_Write@rs
i1Lcd_Write@rs:	; 1 bytes @ 0x3
	ds	1
	global	i1Lcd_Write@_dcnt
i1Lcd_Write@_dcnt:	; 2 bytes @ 0x4
	ds	2
	global	i1Lcd_Write@_dcnt_1579
i1Lcd_Write@_dcnt_1579:	; 2 bytes @ 0x6
	ds	2
	global	??_Lcd_Char
??_Lcd_Char:	; 0 bytes @ 0x8
	ds	1
	global	Lcd_Char@c
Lcd_Char@c:	; 1 bytes @ 0x9
	ds	1
	global	??_ISR
??_ISR:	; 0 bytes @ 0xA
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	?_Lcd_Write
?_Lcd_Write:	; 0 bytes @ 0x0
	global	??_SendByteSerially
??_SendByteSerially:	; 0 bytes @ 0x0
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	Lcd_Write@c
Lcd_Write@c:	; 1 bytes @ 0x0
	global	SendByteSerially@Byte
SendByteSerially@Byte:	; 1 bytes @ 0x0
	global	DelayMs@cnt
DelayMs@cnt:	; 2 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	??_Lcd_Write
??_Lcd_Write:	; 0 bytes @ 0x1
	global	??_SendStringSerially
??_SendStringSerially:	; 0 bytes @ 0x1
	ds	1
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x2
	global	SendStringSerially@st
SendStringSerially@st:	; 1 bytes @ 0x2
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 2 bytes @ 0x2
	ds	1
	global	Lcd_Write@_dcnt
Lcd_Write@_dcnt:	; 2 bytes @ 0x3
	ds	1
	global	??_SYSTEM_INIT
??_SYSTEM_INIT:	; 0 bytes @ 0x4
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	Lcd_Write@_dcnt_1579
Lcd_Write@_dcnt_1579:	; 2 bytes @ 0x5
	ds	2
	global	Lcd_Write@rs
Lcd_Write@rs:	; 1 bytes @ 0x7
	ds	1
	global	??_Lcd_String
??_Lcd_String:	; 0 bytes @ 0x8
	global	??_LCD_INIT
??_LCD_INIT:	; 0 bytes @ 0x8
	global	??___aldiv
??___aldiv:	; 0 bytes @ 0x8
	ds	1
	global	Lcd_String@s
Lcd_String@s:	; 1 bytes @ 0x9
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x9
	global	LCD_INIT@_dcnt
LCD_INIT@_dcnt:	; 2 bytes @ 0x9
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0xA
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0xB
	ds	4
	global	?_UART_INIT
?_UART_INIT:	; 0 bytes @ 0xF
	global	UART_INIT@baudrate
UART_INIT@baudrate:	; 4 bytes @ 0xF
	ds	4
	global	??_UART_INIT
??_UART_INIT:	; 0 bytes @ 0x13
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0x17
;;Data sizes: Strings 23, constant 0, data 10, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     23      33
;; BANK1           80      0       0
;; BANK2           80      0       0

;;
;; Pointer list with targets:

;; ?___aldiv	long  size(1) Largest target is 0
;;
;; ?_Lcd_Data	int  size(1) Largest target is 0
;;
;; SendStringSerially@st	PTR const unsigned char  size(1) Largest target is 8
;;		 -> STR_2(CODE[8]), 
;;
;; Lcd_String@s	PTR const unsigned char  size(1) Largest target is 15
;;		 -> STR_1(CODE[15]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   _ISR->_Lcd_Char
;;   _Lcd_Char->i1_Lcd_Write
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_UART_INIT
;;   _SYSTEM_INIT->_DelayMs
;;   _SendStringSerially->_SendByteSerially
;;   _UART_INIT->___aldiv
;;   _LCD_INIT->_Lcd_Write
;;   _Lcd_String->_Lcd_Write
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
;; (0) _main                                                 0     0      0     995
;;                        _SYSTEM_INIT
;;                           _LCD_INIT
;;                          _UART_INIT
;;                            _DelayMs
;;                         _Lcd_String
;;                          _Lcd_Write
;;                 _SendStringSerially
;; ---------------------------------------------------------------------------------
;; (1) _SYSTEM_INIT                                          0     0      0      45
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _SendStringSerially                                   2     2      0      67
;;                                              1 BANK0      2     2      0
;;                   _SendByteSerially
;; ---------------------------------------------------------------------------------
;; (1) _UART_INIT                                            8     4      4     322
;;                                             15 BANK0      8     4      4
;;                            ___aldiv
;; ---------------------------------------------------------------------------------
;; (1) _LCD_INIT                                             3     3      0     180
;;                                              8 BANK0      3     3      0
;;                            _DelayMs
;;                          _Lcd_Write
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_String                                           2     2      0     224
;;                                              8 BANK0      2     2      0
;;                          _Lcd_Write
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (2) ___aldiv                                             15     7      8     300
;;                                              0 BANK0     15     7      8
;; ---------------------------------------------------------------------------------
;; (2) _SendByteSerially                                     1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Write                                            8     7      1     112
;;                                              0 BANK0      8     7      1
;; ---------------------------------------------------------------------------------
;; (2) _DelayMs                                              4     2      2      45
;;                                              0 BANK0      4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ISR                                                  4     4      0     391
;;                                             10 COMMON     4     4      0
;;                           _Lcd_Char
;; ---------------------------------------------------------------------------------
;; (4) _Lcd_Char                                             2     2      0     391
;;                                              8 COMMON     2     2      0
;;                        i1_Lcd_Write
;; ---------------------------------------------------------------------------------
;; (5) i1_Lcd_Write                                          8     7      1     369
;;                                              0 COMMON     8     7      1
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
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
;;   _DelayMs
;;   _Lcd_String
;;     _Lcd_Write
;;     _DelayMs
;;   _Lcd_Write
;;   _SendStringSerially
;;     _SendByteSerially
;;
;; _ISR (ROOT)
;;   _Lcd_Char
;;     i1_Lcd_Write
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
;;DATA                 0      0      37      10        0.0%
;;ABS                  0      0      2F       8        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       8       2        0.0%
;;BANK0               50     17      21       3       41.3%
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
;;		line 57 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_SYSTEM_INIT
;;		_LCD_INIT
;;		_UART_INIT
;;		_DelayMs
;;		_Lcd_String
;;		_Lcd_Write
;;		_SendStringSerially
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\main.c"
	line	57
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	58
	
l3705:	
;main.c: 58: SYSTEM_INIT();
	fcall	_SYSTEM_INIT
	line	59
;main.c: 59: LCD_INIT();
	fcall	_LCD_INIT
	line	60
;main.c: 60: UART_INIT(9600);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_UART_INIT+3)
	movlw	0
	movwf	(?_UART_INIT+2)
	movlw	025h
	movwf	(?_UART_INIT+1)
	movlw	080h
	movwf	(?_UART_INIT)

	fcall	_UART_INIT
	line	61
;main.c: 61: DelayMs(1000);
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	movlw	high(03E8h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	62
	
l3707:	
;main.c: 62: Lcd_String("PICCIRCUIT.COM");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_Lcd_String
	line	63
	
l3709:	
;main.c: 63: DelayMs(500);
	movlw	low(01F4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	movlw	high(01F4h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	64
	
l3711:	
;main.c: 64: (Lcd_Write( 0, 0X01),DelayMs(2));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_Lcd_Write)
	bsf	status,0
	rlf	(?_Lcd_Write),f
	movlw	(0)
	fcall	_Lcd_Write
	
l3713:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	movlw	high(02h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	65
;main.c: 65: while(1)
	
l979:	
	line	67
;main.c: 66: {
;main.c: 67: SendStringSerially("Welcome");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_SendStringSerially
	line	68
	
l3715:	
;main.c: 68: DelayMs(50);
	movlw	low(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	movlw	high(032h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l979
	line	69
	
l980:	
	line	65
	goto	l979
	
l981:	
	line	70
	
l982:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_SYSTEM_INIT
psect	text328,local,class=CODE,delta=2
global __ptext328
__ptext328:

;; *************** function _SYSTEM_INIT *****************
;; Defined at:
;;		line 33 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\main.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text328
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\main.c"
	line	33
	global	__size_of_SYSTEM_INIT
	__size_of_SYSTEM_INIT	equ	__end_of_SYSTEM_INIT-_SYSTEM_INIT
	
_SYSTEM_INIT:	
	opt	stack 3
; Regs used in _SYSTEM_INIT: [wreg+status,2+status,0+pclath+cstack]
	line	34
	
l3695:	
;main.c: 34: IRCF2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1150/8)^080h,(1150)&7
	line	35
;main.c: 35: IRCF1 = 1;
	bsf	(1149/8)^080h,(1149)&7
	line	36
;main.c: 36: IRCF0 = 1;
	bsf	(1148/8)^080h,(1148)&7
	line	38
	
l3697:	
;main.c: 38: ANSEL = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h	;volatile
	line	39
;main.c: 39: ANSELH = 0x00;
	clrf	(287)^0100h	;volatile
	line	41
;main.c: 41: TRISA = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	42
;main.c: 42: TRISC = 0b00000000;
	clrf	(135)^080h	;volatile
	line	44
	
l3699:	
;main.c: 44: WPUA2 = 1;
	bsf	(1194/8)^080h,(1194)&7
	line	45
	
l3701:	
;main.c: 45: nRABPU = 0;
	bcf	(1039/8)^080h,(1039)&7
	line	47
;main.c: 47: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	49
	
l3703:	
;main.c: 49: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	50
	
l976:	
	return
	opt stack 0
GLOBAL	__end_of_SYSTEM_INIT
	__end_of_SYSTEM_INIT:
;; =============== function _SYSTEM_INIT ends ============

	signat	_SYSTEM_INIT,88
	global	_SendStringSerially
psect	text329,local,class=CODE,delta=2
global __ptext329
__ptext329:

;; *************** function _SendStringSerially *****************
;; Defined at:
;;		line 24 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\uart.h"
;; Parameters:    Size  Location     Type
;;  st              1    wreg     PTR const unsigned char 
;;		 -> STR_2(8), 
;; Auto vars:     Size  Location     Type
;;  st              1    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(8), 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SendByteSerially
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text329
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\uart.h"
	line	24
	global	__size_of_SendStringSerially
	__size_of_SendStringSerially	equ	__end_of_SendStringSerially-_SendStringSerially
	
_SendStringSerially:	
	opt	stack 3
; Regs used in _SendStringSerially: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;SendStringSerially@st stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SendStringSerially@st)
	line	25
	
l3687:	
;uart.h: 25: while(*st)
	goto	l3693
	
l953:	
	line	26
	
l3689:	
;uart.h: 26: SendByteSerially(*st++);
	movf	(SendStringSerially@st),w
	movwf	fsr0
	fcall	stringdir
	fcall	_SendByteSerially
	
l3691:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_SendStringSerially+0)+0
	movf	(??_SendStringSerially+0)+0,w
	addwf	(SendStringSerially@st),f
	goto	l3693
	
l952:	
	line	25
	
l3693:	
	movf	(SendStringSerially@st),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3111
	goto	u3110
u3111:
	goto	l3689
u3110:
	goto	l955
	
l954:	
	line	27
	
l955:	
	return
	opt stack 0
GLOBAL	__end_of_SendStringSerially
	__end_of_SendStringSerially:
;; =============== function _SendStringSerially ends ============

	signat	_SendStringSerially,4216
	global	_UART_INIT
psect	text330,local,class=CODE,delta=2
global __ptext330
__ptext330:

;; *************** function _UART_INIT *****************
;; Defined at:
;;		line 2 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\uart.h"
;; Parameters:    Size  Location     Type
;;  baudrate        4   15[BANK0 ] const long 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text330
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\uart.h"
	line	2
	global	__size_of_UART_INIT
	__size_of_UART_INIT	equ	__end_of_UART_INIT-_UART_INIT
	
_UART_INIT:	
	opt	stack 3
; Regs used in _UART_INIT: [wreg+status,2+status,0+pclath+cstack]
	line	3
	
l3669:	
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
u3105:
	clrc
	rlf	(??_UART_INIT+0)+0,f
	rlf	(??_UART_INIT+0)+1,f
	rlf	(??_UART_INIT+0)+2,f
	rlf	(??_UART_INIT+0)+3,f
u3100:
	addlw	-1
	skipz
	goto	u3105
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
	
l3671:	
;uart.h: 5: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	6
	
l3673:	
;uart.h: 6: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	7
	
l3675:	
;uart.h: 7: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	9
	
l3677:	
;uart.h: 9: CREN = 1;
	bsf	(196/8),(196)&7
	line	10
	
l3679:	
;uart.h: 10: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	line	12
	
l3681:	
;uart.h: 12: GIE = 1;
	bsf	(95/8),(95)&7
	line	13
	
l3683:	
;uart.h: 13: PEIE = 1;
	bsf	(94/8),(94)&7
	line	14
	
l3685:	
;uart.h: 14: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	15
	
l943:	
	return
	opt stack 0
GLOBAL	__end_of_UART_INIT
	__end_of_UART_INIT:
;; =============== function _UART_INIT ends ============

	signat	_UART_INIT,4216
	global	_LCD_INIT
psect	text331,local,class=CODE,delta=2
global __ptext331
__ptext331:

;; *************** function _LCD_INIT *****************
;; Defined at:
;;		line 60 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\lcd.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _dcnt           2    9[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DelayMs
;;		_Lcd_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text331
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\lcd.h"
	line	60
	global	__size_of_LCD_INIT
	__size_of_LCD_INIT	equ	__end_of_LCD_INIT-_LCD_INIT
	
_LCD_INIT:	
	opt	stack 3
; Regs used in _LCD_INIT: [wreg+status,2+status,0+pclath+cstack]
	line	61
	
l3639:	
;lcd.h: 61: RA4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7
	line	62
;lcd.h: 62: RA5 = 0;
	bcf	(45/8),(45)&7
	line	64
	
l3641:	
;lcd.h: 64: DelayMs(50);
	movlw	low(032h)
	movwf	(?_DelayMs)
	movlw	high(032h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	65
	
l3643:	
;lcd.h: 65: PORTC= (PORTC & 0x0F) | ( ( 0x3 << 4 ) & 0xF0 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w
	andlw	0Fh
	iorlw	030h
	movwf	(7)	;volatile
	line	66
	
l3645:	
;lcd.h: 66: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
l3647:	
	bcf	(45/8),(45)&7
	line	67
	
l3649:	
;lcd.h: 67: { unsigned int _dcnt; _dcnt = (200)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(01Ah)
	movwf	(LCD_INIT@_dcnt)
	movlw	high(01Ah)
	movwf	((LCD_INIT@_dcnt))+1
	goto	l3651
	
l929:	
	goto	l3651
	
l928:	
	
l3651:	
	movlw	low(01h)
	subwf	(LCD_INIT@_dcnt),f
	movlw	high(01h)
	skipc
	decf	(LCD_INIT@_dcnt+1),f
	subwf	(LCD_INIT@_dcnt+1),f
	movf	(((LCD_INIT@_dcnt+1))),w
	iorwf	(((LCD_INIT@_dcnt))),w
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l3651
u3090:
	goto	l3653
	
l930:	
	line	68
	
l3653:	
;lcd.h: 68: PORTC = (PORTC & 0x0F) | ( ( 0x2 << 4 ) & 0xF0 );
	movf	(7),w
	andlw	0Fh
	iorlw	020h
	movwf	(7)	;volatile
	line	69
	
l3655:	
;lcd.h: 69: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
l3657:	
	bcf	(45/8),(45)&7
	line	71
	
l3659:	
;lcd.h: 71: Lcd_Write( 0, 0x28);
	movlw	(028h)
	movwf	(??_LCD_INIT+0)+0
	movf	(??_LCD_INIT+0)+0,w
	movwf	(?_Lcd_Write)
	movlw	(0)
	fcall	_Lcd_Write
	line	72
	
l3661:	
;lcd.h: 72: Lcd_Write( 0, 0x0C);
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_INIT+0)+0
	movf	(??_LCD_INIT+0)+0,w
	movwf	(?_Lcd_Write)
	movlw	(0)
	fcall	_Lcd_Write
	line	73
	
l3663:	
;lcd.h: 73: (Lcd_Write( 0, 0X01),DelayMs(2));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_Lcd_Write)
	bsf	status,0
	rlf	(?_Lcd_Write),f
	movlw	(0)
	fcall	_Lcd_Write
	
l3665:	
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	movlw	high(02h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	74
	
l3667:	
;lcd.h: 74: Lcd_Write( 0, 0x06);
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_INIT+0)+0
	movf	(??_LCD_INIT+0)+0,w
	movwf	(?_Lcd_Write)
	movlw	(0)
	fcall	_Lcd_Write
	line	75
	
l931:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_INIT
	__end_of_LCD_INIT:
;; =============== function _LCD_INIT ends ============

	signat	_LCD_INIT,88
	global	_Lcd_String
psect	text332,local,class=CODE,delta=2
global __ptext332
__ptext332:

;; *************** function _Lcd_String *****************
;; Defined at:
;;		line 32 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\lcd.h"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_1(15), 
;; Auto vars:     Size  Location     Type
;;  s               1    9[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(15), 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Lcd_Write
;;		_DelayMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text332
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\lcd.h"
	line	32
	global	__size_of_Lcd_String
	__size_of_Lcd_String	equ	__end_of_Lcd_String-_Lcd_String
	
_Lcd_String:	
	opt	stack 3
; Regs used in _Lcd_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd_String@s stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_String@s)
	line	33
	
l3623:	
;lcd.h: 33: while(*s)
	goto	l3637
	
l912:	
	line	35
;lcd.h: 34: {
;lcd.h: 35: switch (*s)
	goto	l3635
	line	37
;lcd.h: 36: {
;lcd.h: 37: case '\c': Lcd_Write( 0, 0x01 );
	
l914:	
	
l3625:	
	clrf	(?_Lcd_Write)
	bsf	status,0
	rlf	(?_Lcd_Write),f
	movlw	(0)
	fcall	_Lcd_Write
	line	38
;lcd.h: 38: DelayMs(2);
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	movlw	high(02h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	39
;lcd.h: 39: break;
	goto	l3637
	line	40
;lcd.h: 40: case '\n': Lcd_Write( 0, 0xC0 ); break;
	
l916:	
	
l3627:	
	movlw	(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	movwf	(?_Lcd_Write)
	movlw	(0)
	fcall	_Lcd_Write
	goto	l3637
	line	41
;lcd.h: 41: default : Lcd_Write( 1, *s++);
	
l917:	
	
l3629:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd_String@s),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	movwf	(?_Lcd_Write)
	movlw	(01h)
	fcall	_Lcd_Write
	
l3631:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	addwf	(Lcd_String@s),f
	line	42
;lcd.h: 42: break;
	goto	l3637
	line	43
	
l3633:	
;lcd.h: 43: }
	goto	l3637
	line	35
	
l913:	
	
l3635:	
	movf	(Lcd_String@s),w
	movwf	fsr0
	fcall	stringdir
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 10 to 99
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte          190    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	10^0	; case 10
	skipnz
	goto	l3627
	xorlw	99^10	; case 99
	skipnz
	goto	l3625
	goto	l3629
	opt asmopt_on

	line	43
	
l915:	
	goto	l3637
	line	44
	
l911:	
	line	33
	
l3637:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd_String@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3081
	goto	u3080
u3081:
	goto	l3635
u3080:
	goto	l919
	
l918:	
	line	45
	
l919:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_String
	__end_of_Lcd_String:
;; =============== function _Lcd_String ends ============

	signat	_Lcd_String,4216
	global	___aldiv
psect	text333,local,class=CODE,delta=2
global __ptext333
__ptext333:

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.82\sources\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] long 
;;  dividend        4    4[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   11[BANK0 ] long 
;;  sign            1   10[BANK0 ] unsigned char 
;;  counter         1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_INIT
;; This function uses a non-reentrant model
;;
psect	text333
	file	"C:\Program Files\HI-TECH Software\PICC\9.82\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt	stack 3
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l3561:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	10
	btfss	(___aldiv@divisor+3),7
	goto	u2931
	goto	u2930
u2931:
	goto	l3567
u2930:
	line	11
	
l3563:	
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
	
l3565:	
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	goto	l3567
	line	13
	
l2036:	
	line	14
	
l3567:	
	btfss	(___aldiv@dividend+3),7
	goto	u2941
	goto	u2940
u2941:
	goto	l3573
u2940:
	line	15
	
l3569:	
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
	
l3571:	
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	goto	l3573
	line	17
	
l2037:	
	line	18
	
l3573:	
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	line	19
	
l3575:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u2951
	goto	u2950
u2951:
	goto	l3595
u2950:
	line	20
	
l3577:	
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	line	21
	goto	l3581
	
l2040:	
	line	22
	
l3579:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u2965:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u2965
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	goto	l3581
	line	24
	
l2039:	
	line	21
	
l3581:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l3579
u2970:
	goto	l3583
	
l2041:	
	goto	l3583
	line	25
	
l2042:	
	line	26
	
l3583:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u2985:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u2985
	line	27
	
l3585:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u2995
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u2995
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u2995
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u2995:
	skipc
	goto	u2991
	goto	u2990
u2991:
	goto	l3591
u2990:
	line	28
	
l3587:	
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
	
l3589:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	goto	l3591
	line	30
	
l2043:	
	line	31
	
l3591:	
	movlw	01h
u3005:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u3005

	line	32
	
l3593:	
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l3583
u3010:
	goto	l3595
	
l2044:	
	goto	l3595
	line	33
	
l2038:	
	line	34
	
l3595:	
	movf	(___aldiv@sign),w
	skipz
	goto	u3020
	goto	l3599
u3020:
	line	35
	
l3597:	
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
	goto	l3599
	
l2045:	
	line	36
	
l3599:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	goto	l2046
	
l3601:	
	line	37
	
l2046:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
;; =============== function ___aldiv ends ============

	signat	___aldiv,8316
	global	_SendByteSerially
psect	text334,local,class=CODE,delta=2
global __ptext334
__ptext334:

;; *************** function _SendByteSerially *****************
;; Defined at:
;;		line 18 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\uart.h"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    0[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SendStringSerially
;; This function uses a non-reentrant model
;;
psect	text334
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\uart.h"
	line	18
	global	__size_of_SendByteSerially
	__size_of_SendByteSerially	equ	__end_of_SendByteSerially-_SendByteSerially
	
_SendByteSerially:	
	opt	stack 3
; Regs used in _SendByteSerially: [wreg]
;SendByteSerially@Byte stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SendByteSerially@Byte)
	line	19
	
l3489:	
;uart.h: 19: while(!TXIF);
	goto	l946
	
l947:	
	
l946:	
	btfss	(100/8),(100)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l946
u2720:
	goto	l3491
	
l948:	
	line	20
	
l3491:	
;uart.h: 20: TXREG = Byte;
	movf	(SendByteSerially@Byte),w
	movwf	(25)	;volatile
	line	21
	
l949:	
	return
	opt stack 0
GLOBAL	__end_of_SendByteSerially
	__end_of_SendByteSerially:
;; =============== function _SendByteSerially ends ============

	signat	_SendByteSerially,4216
	global	_Lcd_Write
psect	text335,local,class=CODE,delta=2
global __ptext335
__ptext335:

;; *************** function _Lcd_Write *****************
;; Defined at:
;;		line 14 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\lcd.h"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  c               1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1    7[BANK0 ] unsigned char 
;;  _dcnt           2    5[BANK0 ] unsigned int 
;;  _dcnt           2    3[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_String
;;		_LCD_INIT
;;		_main
;;		_Lcd_Goto
;; This function uses a non-reentrant model
;;
psect	text335
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\lcd.h"
	line	14
	global	__size_of_Lcd_Write
	__size_of_Lcd_Write	equ	__end_of_Lcd_Write-_Lcd_Write
	
_Lcd_Write:	
	opt	stack 4
; Regs used in _Lcd_Write: [wreg+status,2+status,0]
;Lcd_Write@rs stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Write@rs)
	line	15
	
l3421:	
;lcd.h: 15: RA4 =rs;
	btfsc	(Lcd_Write@rs),0
	goto	u2591
	goto	u2590
	
u2591:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(44/8),(44)&7
	goto	u2604
u2590:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7
u2604:
	line	16
	
l3423:	
;lcd.h: 16: { unsigned int _dcnt; _dcnt = (40)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(05h)
	movwf	(Lcd_Write@_dcnt)
	movlw	high(05h)
	movwf	((Lcd_Write@_dcnt))+1
	goto	l3425
	
l900:	
	goto	l3425
	
l899:	
	
l3425:	
	movlw	low(01h)
	subwf	(Lcd_Write@_dcnt),f
	movlw	high(01h)
	skipc
	decf	(Lcd_Write@_dcnt+1),f
	subwf	(Lcd_Write@_dcnt+1),f
	movf	(((Lcd_Write@_dcnt+1))),w
	iorwf	(((Lcd_Write@_dcnt))),w
	skipz
	goto	u2611
	goto	u2610
u2611:
	goto	l3425
u2610:
	goto	l3427
	
l901:	
	line	17
	
l3427:	
;lcd.h: 17: PORTC = (PORTC & 0x0F) | (c & 0xF0);
	movlw	(0F0h)
	andwf	(Lcd_Write@c),w
	movwf	(??_Lcd_Write+0)+0
	movf	(7),w
	andlw	0Fh
	iorwf	0+(??_Lcd_Write+0)+0,w
	movwf	(7)	;volatile
	line	18
	
l3429:	
;lcd.h: 18: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
l3431:	
	bcf	(45/8),(45)&7
	line	19
;lcd.h: 19: PORTC = (PORTC & 0x0F) | ( ( c << 4 ) & 0xF0 );
	movf	(Lcd_Write@c),w
	movwf	(??_Lcd_Write+0)+0
	movlw	04h
u2625:
	clrc
	rlf	(??_Lcd_Write+0)+0,f
	addlw	-1
	skipz
	goto	u2625
	movlw	(0F0h)
	andwf	0+(??_Lcd_Write+0)+0,w
	movwf	(??_Lcd_Write+1)+0
	movf	(7),w
	andlw	0Fh
	iorwf	0+(??_Lcd_Write+1)+0,w
	movwf	(7)	;volatile
	line	20
	
l3433:	
;lcd.h: 20: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
l3435:	
	bcf	(45/8),(45)&7
	line	21
	
l3437:	
;lcd.h: 21: { unsigned int _dcnt; _dcnt = (40)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(05h)
	movwf	(Lcd_Write@_dcnt_1579)
	movlw	high(05h)
	movwf	((Lcd_Write@_dcnt_1579))+1
	goto	l3439
	
l903:	
	goto	l3439
	
l902:	
	
l3439:	
	movlw	low(01h)
	subwf	(Lcd_Write@_dcnt_1579),f
	movlw	high(01h)
	skipc
	decf	(Lcd_Write@_dcnt_1579+1),f
	subwf	(Lcd_Write@_dcnt_1579+1),f
	movf	(((Lcd_Write@_dcnt_1579+1))),w
	iorwf	(((Lcd_Write@_dcnt_1579))),w
	skipz
	goto	u2631
	goto	u2630
u2631:
	goto	l3439
u2630:
	goto	l905
	
l904:	
	line	22
	
l905:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Write
	__end_of_Lcd_Write:
;; =============== function _Lcd_Write ends ============

	signat	_Lcd_Write,8312
	global	_DelayMs
psect	text336,local,class=CODE,delta=2
global __ptext336
__ptext336:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 54 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\delay.h"
;; Parameters:    Size  Location     Type
;;  cnt             2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  _dcnt           2    2[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_String
;;		_LCD_INIT
;;		_SYSTEM_INIT
;;		_main
;; This function uses a non-reentrant model
;;
psect	text336
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\delay.h"
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
	
l3415:	
;delay.h: 56: { unsigned int _dcnt; _dcnt = (1000)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(085h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DelayMs@_dcnt)
	movlw	high(085h)
	movwf	((DelayMs@_dcnt))+1
	goto	l3417
	
l893:	
	goto	l3417
	
l892:	
	
l3417:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	movlw	high(01h)
	skipc
	decf	(DelayMs@_dcnt+1),f
	subwf	(DelayMs@_dcnt+1),f
	movf	(((DelayMs@_dcnt+1))),w
	iorwf	(((DelayMs@_dcnt))),w
	skipz
	goto	u2571
	goto	u2570
u2571:
	goto	l3417
u2570:
	goto	l3419
	
l894:	
	line	57
	
l3419:	
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
	goto	u2581
	goto	u2580
u2581:
	goto	l891
u2580:
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
psect	text337,local,class=CODE,delta=2
global __ptext337
__ptext337:

;; *************** function _ISR *****************
;; Defined at:
;;		line 19 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\main.c"
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
;;      Temps:          4       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Char
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text337
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\main.c"
	line	19
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 3
; Regs used in _ISR: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text337
	line	20
	
i1l3493:	
;main.c: 20: if(RCIF)
	btfss	(101/8),(101)&7
	goto	u273_21
	goto	u273_20
u273_21:
	goto	i1l973
u273_20:
	line	22
	
i1l3495:	
;main.c: 21: {
;main.c: 22: if(OERR)
	btfss	(193/8),(193)&7
	goto	u274_21
	goto	u274_20
u274_21:
	goto	i1l970
u274_20:
	line	24
	
i1l3497:	
;main.c: 23: {
;main.c: 24: CREN = 0;
	bcf	(196/8),(196)&7
	line	25
;main.c: 25: CREN = 1;
	bsf	(196/8),(196)&7
	goto	i1l970
	line	26
	
i1l969:	
	line	27
;main.c: 26: }
;main.c: 27: while(!RCIF);
	goto	i1l970
	
i1l971:	
	
i1l970:	
	btfss	(101/8),(101)&7
	goto	u275_21
	goto	u275_20
u275_21:
	goto	i1l970
u275_20:
	goto	i1l3499
	
i1l972:	
	line	28
	
i1l3499:	
;main.c: 28: Lcd_Char(RCREG);
	movf	(26),w	;volatile
	fcall	_Lcd_Char
	goto	i1l973
	line	29
	
i1l968:	
	line	30
	
i1l973:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
	global	_Lcd_Char
psect	text338,local,class=CODE,delta=2
global __ptext338
__ptext338:

;; *************** function _Lcd_Char *****************
;; Defined at:
;;		line 26 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\lcd.h"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    9[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_Lcd_Write
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text338
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\lcd.h"
	line	26
	global	__size_of_Lcd_Char
	__size_of_Lcd_Char	equ	__end_of_Lcd_Char-_Lcd_Char
	
_Lcd_Char:	
	opt	stack 3
; Regs used in _Lcd_Char: [wreg+status,2+status,0+pclath+cstack]
;Lcd_Char@c stored from wreg
	movwf	(Lcd_Char@c)
	line	27
	
i1l3441:	
;lcd.h: 27: Lcd_Write( 1, c );
	movf	(Lcd_Char@c),w
	movwf	(??_Lcd_Char+0)+0
	movf	(??_Lcd_Char+0)+0,w
	movwf	(?i1_Lcd_Write)
	movlw	(01h)
	fcall	i1_Lcd_Write
	line	28
	
i1l908:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Char
	__end_of_Lcd_Char:
;; =============== function _Lcd_Char ends ============

	signat	_Lcd_Char,4216
	global	i1_Lcd_Write
psect	text339,local,class=CODE,delta=2
global __ptext339
__ptext339:

;; *************** function i1_Lcd_Write *****************
;; Defined at:
;;		line 14 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\lcd.h"
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
;;		_Lcd_Char
;; This function uses a non-reentrant model
;;
psect	text339
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_05\lcd.h"
	line	14
	global	__size_ofi1_Lcd_Write
	__size_ofi1_Lcd_Write	equ	__end_ofi1_Lcd_Write-i1_Lcd_Write
	
i1_Lcd_Write:	
	opt	stack 3
; Regs used in i1_Lcd_Write: [wreg+status,2+status,0]
;i1Lcd_Write@rs stored from wreg
	movwf	(i1Lcd_Write@rs)
	line	15
	
i1l3603:	
;lcd.h: 15: RA4 =rs;
	btfsc	(i1Lcd_Write@rs),0
	goto	u303_21
	goto	u303_20
	
u303_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(44/8),(44)&7
	goto	u304_24
u303_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7
u304_24:
	line	16
	
i1l3605:	
;lcd.h: 16: { unsigned int _dcnt; _dcnt = (40)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(05h)
	movwf	(i1Lcd_Write@_dcnt)
	movlw	high(05h)
	movwf	((i1Lcd_Write@_dcnt))+1
	goto	i1l3607
	
i1l900:	
	goto	i1l3607
	
i1l899:	
	
i1l3607:	
	movlw	low(01h)
	subwf	(i1Lcd_Write@_dcnt),f
	movlw	high(01h)
	skipc
	decf	(i1Lcd_Write@_dcnt+1),f
	subwf	(i1Lcd_Write@_dcnt+1),f
	movf	(((i1Lcd_Write@_dcnt+1))),w
	iorwf	(((i1Lcd_Write@_dcnt))),w
	skipz
	goto	u305_21
	goto	u305_20
u305_21:
	goto	i1l3607
u305_20:
	goto	i1l3609
	
i1l901:	
	line	17
	
i1l3609:	
;lcd.h: 17: PORTC = (PORTC & 0x0F) | (c & 0xF0);
	movlw	(0F0h)
	andwf	(i1Lcd_Write@c),w
	movwf	(??i1_Lcd_Write+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w
	andlw	0Fh
	iorwf	0+(??i1_Lcd_Write+0)+0,w
	movwf	(7)	;volatile
	line	18
	
i1l3611:	
;lcd.h: 18: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
i1l3613:	
	bcf	(45/8),(45)&7
	line	19
;lcd.h: 19: PORTC = (PORTC & 0x0F) | ( ( c << 4 ) & 0xF0 );
	movf	(i1Lcd_Write@c),w
	movwf	(??i1_Lcd_Write+0)+0
	movlw	04h
u306_25:
	clrc
	rlf	(??i1_Lcd_Write+0)+0,f
	addlw	-1
	skipz
	goto	u306_25
	movlw	(0F0h)
	andwf	0+(??i1_Lcd_Write+0)+0,w
	movwf	(??i1_Lcd_Write+1)+0
	movf	(7),w
	andlw	0Fh
	iorwf	0+(??i1_Lcd_Write+1)+0,w
	movwf	(7)	;volatile
	line	20
	
i1l3615:	
;lcd.h: 20: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
i1l3617:	
	bcf	(45/8),(45)&7
	line	21
	
i1l3619:	
;lcd.h: 21: { unsigned int _dcnt; _dcnt = (40)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(05h)
	movwf	(i1Lcd_Write@_dcnt_1579)
	movlw	high(05h)
	movwf	((i1Lcd_Write@_dcnt_1579))+1
	goto	i1l3621
	
i1l903:	
	goto	i1l3621
	
i1l902:	
	
i1l3621:	
	movlw	low(01h)
	subwf	(i1Lcd_Write@_dcnt_1579),f
	movlw	high(01h)
	skipc
	decf	(i1Lcd_Write@_dcnt_1579+1),f
	subwf	(i1Lcd_Write@_dcnt_1579+1),f
	movf	(((i1Lcd_Write@_dcnt_1579+1))),w
	iorwf	(((i1Lcd_Write@_dcnt_1579))),w
	skipz
	goto	u307_21
	goto	u307_20
u307_21:
	goto	i1l3621
u307_20:
	goto	i1l905
	
i1l904:	
	line	22
	
i1l905:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Lcd_Write
	__end_ofi1_Lcd_Write:
;; =============== function i1_Lcd_Write ends ============

	signat	i1_Lcd_Write,88
psect	text340,local,class=CODE,delta=2
global __ptext340
__ptext340:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
