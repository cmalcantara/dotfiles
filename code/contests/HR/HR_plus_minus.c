#include <stdio.h>

int main(void){

    int n;
    double b[3] = {0};
    scanf("%d", &n);
    int a[n];
    double m = n;


    for(int i = 0; i < n; i++)
        scanf("%d" ,&a[i]);

    for(int i = 0; i < n; i++){
        if (a[i] > 0)
            b[0] += 1; //positive num
        else if (a[i] < 0)
            b[1] += 1; //negative num
        else
            b[2] += 1; //zeroes
    }

    for(int i = 0; i < 3; i++)
        printf("%f\n", (b[i]/m));

    return 0;
}

    

    
