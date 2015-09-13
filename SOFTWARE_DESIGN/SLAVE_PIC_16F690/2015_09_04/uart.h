char UART_Init(const long int baudrate)
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
    TXEN = 1; //Enables Transmission
    return 1;
  }
  return 0;
}

void UART_Write(char data)
{
  while(!TRMT); //Waiting for Previous Data to Transmit completly
  TXREG = data; //Writing data to Transmit Register, Starts transmission
}

void UART_Write_Text(char *text)
{
  int i;
  for(i=0;text[i]!='\\0';i++)
    UART_Write(text[i]);
}

void SendByteSerially(unsigned char Byte)  //Writes a character to the serial port
{
	while(!TXIF);  //wait for previous transmission to finish
	TXREG = Byte;
}

void SendStringSerially(const unsigned char* st)
{
	while(*st)
		SendByteSerially(*st++);
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

char UART_TX_Empty()
{
  return TRMT; //Returns Transmit Shift Status bit
}

char UART_Data_Ready()
{
  return RCIF;
}

char UART_Read()
{
  while(!RCIF); //Waits for Reception to complete
  return RCREG; //Returns the 8 bit data
}

void UART_Read_Text(char *Output, unsigned int length)
{
  int i;
  for(int i=0;i<length;i++)
    Output[i] = UART_Read();
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


/*MASTER
#include<htc.h>

#define _XTAL_FREQ 8000000 
#include "uart.h"

void main()
{
  TRISB = 0xFF; //PORTB as Input
  UART_Init(9600); 

  do
  {
    UART_Write(PORTB);
    __delay_ms(100);
  }while(1);
}
*/

/* SLAVE
void main()
{
   TRISB = 0x00; //PORTB as Output
   UART_Init(9600);

   do
   {
      if(UART_Data_Ready())       
        PORTB = UART_Read();
     __delay_ms(100);

   }while(1);
}*/