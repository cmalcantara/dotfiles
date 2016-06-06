#include <stdio.h>

#define IN   1
#define OUT  0
#define SIZE 1000

int main(void){
    
    int state, c, amount;
    int words[SIZE];

    state = IN;

    for (amount = 0; (c = getchar()) != EOF; ){
        
        if (c == ' ' || c == '\n' || c == '\t')
            state = OUT;

        else if (state == OUT){
            state = IN;
            amount++;
        }

        if (state == IN)
            words[amount]++;
     }


//    for (int i = 0; i < 20; i++)
//        printf("%d\n", words[i]);

    for (int i = 0; i < amount + 1; i++){
        printf("\nWord %3d :", i + 1);
        for (int j = 0; j < words[i]; j++)
                putchar('|');
    }
    putchar('\n');

    return 0;
}
