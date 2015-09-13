#ifndef	_XTAL_FREQ
	#define	_XTAL_FREQ	20MHZ		/* Crystal frequency in MHz */
#endif

#define	MHZ	*1000L			/* number of kHz in a MHz */
#define	KHZ	*1			/* number of kHz in a kHz */

#if	_XTAL_FREQ >= 12MHZ

#define	DelayUs(x)	{ unsigned char _dcnt; \
			  _dcnt = (x)*((_XTAL_FREQ)/(12MHZ)); \
			  while(--_dcnt != 0) \
				  continue; }
#else

#define	DelayUs(x)	{ unsigned char _dcnt; \
			  _dcnt = (x)/((12MHZ)/(_XTAL_FREQ))|1; \
			  while(--_dcnt != 0) \
				  continue; }
#endif

extern void DelayMs(unsigned short cnt);
