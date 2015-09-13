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
# 41 "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 41 "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\main.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFCFF ;#
	FNCALL	_main,_System_init
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_puts
	FNCALL	_lcd_init,_DelayMs
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_init,_lcd_clear
	FNCALL	_System_init,_DelayMs
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_puts,_DelayMs
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_DelayMs
	FNROOT	_main
	global	_PORTC
psect	text125,local,class=CODE,delta=2
global __ptext125
__ptext125:
_PORTC	set	7
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RA2
_RA2	set	42
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
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
	
STR_2:	
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
	
STR_1:	
	retlw	87	;'W'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	111	;'o'
	retlw	0
psect	strings
	file	"Tut18D_iCP21_LCDdemo_690.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

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
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_System_init
?_System_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x0
	global	DelayMs@cnt
DelayMs@cnt:	; 2 bytes @ 0x0
	ds	1
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x1
	ds	1
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x2
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 2 bytes @ 0x2
	ds	1
	global	lcd_write@_dcnt
lcd_write@_dcnt:	; 2 bytes @ 0x3
	ds	1
	global	??_System_init
??_System_init:	; 0 bytes @ 0x4
	ds	1
	global	lcd_write@_dcnt_1574
lcd_write@_dcnt_1574:	; 2 bytes @ 0x5
	ds	2
	global	lcd_write@rs_bit
lcd_write@rs_bit:	; 1 bytes @ 0x7
	ds	1
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x8
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x8
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x8
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x8
	global	lcd_goto@pos_y
lcd_goto@pos_y:	; 1 bytes @ 0x8
	ds	1
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x9
	global	lcd_puts@s
lcd_puts@s:	; 1 bytes @ 0x9
	global	lcd_init@_dcnt
lcd_init@_dcnt:	; 2 bytes @ 0x9
	ds	1
	global	lcd_goto@pos_x
lcd_goto@pos_x:	; 1 bytes @ 0xA
	ds	1
	global	lcd_init@_dcnt_1585
lcd_init@_dcnt_1585:	; 2 bytes @ 0xB
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xD
	ds	1
;;Data sizes: Strings 26, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK2           80      0       0

;;
;; Pointer list with targets:

;; lcd_puts@s	PTR const unsigned char  size(1) Largest target is 15
;;		 -> STR_2(CODE[15]), STR_1(CODE[11]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_init
;;   _lcd_init->_lcd_write
;;   _System_init->_DelayMs
;;   _lcd_goto->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _lcd_clear->_lcd_write
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     555
;;                                             13 COMMON     1     1      0
;;                        _System_init
;;                           _lcd_init
;;                           _lcd_goto
;;                           _lcd_puts
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             5     5      0     240
;;                                              8 COMMON     5     5      0
;;                            _DelayMs
;;                          _lcd_write
;;                          _lcd_clear
;; ---------------------------------------------------------------------------------
;; (1) _System_init                                          0     0      0      30
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             3     2      1     135
;;                                              8 COMMON     3     2      1
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_puts                                             2     2      0     150
;;                                              8 COMMON     2     2      0
;;                          _lcd_write
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (2) _lcd_clear                                            0     0      0     105
;;                          _lcd_write
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            8     7      1      75
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
;;   _lcd_init
;;     _DelayMs
;;     _lcd_write
;;     _lcd_clear
;;       _lcd_write
;;       _DelayMs
;;   _lcd_goto
;;     _lcd_write
;;   _lcd_puts
;;     _lcd_write
;;     _DelayMs
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50      0       0       3        0.0%
;;BITBANK1            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK1               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK2            50      0       0       6        0.0%
;;BANK2               50      0       0       7        0.0%
;;ABS                  0      0       0       8        0.0%
;;BITBANK0            50      0       0       9        0.0%
;;DATA                 0      0       0      10        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 65 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\main.c"
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
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_System_init
;;		_lcd_init
;;		_lcd_goto
;;		_lcd_puts
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\main.c"
	line	65
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	67
	
l3138:	
;main.c: 67: System_init();
	fcall	_System_init
	line	68
;main.c: 68: lcd_init();
	fcall	_lcd_init
	line	69
;main.c: 69: lcd_goto(1,4);
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_lcd_goto)
	movlw	(01h)
	fcall	_lcd_goto
	line	70
	
