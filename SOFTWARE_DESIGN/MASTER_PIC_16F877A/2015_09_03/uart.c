
#include "uart.h"
#include "delay.h"



/*void Uart_Init(void)
{
	//Comm Setup
	#define BAUDRATE 9600  //bps
	#ifndef _XTAL_FREQ
		#define _XTAL_FREQ 20000000   //MHz
	#endif
	
	TRISC6 = 1;   //TX Pin
	TRISC7 = 1;   //RX Pin
	
	SPBRG = ((_XTAL_FREQ/16)/BAUDRATE) - 1;
	BRGH  = 0;                   	//fast baudrate
	SYNC  = 0;						//asynchronous
	SPEN  = 1;						//enable serial port pins
	CREN  = 1;						//enable reception
	SREN  = 0;						//no effect
	TXIE  = 0;						//disable tx interrupts
	RCIE  = 1;						//enable rx interrupts
	TX9   = 0;						//8-bit transmission
	RX9   = 0;						//8-bit reception
	TXEN  = 0;						//reset transmitter
	TXEN  = 1;						//enable the transmitter
	GIE  = 1;  //Enable global interrupts
   	PEIE = 1;
}
*/

void Uart_Init(const long int baudrate)
{
  unsigned int x;
  x = (_XTAL_FREQ - baudrate*64)/(baudrate*64); //SPBRG for Low Baud Rate
  if(x>255) //If High Baud Rate required
  {
    x = (_XTAL_FREQ - baudrate*16)/(baudrate*16); //SPBRG for High Baud Rate
    BRGH = 1; //Setting High Baud Rate
  }
  if(x<256)
  {
    SPBRG = x; //Writing SPBRG register
    SYNC = 0; //Selecting Asynchronous Mode
    SPEN = 1; //Enables Serial Port
    TRISC7 = 1;  
    TRISC6 = 1; 
    CREN = 1; //Enables Continuous Reception
    TXEN = 1; //Enables Transmissio
   // return 1;
  }
}

void SendByteSerially(unsigned char Byte)  //Writes a character to the serial port
{
	while(!TXIF);  //wait for previous transmission to finish
	TXREG = Byte;
}

unsigned char ReceiveByteSerially(void)   //Gets a character from the serial port
{
	if(OERR) //if over run error, then reset the receiver
	{
		CREN = 0;
		CREN = 1;
	}
	
	while(!RCIF);  //wait for transmission to receive
	return RCREG;
}

void SendStringSerially(const unsigned char* st)
{
	while(*st)
		SendByteSerially(*st++);
}

void TRACENUM(unsigned char Byte)
{
	SendStringSerially("T:");
	SendByteSerially(Byte);
	SendByteSerially('\r');
}

void TRACE(const unsigned char* st)
{
	SendStringSerially("T:");
	while(*st)
		SendByteSerially(*st++);
	SendByteSerially('\r');
}

void TRACE_SEL(const unsigned char* str,const unsigned char* st,unsigned char newline)
{
	SendStringSerially("T:");
	SendStringSerially(str);
	SendStringSerially(",");
	while(*st)
		SendByteSerially(*st++);
	if(newline)
		SendByteSerially('\r');
	else
		SendStringSerially("  ");
}
void interrupt ISR(void)
{
	if(RCIF)  //If UART Rx Interrupt
	{
		if(OERR) //if over run error, then reset the receiver
		{
			CREN = 0;
			CREN = 1;
		}	
	}	
}
