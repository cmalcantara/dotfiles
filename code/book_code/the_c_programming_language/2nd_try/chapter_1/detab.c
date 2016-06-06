#include <stdio.h>
#define TAB_STOP 5
#define IN  1
#define OUT 0

int main(){

    int c, state, counter;

    state = OUT;
    while ((c = getchar()) != EOF) {
        if (c == '\t')
            state = IN;
        else if (state == IN) {
            state = OUT;
            for(int i = 0; i < (counter * TAB_STOP); i++)
                putchar(' ');
            counter = 0;
        }

        if (state == IN)
            counter++;
        else 
            putchar(c);
    }
    return 0;
}
