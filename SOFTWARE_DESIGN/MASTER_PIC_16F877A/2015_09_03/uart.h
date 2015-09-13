
#ifndef _header
	#include<htc.h>
	#define _XTAL_FREQ 20000000   //MHz
#endif

//void Uart_Init(void);
void Uart_Init(const long int baudrate);
void SendByteSerially(unsigned char Byte);
unsigned char ReceiveByteSerially(void);
void SendStringSerially(const unsigned char* st);
void TRACENUM(unsigned char Byte);
void TRACE(const unsigned char* st);
void TRACE_SEL(const unsigned char* str,const unsigned char* st,unsigned char newline);
