#include <stdio.h>
#define NUM(n, m, l)    (n % m) / l
int main(void){

    long long input, copy, mod = 10, div = 1;
    int a[10] = {0};

    printf("Enter a number: ");
    scanf("%lld", &input);
    copy = input;

    //Finds each digit of the number and adds 1 to array a if found
    //Ex. ((123 % 100) / 10) = 2.3 or 2
    for(int i = 0; copy != 0; copy /= 10, mod *= 10, div *= 10)
        a[NUM(input, mod, div) - 1]  += 1; 
        
    printf("repeated digit(s): ");
    for(int i = 0; i < 4; i++)
        if (a[i] > 1)
           printf("%d ", i + 1);
        
    return 0;
}
