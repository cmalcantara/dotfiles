#include <stdio.h>

int main(void){

    int t;
    long a, b;
    scanf("%d", &t);
    while(t--){
        int counter = 0;
        scanf("%ld %ld", &a, &b);
        for(int i = 1; (i * i) <= b; i++)
           if ((i * i) >= a) 
                counter++; 
        printf("%d\n", counter);
    }
    return 0;
}