l3140:	
;main.c: 70: lcd_puts("Welcome To");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_puts
	line	71
	
l3142:	
;main.c: 71: lcd_goto(2,2);
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_lcd_goto)
	movlw	(02h)
	fcall	_lcd_goto
	line	72
;main.c: 72: lcd_puts("PICCIRCUIT.COM");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_puts
	goto	l3144
	line	74
;main.c: 74: while(1){
	
l940:	
	line	75
	
l3144:	
;main.c: 75: if(RA2==1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l941
u2340:
	line	76
	
l3146:	
;main.c: 76: RC3=1;
	bsf	(59/8),(59)&7
	line	77
;main.c: 77: }else{
	goto	l3144
	
l941:	
	line	78
;main.c: 78: RC3=0;
	bcf	(59/8),(59)&7
	goto	l3144
	line	79
	
l942:	
	goto	l3144
	line	80
	
l943:	
	line	74
	goto	l3144
	
l944:	
	line	81
	
l945:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text126,local,class=CODE,delta=2
global __ptext126
__ptext126:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 76 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\lcd.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _dcnt           2   11[COMMON] unsigned int 
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
;;      Locals:         4       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayMs
;;		_lcd_write
;;		_lcd_clear
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text126
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\lcd.h"
	line	76
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 5
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	77
	
l3100:	
;lcd.h: 77: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	78
;lcd.h: 78: RC2 = 0;
	bcf	(58/8),(58)&7
	line	79
;lcd.h: 79: RC1 = 0;
	bcf	(57/8),(57)&7
	line	81
	
l3102:	
;lcd.h: 81: DelayMs(50);
	movlw	low(032h)
	movwf	(?_DelayMs)
	movlw	high(032h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	82
	
l3104:	
;lcd.h: 82: PORTC = (PORTC & 0x0F) | ( ( 0x3 << 4 ) & 0xF0 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w
	andlw	0Fh
	iorlw	030h
	movwf	(7)	;volatile
	line	83
	
l3106:	
;lcd.h: 83: ((RC2 = 1),(RC2=0));
	bsf	(58/8),(58)&7
	
l3108:	
	bcf	(58/8),(58)&7
	line	84
	
l3110:	
;lcd.h: 84: DelayMs(5);
	movlw	low(05h)
	movwf	(?_DelayMs)
	movlw	high(05h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	85
	
l3112:	
;lcd.h: 85: ((RC2 = 1),(RC2=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	
l3114:	
	bcf	(58/8),(58)&7
	line	86
	
l3116:	
;lcd.h: 86: { unsigned int _dcnt; _dcnt = (200)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(01Ah)
	movwf	(lcd_init@_dcnt)
	movlw	high(01Ah)
	movwf	((lcd_init@_dcnt))+1
	goto	l3118
	
l929:	
	goto	l3118
	
l928:	
	
l3118:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt),f
	movlw	high(01h)
	skipc
	decf	(lcd_init@_dcnt+1),f
	subwf	(lcd_init@_dcnt+1),f
	movf	(((lcd_init@_dcnt+1))),w
	iorwf	(((lcd_init@_dcnt))),w
	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l3118
u2320:
	
l930:	
	line	87
;lcd.h: 87: ((RC2 = 1),(RC2=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	bcf	(58/8),(58)&7
	line	88
	
l3120:	
;lcd.h: 88: { unsigned int _dcnt; _dcnt = (200)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(01Ah)
	movwf	(lcd_init@_dcnt_1585)
	movlw	high(01Ah)
	movwf	((lcd_init@_dcnt_1585))+1
	goto	l3122
	
l932:	
	goto	l3122
	
l931:	
	
l3122:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt_1585),f
	movlw	high(01h)
	skipc
	decf	(lcd_init@_dcnt_1585+1),f
	subwf	(lcd_init@_dcnt_1585+1),f
	movf	(((lcd_init@_dcnt_1585+1))),w
	iorwf	(((lcd_init@_dcnt_1585))),w
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l3122
u2330:
	goto	l3124
	
l933:	
	line	89
	
l3124:	
;lcd.h: 89: PORTC = (PORTC & 0x0F) | ( ( 0x2 << 4 ) & 0xF0 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w
	andlw	0Fh
	iorlw	020h
	movwf	(7)	;volatile
	line	90
	
l3126:	
;lcd.h: 90: ((RC2 = 1),(RC2=0));
	bsf	(58/8),(58)&7
	
l3128:	
	bcf	(58/8),(58)&7
	line	92
	
l3130:	
;lcd.h: 92: lcd_write(0, 0x28);
	movlw	(028h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_write)
	movlw	(0)
	fcall	_lcd_write
	line	93
	
l3132:	
;lcd.h: 93: lcd_write(0, 0xC);
	movlw	(0Ch)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_write)
	movlw	(0)
	fcall	_lcd_write
	line	94
	
l3134:	
;lcd.h: 94: lcd_clear();
	fcall	_lcd_clear
	line	95
	
l3136:	
;lcd.h: 95: lcd_write(0, 0x6);
	movlw	(06h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_write)
	movlw	(0)
	fcall	_lcd_write
	line	96
	
l934:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_System_init
psect	text127,local,class=CODE,delta=2
global __ptext127
__ptext127:

;; *************** function _System_init *****************
;; Defined at:
;;		line 46 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\main.c"
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
psect	text127
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\main.c"
	line	46
	global	__size_of_System_init
	__size_of_System_init	equ	__end_of_System_init-_System_init
	
_System_init:	
	opt	stack 6
; Regs used in _System_init: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l3084:	
;main.c: 48: IRCF0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1148/8)^080h,(1148)&7
	line	49
;main.c: 49: IRCF1 = 1;
	bsf	(1149/8)^080h,(1149)&7
	line	50
;main.c: 50: IRCF2 = 1;
	bsf	(1150/8)^080h,(1150)&7
	line	51
	
l3086:	
;main.c: 51: ANSEL = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h	;volatile
	line	52
;main.c: 52: ANSELH = 0x00;
	clrf	(287)^0100h	;volatile
	line	53
	
l3088:	
;main.c: 53: TRISA = 0b00000111;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	54
	
l3090:	
;main.c: 54: TRISC = 0b00000000;
	clrf	(135)^080h	;volatile
	line	55
	
l3092:	
;main.c: 55: WPUA2 = 1;
	bsf	(1194/8)^080h,(1194)&7
	line	56
	
l3094:	
;main.c: 56: nRABPU = 0;
	bcf	(1039/8)^080h,(1039)&7
	line	58
	
l3096:	
;main.c: 58: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	59
	
l3098:	
;main.c: 59: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	60
	
l937:	
	return
	opt stack 0
GLOBAL	__end_of_System_init
	__end_of_System_init:
;; =============== function _System_init ends ============

	signat	_System_init,88
	global	_lcd_goto
psect	text128,local,class=CODE,delta=2
global __ptext128
__ptext128:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 66 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\lcd.h"
;; Parameters:    Size  Location     Type
;;  pos_x           1    wreg     unsigned char 
;;  pos_y           1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos_x           1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text128
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\lcd.h"
	line	66
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 6
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos_x stored from wreg
	movwf	(lcd_goto@pos_x)
	line	67
	
l3074:	
;lcd.h: 67: pos_y--;
	movlw	low(01h)
	subwf	(lcd_goto@pos_y),f
	line	68
	
l3076:	
;lcd.h: 68: if(pos_x==1){
	movf	(lcd_goto@pos_x),w
	xorlw	01h
	skipz
	goto	u2301
	goto	u2300
u2301:
	goto	l3080
u2300:
	line	69
	
l3078:	
;lcd.h: 69: lcd_write(0, 0x80+pos_y);
	movf	(lcd_goto@pos_y),w
	addlw	080h
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(?_lcd_write)
	movlw	(0)
	fcall	_lcd_write
	line	70
;lcd.h: 70: }else if(pos_x==2){
	goto	l925
	
l922:	
	
l3080:	
	movf	(lcd_goto@pos_x),w
	xorlw	02h
	skipz
	goto	u2311
	goto	u2310
u2311:
	goto	l925
u2310:
	line	71
	
l3082:	
;lcd.h: 71: lcd_write(0, 0xC0+pos_y);
	movf	(lcd_goto@pos_y),w
	addlw	0C0h
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(?_lcd_write)
	movlw	(0)
	fcall	_lcd_write
	goto	l925
	line	72
	
l924:	
	goto	l925
	line	73
	
l923:	
	
l925:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,8312
	global	_lcd_puts
psect	text129,local,class=CODE,delta=2
global __ptext129
__ptext129:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 45 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\lcd.h"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_2(15), STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  s               1    9[COMMON] PTR const unsigned char 
;;		 -> STR_2(15), STR_1(11), 
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
;;		_lcd_write
;;		_DelayMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text129
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\lcd.h"
	line	45
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 6
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_puts@s stored from wreg
	movwf	(lcd_puts@s)
	line	46
	
l3056:	
;lcd.h: 46: while(*s){
	goto	l3072
	
l908:	
	line	47
;lcd.h: 47: switch (*s) {
	goto	l3068
	line	48
;lcd.h: 48: case '\b': lcd_write(0,0x10); break;
	
l910:	
	
l3058:	
	movlw	(010h)
	movwf	(??_lcd_puts+0)+0
	movf	(??_lcd_puts+0)+0,w
	movwf	(?_lcd_write)
	movlw	(0)
	fcall	_lcd_write
	goto	l3070
	line	49
;lcd.h: 49: case '\f': lcd_write(0,0x1);
	
l912:	
	
l3060:	
	clrf	(?_lcd_write)
	bsf	status,0
	rlf	(?_lcd_write),f
	movlw	(0)
	fcall	_lcd_write
	line	50
;lcd.h: 50: DelayMs(2);
	movlw	low(02h)
	movwf	(?_DelayMs)
	movlw	high(02h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	51
;lcd.h: 51: break;
	goto	l3070
	line	52
;lcd.h: 52: case '\n': lcd_write(0,0xC0); break;
	
l913:	
	
l3062:	
	movlw	(0C0h)
	movwf	(??_lcd_puts+0)+0
	movf	(??_lcd_puts+0)+0,w
	movwf	(?_lcd_write)
	movlw	(0)
	fcall	_lcd_write
	goto	l3070
	line	53
;lcd.h: 53: default : lcd_write(1,*s);
	
l914:	
	
l3064:	
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_lcd_puts+0)+0
	movf	(??_lcd_puts+0)+0,w
	movwf	(?_lcd_write)
	movlw	(01h)
	fcall	_lcd_write
	line	54
;lcd.h: 54: break;
	goto	l3070
	line	55
	
l3066:	
;lcd.h: 55: }
	goto	l3070
	line	47
	
l909:	
	
l3068:	
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 8 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           20    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	8^0	; case 8
	skipnz
	goto	l3058
	xorlw	10^8	; case 10
	skipnz
	goto	l3062
	xorlw	12^10	; case 12
	skipnz
	goto	l3060
	goto	l3064
	opt asmopt_on

	line	55
	
l911:	
	line	56
	
l3070:	
;lcd.h: 56: *s++;
	movlw	(01h)
	movwf	(??_lcd_puts+0)+0
	movf	(??_lcd_puts+0)+0,w
	addwf	(lcd_puts@s),f
	goto	l3072
	line	57
	
l907:	
	line	46
	
l3072:	
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l3068
u2290:
	goto	l916
	
l915:	
	line	58
	
l916:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_clear
psect	text130,local,class=CODE,delta=2
global __ptext130
__ptext130:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 39 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\lcd.h"
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
;;		_lcd_write
;;		_DelayMs
;; This function is called by:
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text130
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\lcd.h"
	line	39
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 5
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l3054:	
;lcd.h: 40: lcd_write(0,0x1);
	clrf	(?_lcd_write)
	bsf	status,0
	rlf	(?_lcd_write),f
	movlw	(0)
	fcall	_lcd_write
	line	41
;lcd.h: 41: DelayMs(2);
	movlw	low(02h)
	movwf	(?_DelayMs)
	movlw	high(02h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	42
	
l904:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_write
psect	text131,local,class=CODE,delta=2
global __ptext131
__ptext131:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 28 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\lcd.h"
;; Parameters:    Size  Location     Type
;;  rs_bit          1    wreg     unsigned char 
;;  c               1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs_bit          1    7[COMMON] unsigned char 
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
;;		_lcd_clear
;;		_lcd_puts
;;		_lcd_goto
;;		_lcd_init
;;		_lcd_putch
;; This function uses a non-reentrant model
;;
psect	text131
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\lcd.h"
	line	28
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 6
; Regs used in _lcd_write: [wreg+status,2+status,0]
;lcd_write@rs_bit stored from wreg
	movwf	(lcd_write@rs_bit)
	line	29
	
l2174:	
;lcd.h: 29: RC0 = rs_bit;
	btfsc	(lcd_write@rs_bit),0
	goto	u31
	goto	u30
	
u31:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u44
u30:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u44:
	line	30
	
l2176:	
;lcd.h: 30: { unsigned int _dcnt; _dcnt = (40)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(05h)
	movwf	(lcd_write@_dcnt)
	movlw	high(05h)
	movwf	((lcd_write@_dcnt))+1
	goto	l2178
	
l896:	
	goto	l2178
	
l895:	
	
l2178:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt),f
	movlw	high(01h)
	skipc
	decf	(lcd_write@_dcnt+1),f
	subwf	(lcd_write@_dcnt+1),f
	movf	(((lcd_write@_dcnt+1))),w
	iorwf	(((lcd_write@_dcnt))),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l2178
u50:
	goto	l2180
	
l897:	
	line	31
	
l2180:	
;lcd.h: 31: PORTC = (PORTC & 0x0F) | (c & 0xF0);
	movlw	(0F0h)
	andwf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w
	andlw	0Fh
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(7)	;volatile
	line	32
	
l2182:	
;lcd.h: 32: ((RC2 = 1),(RC2=0));
	bsf	(58/8),(58)&7
	
l2184:	
	bcf	(58/8),(58)&7
	line	33
;lcd.h: 33: PORTC = (PORTC & 0x0F) | ( ( c << 4 ) & 0xF0 );
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u65:
	clrc
	rlf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u65
	movlw	(0F0h)
	andwf	0+(??_lcd_write+0)+0,w
	movwf	(??_lcd_write+1)+0
	movf	(7),w
	andlw	0Fh
	iorwf	0+(??_lcd_write+1)+0,w
	movwf	(7)	;volatile
	line	34
	
l2186:	
;lcd.h: 34: ((RC2 = 1),(RC2=0));
	bsf	(58/8),(58)&7
	
l2188:	
	bcf	(58/8),(58)&7
	line	35
	
l2190:	
;lcd.h: 35: { unsigned int _dcnt; _dcnt = (40)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(05h)
	movwf	(lcd_write@_dcnt_1574)
	movlw	high(05h)
	movwf	((lcd_write@_dcnt_1574))+1
	goto	l2192
	
l899:	
	goto	l2192
	
l898:	
	
l2192:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt_1574),f
	movlw	high(01h)
	skipc
	decf	(lcd_write@_dcnt_1574+1),f
	subwf	(lcd_write@_dcnt_1574+1),f
	movf	(((lcd_write@_dcnt_1574+1))),w
	iorwf	(((lcd_write@_dcnt_1574))),w
	skipz
	goto	u71
	goto	u70
u71:
	goto	l2192
u70:
	goto	l901
	
l900:	
	line	36
	
l901:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,8312
	global	_DelayMs
psect	text132,local,class=CODE,delta=2
global __ptext132
__ptext132:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 54 in file "F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\delay.h"
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
;;		_lcd_clear
;;		_lcd_puts
;;		_lcd_init
;;		_System_init
;; This function uses a non-reentrant model
;;
psect	text132
	file	"F:\BEVERAGES_ENHANCEMENT\SOFTWARE_DESIGN\SLAVE_PIC_16F690\DEMOS\Tut18D_iCP21_LCDdemo_690\delay.h"
	line	54
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 6
; Regs used in _DelayMs: [wreg+status,2+status,0]
	line	55
;delay.h: 55: do {
	
l887:	
	line	56
	
l2168:	
;delay.h: 56: { unsigned int _dcnt; _dcnt = (1000)/7.5; while(--_dcnt != 0) continue; };
	movlw	low(085h)
	movwf	(DelayMs@_dcnt)
	movlw	high(085h)
	movwf	((DelayMs@_dcnt))+1
	goto	l2170
	
l889:	
	goto	l2170
	
l888:	
	
l2170:	
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
	goto	l2170
u10:
	goto	l2172
	
l890:	
	line	57
	
l2172:	
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
	goto	l887
u20:
	goto	l892
	
l891:	
	line	58
	
l892:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
