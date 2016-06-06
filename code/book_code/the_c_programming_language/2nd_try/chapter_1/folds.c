//folds lines at LINE_MAX; uses a getchar/putchar method
#include <stdio.h>

#define OUT 0
#define IN  1
#define LINE_MAX 80
#define ARR_SIZE 1000


int main(void){

	char word[ARR_SIZE];
	int counter = 0;
	int i = 0; 
	int state;
	int c;

	state = OUT;

	while ((c = getchar()) != EOF){
		counter++;

		//checks if blank character and says if inside a word or not
		if (c == ' ' || c == '\t' || c == '\n') {
			state = OUT;
			if (c == '\n')
				counter = 0;
		} else {
			state = IN;
			word[i] = c;
			i++;
		}

		//prints out words depending on possibilities
		if (state == OUT)
			if (i > 0){
				word[i] = '\0';
				printf("%s", word);
				i = 0
			}
			putchar(c);

		//prints out a word incomplete if more than 80 characters 
		if (state == IN && i == LINE_MAX - 1){
			word[i] = '\0';
			printf("%s\n", word);
			i = 0;
			counter = 0;	    
		}else if (counter == 80){
			putchar ('\n');
			counter = 0 + (i + 1);
		}
      }
    return 0;
}
