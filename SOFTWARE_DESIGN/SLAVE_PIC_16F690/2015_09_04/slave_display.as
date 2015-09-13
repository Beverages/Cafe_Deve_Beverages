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
# 10 "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 10 "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\main.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFCFF ;#
	FNCALL	_main,_System_init
	FNCALL	_main,_Lcd_Init
	FNCALL	_main,_Lcd_Char
	FNCALL	_main,_Lcd_String
	FNCALL	_System_init,_DelayMs
	FNCALL	_Lcd_Init,_DelayMs
	FNCALL	_Lcd_Init,_Lcd_Write
	FNCALL	_Lcd_String,_Lcd_Write
	FNCALL	_Lcd_String,_DelayMs
	FNCALL	_Lcd_Char,_Lcd_Write
	FNROOT	_main
	global	_asciitable
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\lcd_combined.h"
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
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_IRCF0
_IRCF0	set	1148
	global	_IRCF1
_IRCF1	set	1149
	global	_IRCF2
_IRCF2	set	1150
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
	file	"slave_display.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\lcd_combined.h"
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
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	?_Lcd_Write
?_Lcd_Write:	; 0 bytes @ 0x0
	global	?_Lcd_Char
?_Lcd_Char:	; 0 bytes @ 0x0
	global	?_Lcd_String
?_Lcd_String:	; 0 bytes @ 0x0
	global	?_Lcd_Init
?_Lcd_Init:	; 0 bytes @ 0x0
	global	?_System_init
?_System_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	Lcd_Write@c
Lcd_Write@c:	; 1 bytes @ 0x0
	global	DelayMs@cnt
DelayMs@cnt:	; 2 bytes @ 0x0
	ds	1
	global	??_Lcd_Write
??_Lcd_Write:	; 0 bytes @ 0x1
	ds	1
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x2
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 2 bytes @ 0x2
	ds	1
	global	Lcd_Write@_dcnt
Lcd_Write@_dcnt:	; 2 bytes @ 0x3
	ds	1
	global	??_System_init
??_System_init:	; 0 bytes @ 0x4
	ds	1
	global	Lcd_Write@_dcnt_1579
Lcd_Write@_dcnt_1579:	; 2 bytes @ 0x5
	ds	2
	global	Lcd_Write@rs
Lcd_Write@rs:	; 1 bytes @ 0x7
	ds	1
	global	??_Lcd_Char
??_Lcd_Char:	; 0 bytes @ 0x8
	global	??_Lcd_String
??_Lcd_String:	; 0 bytes @ 0x8
	global	??_Lcd_Init
??_Lcd_Init:	; 0 bytes @ 0x8
	ds	1
	global	Lcd_Char@c
Lcd_Char@c:	; 1 bytes @ 0x9
	global	Lcd_String@s
Lcd_String@s:	; 1 bytes @ 0x9
	global	Lcd_Init@_dcnt
Lcd_Init@_dcnt:	; 2 bytes @ 0x9
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xB
;;Data sizes: Strings 15, constant 0, data 10, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      11
;; BANK0           80      0      10
;; BANK1           80      0       0
;; BANK2           80      0       0

;;
;; Pointer list with targets:

