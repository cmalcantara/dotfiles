#include <stdio.h>

int main(void){

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
