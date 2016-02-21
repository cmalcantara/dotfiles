#include <stdio.h>

int main(void){

    int lol;
    int *pfuc;
    

    lol = 2;
    pfuc = &lol;
   
    printf("%d\n", *pfuc);
    
    *pfuc = 25;

    printf("%d\n", *pfuc);
    return 0;
}
   
