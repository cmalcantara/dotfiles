#include <stdio.h>
#define Max 1000

char line[Max];

int getlin(char s[]);
int checker();

int main(int argc, char *argv[] ){
    while (getlin(line) > 0)
        if ( 
            printf("%s\n", line);
    return 0;
}

int getlin(char s[]){
    int i, c;
    for (i = 0; (c = getchar()) != EOF; i++)
        s[i] = c;
    return i;
}

int checker(char s[], char arg[]){
    
}
