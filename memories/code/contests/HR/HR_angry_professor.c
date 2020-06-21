#include <stdio.h>

int main(void){

    int t, K, N;
    scanf("%d", &t);

    while(t--){

       int holder, in_time = 0;

       scanf("%d %d", &N, &K);

       for(int i = 0; i < N; i++){
            scanf("%d", &holder);
            if (holder < 1)
                in_time++;
       }

       if (K > in_time)
            printf("YES\n");
       else 
            printf("NO\n");
    }
    return 0;
}
