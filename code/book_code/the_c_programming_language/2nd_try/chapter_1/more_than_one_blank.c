#include <stdio.h>

#define IN_BLANK  1
#define OUT_BLANK 0

int main(void){
    
    int state, c;

    while((c = getchar()) != EOF){
        
        if (c == ' ')
            state = IN_BLANK;

        else if (state == IN_BLANK){
            state = OUT_BLANK;
            putchar(' ');
        }

        if (state == OUT_BLANK)
            putchar(c);
    }
    
    return 0;
}
