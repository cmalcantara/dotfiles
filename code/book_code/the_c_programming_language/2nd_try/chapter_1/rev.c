//NOTE: this program also reverses the placement of the \n character so it's in front and might look messy
#include <stdio.h>
#include <string.h>

#define MAX 10000

void reverse(char s[]);
int  getlin(char word[], int limit);

int main(void){


    char line[MAX];

    long r;
    while (getlin(line, MAX) > 0){
        reverse(line);
        printf("%s", line);
    }

    return 0;

}

int getlin(char line[], int limit){
    
    long i, c; 
    for(i = 0; i < limit - 1 && (c = getchar()) != EOF && c != '\n'; i++)
        line[i] = c;

    if (c == '\n'){
        line[i] = '\n';
        i++;
    }

    line[i] = '\0';
    return i;
}

void reverse(char s[]){
    
    int holder;
    for(int i = 0, j = strlen(s) - 1; i < j; i++, j--){
        holder = s[i];
        s[i] = s[j];
        s[j] = holder;
    }
}
