/*

 *	Delay functions
 
 *      See delay.h for details
 *

 *	Make sure this code is compiled with full optimization!!!
 */



#include "delay.h" 



void DelayMs(unsigned short cnt)

{

	#if _XTAL_FREQ <= 2MHZ

		do{

			DelayUs(996);

		} while(--cnt);

	#endif


	#if _XTAL_FREQ > 2MHZ

		unsigned char	i;

		do {

			i = 4;

			do {
	
				DelayUs(175);

			} while(--i);

		} while(--cnt);

	#endif

}
