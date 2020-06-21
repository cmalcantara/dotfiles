#include <stdio.h>
int main(void){

    int t, n;
    scanf("%d", &t);

    while(t--){
        scanf("%d", &n);
        int copy = n, mod = 10, div = 1, num = 0;
        for (; copy != 0; copy /= 10, mod *= 10, div *= 10){
            if (((n % mod) / div) == 0)
                ;
            else if (n % ((n % mod) / div) == 0) 
                num++;
        }
        printf("%d\n", num);
    }
    return 0;
}

