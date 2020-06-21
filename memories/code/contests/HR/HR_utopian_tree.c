#include <stdio.h>

int main(void){

    int t, n;
    scanf("%d", &t);
    while(t--){
        long size = 1;
        scanf("%d", &n);
        for(int i = 0; i < n + 1; i++){
           if (i == 0)
                ;
           else if (i % 2 == 0)
                size++;
           else
                size *= 2;
        }
        printf("%ld\n", size);
    }
    return 0;
}
