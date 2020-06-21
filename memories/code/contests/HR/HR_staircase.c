#include <stdio.h>

int main(void){

    int input, space, hash;

    scanf("%d" , &input);
    space = input - 1;
    hash = 1;

    for(int i = 0; i < input; i++, space--, hash++){
        for(int j = 0; j < space; j++)
            printf(" ");
        for(int k = 0; k < hash; k++)
            printf("#");
        printf("\n");
    }
    return 0;
}
        
        
