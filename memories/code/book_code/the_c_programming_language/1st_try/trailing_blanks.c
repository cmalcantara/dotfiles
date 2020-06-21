#include <stdio.h>
#define MAX 1000

int getlin(char line[], int lim);
void remover();

char line[MAX];

int main(void){
    while(1){
        getlin(line, MAX);
        remover(line);
        printf("%s", line);
    }
}

int getlin(char line[], int lim){
    int c, i;
    for(i = 0; i < lim - 1 && (c = getchar()) != EOF && c != '\n'; i++) 
       line[i] = c; 

    if (c == '\n'){
        line[i] = c;
        i++;
    }

    line[i] = '\0';
    return i;
}
 
void remover(char line[] ){
    int i; 
    for(i = 0; line[i] != '\n'; i++)
        ;

    i--;

    for(; line[i] == ' '; i--); 
        ;

    i++;
    line[i] = '\n';
    i++;
    line[i] = '\0';
}
