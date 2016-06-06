#include <stdio.h>

int main(void){

    int n, small, count = 0, zeros = 0;
    scanf("%d", &n);
    int a[n];
    for(int i = 0; i < n; i++)
        scanf("%d", &a[i]);
    
    small = a[0];

    for(int i = 0; zeros != n; i++){
        for(int j = 0;j< n; j++)
            if (small > a[j] && !a[j])
                small = a[j];

        for(int l = 0; l < n; l++)
            if (!a[l]){
                a[l] -= small;
                count++;
            }

        for(int k = 0; k < n; k++)
            if (a[k] == 0)
                zeros++;

        printf("%d\n", &count);
        count = 0;
    }

    return 0;
}
