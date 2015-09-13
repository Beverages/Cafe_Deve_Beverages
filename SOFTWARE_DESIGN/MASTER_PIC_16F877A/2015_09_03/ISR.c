#include "isr.h"

void interrupt ISR(void)
{
	if(T0IF)  //If Timer0 Interrupt
	{
		// XTAL frequency is 20Mhz, so CPU frequency is 5Mhz.
		// RB0 toggles after every 256 cycles, so it completes
		// its cycle in 2*256 = 512 cycles. A prescalar of 1:2
		// is being used, so a frequecny of 5M/(512*2) = 4.9KHz
		// is being generated at RB0 pin.

		RB0 = ~RB0; // Toggle RA0 pin
		T0IF = 0;   // Clear the interrupt
	}
}