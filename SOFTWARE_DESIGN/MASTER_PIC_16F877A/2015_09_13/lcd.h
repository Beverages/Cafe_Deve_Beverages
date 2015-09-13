
#define LCD PORTD
#define RS RD2
#define EN RD3
#define Lcd_Clear Lcd_Cmd(0x01)
#define Lcd_Secline Lcd_Cmd(0xC0)

unsigned char asciitable[10]={'0','1','2','3','4','5','6','7','8','9'};

void Lcd_Init();	//Function to Initialise LCD
void Lcd_Cmd(unsigned char s);	//Function to send Lcd Command
void Lcd_Data(unsigned char x);	//Function to send Lcd Data
//void Lcd_String(const unsigned char* st);	//Function to send Lcd String
void Lcd_String(const unsigned char* st, char clear, char second_line);
void Num_Disp(unsigned int dat,unsigned char digit,unsigned char dot);	//Function to send Number with Dot