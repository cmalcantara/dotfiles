#include <stdio.h>
#define TAB_STOP 8
#define IN  1
#define OUT 0

int main(){

    int c, state;
    int spaces = 0, tabs = 0;


    state = OUT;
    while ((c = getchar()) != EOF) {
        if (c == ' ')
            state = IN;
        else if (state == IN) {
            state = OUT;
            while (spaces >= TAB_STOP){
                spaces -= TAB_STOP;
                tabs++;
            }
            for(int i = 0; i < tabs; i++)
                putchar('\t');
            for(int i = 0; i < spaces; i++)
                putchar(' ');
            tabs = spaces = 0;
        }

        if (state == IN)
            spaces++;
        else 
            putchar(c);
    }
    return 0;
}
