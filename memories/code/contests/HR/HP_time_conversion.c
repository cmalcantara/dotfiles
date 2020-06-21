#include <stdio.h>

int main(void){

    int hour, minute, sec;
    char period;
    
    scanf("%d:%d:%d%c", &hour, &minute, &sec, &period);

   
    
    if (period == 'P' && hour == 12)
        ;
    else if(period == 'P')
            hour += 12;    
    else if (hour == 12 && period != 'P')
            hour = 0;

    printf("%.2d:%.2d:%.2d\n", hour, minute, sec);

    return 0;
    }
