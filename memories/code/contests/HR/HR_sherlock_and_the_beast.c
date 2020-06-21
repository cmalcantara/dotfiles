#include <stdio.h>

int main(void){

    int t, n;
    scanf("%d", &t);

    while(t--){
        int three = 0, five = 0;
        scanf("%d", &n);

        if (n < 3 || n == 7){
            printf("-1\n");
            continue;
        }

        for(int i = 0; n % 3 != 0; n -= 5, five++)  ;
        three = n / 3;    

        for(int i = 0; i < three; i++)
            printf("555");
        for(int i = 0; i < five; i++)
            printf("33333");

        printf("\n");
    }
    return 0;
}
