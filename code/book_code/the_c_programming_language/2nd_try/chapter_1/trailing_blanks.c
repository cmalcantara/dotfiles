#include <stdio.h>
#define MAX 1000

int getlin(char line[], int limit);
void remove_trail(char line[]);

int main(void){

    char line[MAX];

    while((getlin(line, MAX)) > 0){
        remove_trail(line);
        if (line[0] == '\n')
            ;
        else
            printf("%s", line);
    }

    return 0;
    
}

int getlin(char line[], int limit){

    int i, c;
    for(i = 0; i < limit - 1 && (c = getchar()) != EOF && c != '\n'; i++)
        line[i] = c;
    
    if (c == '\n'){
        line[i] = c;
        i++;
    }
    line[i] = '\0';
    return i;
}

void remove_trail(char s[]){
    
    //counts up until it reaches '\n
    int counter = 0;
    for(int i = s[counter]; i != '\n'; counter++, i = s[counter])
        ;

    //because the index is on the '\n', not the one before it
    counter--;
        
    //goes backward until it reaches a non tab or blank character
    for(int i = s[counter]; i == ' ' || i == '\t'; counter--, i = s[counter])
        ;

    counter++;
    s[counter] = '\n';
    counter++;
    s[counter] = '\0';
}
