#include <stdio.h>

int main(void){
    
    const long arr_size = 95;
    long c;
    long chars[arr_size];

    for(long i = 0; i < arr_size; i++)

        chars[i] = 0;

    while ((c = getchar()) != EOF){
        for(long var = '!', i = 0; var < '~'; var++, i++){
            if (c == var)
                chars[i]++;
        }
    }

//    for(long i = 0; i < 20; i++)
//        printf("\n%d", chars[i]);
        
    
    for(long var = '!', i = 0; var < '~'; var++, i++){
        printf("\n%c :", var);
        for(long j = 0; j < chars[i]; j++)
            putchar('|');

    }
    putchar('\n');

    return 0;
    
}
