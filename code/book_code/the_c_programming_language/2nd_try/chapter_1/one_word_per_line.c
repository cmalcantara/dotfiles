#include <stdio.h>

#define OUT 0
#define IN  1

int main(void){

    int state, c;    

    state = OUT;

    while((c = getchar()) != EOF){

        if (c == ' ' || c == '\n' || c == '\t')
            state = OUT;

        else if (state == OUT){
            state = IN;
            putchar('\n');
        }

        if (state == IN)
            putchar(c);
    }    

    return 0;

}