;; ?_Lcd_Data	int  size(1) Largest target is 0
;;
;; Lcd_String@s	PTR const unsigned char  size(1) Largest target is 15
;;		 -> STR_1(CODE[15]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Lcd_Init
;;   _System_init->_DelayMs
;;   _Lcd_Init->_Lcd_Write
;;   _Lcd_String->_Lcd_Write
;;   _Lcd_Char->_Lcd_Write
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
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
;; (0) _main                                                 0     0      0     390
;;                        _System_init
;;                           _Lcd_Init
;;                           _Lcd_Char
;;                         _Lcd_String
;; ---------------------------------------------------------------------------------
;; (1) _System_init                                          0     0      0      30
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Init                                             3     3      0     120
;;                                              8 COMMON     3     3      0
;;                            _DelayMs
;;                          _Lcd_Write
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_String                                           2     2      0     150
;;                                              8 COMMON     2     2      0
;;                          _Lcd_Write
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Char                                             2     2      0      90
;;                                              8 COMMON     2     2      0
;;                          _Lcd_Write
;; ---------------------------------------------------------------------------------
;; (2) _Lcd_Write                                            8     7      1      75
;;                                              0 COMMON     8     7      1
;; ---------------------------------------------------------------------------------
;; (2) _DelayMs                                              4     2      2      30
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _System_init
;;     _DelayMs
;;   _Lcd_Init
;;     _DelayMs
;;     _Lcd_Write
;;   _Lcd_Char
;;     _Lcd_Write
;;   _Lcd_String
;;     _Lcd_Write
;;     _DelayMs
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
;;DATA                 0      0      17      10        0.0%
;;ABS                  0      0      15       8        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      0       A       3       12.5%
;;BITBANK0            50      0       0       9        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      B       B       1       78.6%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 35 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_System_init
;;		_Lcd_Init
;;		_Lcd_Char
;;		_Lcd_String
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\main.c"
	line	35
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	36
	
l3250:	
;main.c: 36: System_init();
	fcall	_System_init
	line	37
;main.c: 37: Lcd_Init();
	fcall	_Lcd_Init
	line	38
;main.c: 38: Lcd_Char('A');
	movlw	(041h)
	fcall	_Lcd_Char
	line	39
	
l3252:	
;main.c: 39: Lcd_String("PICCIRCUIT.COM");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_Lcd_String
	goto	l947
	line	41
;main.c: 41: while(1){
	
l946:	
	line	43
	
l947:	
	line	41
	goto	l947
	
l948:	
	line	44
	
l949:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_System_init
psect	text169,local,class=CODE,delta=2
global __ptext169
__ptext169:

;; *************** function _System_init *****************
;; Defined at:
;;		line 15 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text169
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\main.c"
	line	15
	global	__size_of_System_init
	__size_of_System_init	equ	__end_of_System_init-_System_init
	
_System_init:	
	opt	stack 6
; Regs used in _System_init: [wreg+status,2+status,0+pclath+cstack]
	line	17
	
l3240:	
;main.c: 17: IRCF0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1148/8)^080h,(1148)&7
	line	18
;main.c: 18: IRCF1 = 1;
	bsf	(1149/8)^080h,(1149)&7
	line	19
;main.c: 19: IRCF2 = 1;
	bsf	(1150/8)^080h,(1150)&7
	line	20
	
l3242:	
;main.c: 20: ANSEL = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h	;volatile
	line	21
;main.c: 21: ANSELH = 0x00;
	clrf	(287)^0100h	;volatile
	line	22
;main.c: 22: TRISA = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	23
;main.c: 23: TRISC = 0b00000000;
	clrf	(135)^080h	;volatile
	line	24
	
l3244:	
;main.c: 24: WPUA2 = 1;
	bsf	(1194/8)^080h,(1194)&7
	line	25
	
l3246:	
;main.c: 25: nRABPU = 0;
	bcf	(1039/8)^080h,(1039)&7
	line	27
;main.c: 27: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	28
	
l3248:	
;main.c: 28: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	29
	
l943:	
	return
	opt stack 0
GLOBAL	__end_of_System_init
	__end_of_System_init:
;; =============== function _System_init ends ============

	signat	_System_init,88
	global	_Lcd_Init
psect	text170,local,class=CODE,delta=2
global __ptext170
__ptext170:

;; *************** function _Lcd_Init *****************
;; Defined at:
;;		line 59 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\lcd_combined.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _dcnt           2    9[COMMON] unsigned int 
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
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayMs
;;		_Lcd_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text170
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\lcd_combined.h"
	line	59
	global	__size_of_Lcd_Init
	__size_of_Lcd_Init	equ	__end_of_Lcd_Init-_Lcd_Init
	
_Lcd_Init:	
	opt	stack 6
; Regs used in _Lcd_Init: [wreg+status,2+status,0+pclath+cstack]
	line	60
	
l3210:	
;lcd_combined.h: 60: RA4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7
	line	61
;lcd_combined.h: 61: RA5 = 0;
	bcf	(45/8),(45)&7
	line	63
	
l3212:	
;lcd_combined.h: 63: DelayMs(50);
	movlw	low(032h)
	movwf	(?_DelayMs)
	movlw	high(032h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	64
	
l3214:	
;lcd_combined.h: 64: PORTC= (PORTC & 0x0F) | ( ( 0x3 << 4 ) & 0xF0 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w
	andlw	0Fh
	iorlw	030h
	movwf	(7)	;volatile
	line	65
	
l3216:	
;lcd_combined.h: 65: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
l3218:	
	bcf	(45/8),(45)&7
	line	66
	
l3220:	
;lcd_combined.h: 66: { unsigned int _dcnt; _dcnt = (200)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(01Ah)
	movwf	(Lcd_Init@_dcnt)
	movlw	high(01Ah)
	movwf	((Lcd_Init@_dcnt))+1
	goto	l3222
	
l929:	
	goto	l3222
	
l928:	
	
l3222:	
	movlw	low(01h)
	subwf	(Lcd_Init@_dcnt),f
	movlw	high(01h)
	skipc
	decf	(Lcd_Init@_dcnt+1),f
	subwf	(Lcd_Init@_dcnt+1),f
	movf	(((Lcd_Init@_dcnt+1))),w
	iorwf	(((Lcd_Init@_dcnt))),w
	skipz
	goto	u2381
	goto	u2380
u2381:
	goto	l3222
u2380:
	goto	l3224
	
l930:	
	line	67
	
l3224:	
;lcd_combined.h: 67: PORTC = (PORTC & 0x0F) | ( ( 0x2 << 4 ) & 0xF0 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w
	andlw	0Fh
	iorlw	020h
	movwf	(7)	;volatile
	line	68
	
l3226:	
;lcd_combined.h: 68: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
l3228:	
	bcf	(45/8),(45)&7
	line	70
	
l3230:	
;lcd_combined.h: 70: Lcd_Write( 0, 0x28);
	movlw	(028h)
	movwf	(??_Lcd_Init+0)+0
	movf	(??_Lcd_Init+0)+0,w
	movwf	(?_Lcd_Write)
	movlw	(0)
	fcall	_Lcd_Write
	line	71
	
l3232:	
;lcd_combined.h: 71: Lcd_Write( 0, 0x0C);
	movlw	(0Ch)
	movwf	(??_Lcd_Init+0)+0
	movf	(??_Lcd_Init+0)+0,w
	movwf	(?_Lcd_Write)
	movlw	(0)
	fcall	_Lcd_Write
	line	72
	
l3234:	
;lcd_combined.h: 72: (Lcd_Write( 0, 0X01),DelayMs(2));
	clrf	(?_Lcd_Write)
	bsf	status,0
	rlf	(?_Lcd_Write),f
	movlw	(0)
	fcall	_Lcd_Write
	
l3236:	
	movlw	low(02h)
	movwf	(?_DelayMs)
	movlw	high(02h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	73
	
l3238:	
;lcd_combined.h: 73: Lcd_Write( 0, 0x06);
	movlw	(06h)
	movwf	(??_Lcd_Init+0)+0
	movf	(??_Lcd_Init+0)+0,w
	movwf	(?_Lcd_Write)
	movlw	(0)
	fcall	_Lcd_Write
	line	74
	
l931:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Init
	__end_of_Lcd_Init:
;; =============== function _Lcd_Init ends ============

	signat	_Lcd_Init,88
	global	_Lcd_String
psect	text171,local,class=CODE,delta=2
global __ptext171
__ptext171:

;; *************** function _Lcd_String *****************
;; Defined at:
;;		line 32 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\lcd_combined.h"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_1(15), 
;; Auto vars:     Size  Location     Type
;;  s               1    9[COMMON] PTR const unsigned char 
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
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Write
;;		_DelayMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text171
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\lcd_combined.h"
	line	32
	global	__size_of_Lcd_String
	__size_of_Lcd_String	equ	__end_of_Lcd_String-_Lcd_String
	
_Lcd_String:	
	opt	stack 6
; Regs used in _Lcd_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd_String@s stored from wreg
	movwf	(Lcd_String@s)
	line	33
	
l3194:	
;lcd_combined.h: 33: while(*s){
	goto	l3208
	
l912:	
	line	34
;lcd_combined.h: 34: switch (*s) {
	goto	l3204
	line	35
;lcd_combined.h: 35: case '\c': Lcd_Write( 0, 0x01 );
	
l914:	
	
l3196:	
	clrf	(?_Lcd_Write)
	bsf	status,0
	rlf	(?_Lcd_Write),f
	movlw	(0)
	fcall	_Lcd_Write
	line	36
;lcd_combined.h: 36: DelayMs(2);
	movlw	low(02h)
	movwf	(?_DelayMs)
	movlw	high(02h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	37
;lcd_combined.h: 37: break;
	goto	l3206
	line	38
;lcd_combined.h: 38: case '\n': Lcd_Write( 0, 0xC0 ); break;
	
l916:	
	
l3198:	
	movlw	(0C0h)
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	movwf	(?_Lcd_Write)
	movlw	(0)
	fcall	_Lcd_Write
	goto	l3206
	line	39
;lcd_combined.h: 39: default : Lcd_Write( 1, *s );
	
l917:	
	
l3200:	
	movf	(Lcd_String@s),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	movwf	(?_Lcd_Write)
	movlw	(01h)
	fcall	_Lcd_Write
	line	40
;lcd_combined.h: 40: break;
	goto	l3206
	line	41
	
l3202:	
;lcd_combined.h: 41: }
	goto	l3206
	line	34
	
l913:	
	
l3204:	
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
	goto	l3198
	xorlw	99^10	; case 99
	skipnz
	goto	l3196
	goto	l3200
	opt asmopt_on

	line	41
	
l915:	
	line	42
	
l3206:	
;lcd_combined.h: 42: *s++;
	movlw	(01h)
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	addwf	(Lcd_String@s),f
	goto	l3208
	line	43
	
l911:	
	line	33
	
l3208:	
	movf	(Lcd_String@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l3204
u2370:
	goto	l919
	
l918:	
	line	44
	
l919:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_String
	__end_of_Lcd_String:
;; =============== function _Lcd_String ends ============

	signat	_Lcd_String,4216
	global	_Lcd_Char
psect	text172,local,class=CODE,delta=2
global __ptext172
__ptext172:

;; *************** function _Lcd_Char *****************
;; Defined at:
;;		line 26 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\lcd_combined.h"
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
;;		_Lcd_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text172
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\lcd_combined.h"
	line	26
	global	__size_of_Lcd_Char
	__size_of_Lcd_Char	equ	__end_of_Lcd_Char-_Lcd_Char
	
_Lcd_Char:	
	opt	stack 6
; Regs used in _Lcd_Char: [wreg+status,2+status,0+pclath+cstack]
;Lcd_Char@c stored from wreg
	movwf	(Lcd_Char@c)
	line	27
	
l3192:	
;lcd_combined.h: 27: Lcd_Write( 1, c );
	movf	(Lcd_Char@c),w
	movwf	(??_Lcd_Char+0)+0
	movf	(??_Lcd_Char+0)+0,w
	movwf	(?_Lcd_Write)
	movlw	(01h)
	fcall	_Lcd_Write
	line	28
	
l908:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Char
	__end_of_Lcd_Char:
;; =============== function _Lcd_Char ends ============

	signat	_Lcd_Char,4216
	global	_Lcd_Write
psect	text173,local,class=CODE,delta=2
global __ptext173
__ptext173:

;; *************** function _Lcd_Write *****************
;; Defined at:
;;		line 14 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\lcd_combined.h"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  c               1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1    7[COMMON] unsigned char 
;;  _dcnt           2    5[COMMON] unsigned int 
;;  _dcnt           2    3[COMMON] unsigned int 
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
;;		_Lcd_String
;;		_Lcd_Init
;;		_Lcd_Goto
;; This function uses a non-reentrant model
;;
psect	text173
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\lcd_combined.h"
	line	14
	global	__size_of_Lcd_Write
	__size_of_Lcd_Write	equ	__end_of_Lcd_Write-_Lcd_Write
	
_Lcd_Write:	
	opt	stack 6
; Regs used in _Lcd_Write: [wreg+status,2+status,0]
;Lcd_Write@rs stored from wreg
	movwf	(Lcd_Write@rs)
	line	15
	
l2262:	
;lcd_combined.h: 15: RA4 =rs;
	btfsc	(Lcd_Write@rs),0
	goto	u31
	goto	u30
	
u31:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(44/8),(44)&7
	goto	u44
u30:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7
u44:
	line	16
	
l2264:	
;lcd_combined.h: 16: { unsigned int _dcnt; _dcnt = (40)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(05h)
	movwf	(Lcd_Write@_dcnt)
	movlw	high(05h)
	movwf	((Lcd_Write@_dcnt))+1
	goto	l2266
	
l900:	
	goto	l2266
	
l899:	
	
l2266:	
	movlw	low(01h)
	subwf	(Lcd_Write@_dcnt),f
	movlw	high(01h)
	skipc
	decf	(Lcd_Write@_dcnt+1),f
	subwf	(Lcd_Write@_dcnt+1),f
	movf	(((Lcd_Write@_dcnt+1))),w
	iorwf	(((Lcd_Write@_dcnt))),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l2266
u50:
	goto	l2268
	
l901:	
	line	17
	
l2268:	
;lcd_combined.h: 17: PORTC = (PORTC & 0x0F) | (c & 0xF0);
	movlw	(0F0h)
	andwf	(Lcd_Write@c),w
	movwf	(??_Lcd_Write+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w
	andlw	0Fh
	iorwf	0+(??_Lcd_Write+0)+0,w
	movwf	(7)	;volatile
	line	18
	
l2270:	
;lcd_combined.h: 18: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
l2272:	
	bcf	(45/8),(45)&7
	line	19
;lcd_combined.h: 19: PORTC = (PORTC & 0x0F) | ( ( c << 4 ) & 0xF0 );
	movf	(Lcd_Write@c),w
	movwf	(??_Lcd_Write+0)+0
	movlw	04h
u65:
	clrc
	rlf	(??_Lcd_Write+0)+0,f
	addlw	-1
	skipz
	goto	u65
	movlw	(0F0h)
	andwf	0+(??_Lcd_Write+0)+0,w
	movwf	(??_Lcd_Write+1)+0
	movf	(7),w
	andlw	0Fh
	iorwf	0+(??_Lcd_Write+1)+0,w
	movwf	(7)	;volatile
	line	20
	
l2274:	
;lcd_combined.h: 20: ((RA5 = 1),(RA5=0));
	bsf	(45/8),(45)&7
	
l2276:	
	bcf	(45/8),(45)&7
	line	21
	
l2278:	
;lcd_combined.h: 21: { unsigned int _dcnt; _dcnt = (40)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(05h)
	movwf	(Lcd_Write@_dcnt_1579)
	movlw	high(05h)
	movwf	((Lcd_Write@_dcnt_1579))+1
	goto	l2280
	
l903:	
	goto	l2280
	
l902:	
	
l2280:	
	movlw	low(01h)
	subwf	(Lcd_Write@_dcnt_1579),f
	movlw	high(01h)
	skipc
	decf	(Lcd_Write@_dcnt_1579+1),f
	subwf	(Lcd_Write@_dcnt_1579+1),f
	movf	(((Lcd_Write@_dcnt_1579+1))),w
	iorwf	(((Lcd_Write@_dcnt_1579))),w
	skipz
	goto	u71
	goto	u70
u71:
	goto	l2280
u70:
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
psect	text174,local,class=CODE,delta=2
global __ptext174
__ptext174:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 54 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\delay.h"
;; Parameters:    Size  Location     Type
;;  cnt             2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  _dcnt           2    2[COMMON] unsigned int 
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
;;		_Lcd_Init
;;		_System_init
;; This function uses a non-reentrant model
;;
psect	text174
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\2015_09_04\delay.h"
	line	54
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 6
; Regs used in _DelayMs: [wreg+status,2+status,0]
	line	55
;delay.h: 55: do {
	
l891:	
	line	56
	
l2256:	
;delay.h: 56: { unsigned int _dcnt; _dcnt = (1000)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(085h)
	movwf	(DelayMs@_dcnt)
	movlw	high(085h)
	movwf	((DelayMs@_dcnt))+1
	goto	l2258
	
l893:	
	goto	l2258
	
l892:	
	
l2258:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	movlw	high(01h)
	skipc
	decf	(DelayMs@_dcnt+1),f
	subwf	(DelayMs@_dcnt+1),f
	movf	(((DelayMs@_dcnt+1))),w
	iorwf	(((DelayMs@_dcnt))),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l2258
u10:
	goto	l2260
	
l894:	
	line	57
	
l2260:	
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
	goto	u21
	goto	u20
u21:
	goto	l891
u20:
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
psect	text175,local,class=CODE,delta=2
global __ptext175
__ptext175:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
