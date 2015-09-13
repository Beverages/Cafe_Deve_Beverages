
#include "uart.h"


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

    CREN = 1; //Enables Continuous Reception
    TXEN = 1; //Enables Transmission

	GIE = 1;	//Global Interrupt Enable bit
	PEIE = 1;	//Peripheral Interrupt Enable bit
    RCIE = 1;	//EUSART Receive Interrupt Enable bit
  }
}

void SendByteSerially(unsigned char Byte)  //Writes a character to the serial port
{
	while(!TXIF);  //wait for previous transmission to finish
	TXREG = Byte;
}

/*unsigned char ReceiveByteSerially(void)   //Gets a character from the serial port
{
	if(OERR) //if over run error, then reset the receiver
	{
		CREN = 0;
		CREN = 1;
	}
	
	while(!RCIF);  //wait for transmission to receive
	return RCREG;
}
*/
void SendStringSerially(const unsigned char* st)
{
	while(*st)
		SendByteSerially(*st++);
}

/*void TRACENUM(unsigned char Byte)
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
*/