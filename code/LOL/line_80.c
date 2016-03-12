#include <stdio.h>
#define MAX 1000

int getlin(char line[], int lim);

char line[MAX];

int main(void){
    while (1){ 
        if (getlin(line, MAX) > 80)
            printf("%s", line);
        else if (getlin(line, MAX) < 1)
            break;
    }
    return 0;
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
    
