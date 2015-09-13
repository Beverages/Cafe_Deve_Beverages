#include "myitoa.h"
#include<string.h>

void rev(char* buf)
{
	char t,*f,*l;
	for(f=buf,l=buf+strlen(buf)-1;f<l;f++,l--)
	{
        if(*buf == '-')
        {
          buf++;
        }
		t=*f;
		*f=*l;
		*l=t;
	}
}

void myitoa(int val,char *p)
{
	itoai=0;
    while(val)
    {
       *(p+itoai)=(val%10)+0x30;
       val=val/10;
       itoai++;
    }
    *(p+itoai)='\0';
	rev(p);
}