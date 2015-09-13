void UART_INIT(const long int baudrate)
{
	SPBRG = ((_XTAL_FREQ)/(baudrate*16))-1;

	BRGH = 1;	//Setting High Baud Rate
    SYNC = 0;	//Selecting Asynchronous Mode
	SPEN = 1;	//Enables Serial Port

    CREN = 1;	//Enables Continuous Reception
	TXEN = 1;	//Enables Transmission

	GIE = 1;	//Global Interrupt Enable bit
	PEIE = 1;	//Peripheral Interrupt Enable bit
    RCIE = 1;	//EUSART Receive Interrupt Enable bit
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

char UART_Data_Ready()
{
  return RCIF;
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


/*char UART_TX_Empty()
{
  return TRMT; //Returns Transmit Shift Status bit
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
*/