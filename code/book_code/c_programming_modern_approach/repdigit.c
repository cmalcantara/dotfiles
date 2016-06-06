#include <stdio.h>
#define ARR 10

int main()
{
	int c;
	int a;
	
	//while (1) {
		int num[ARR] = {0};

		printf("Enter a number (-1 to quit): ");

		//saves numbers in array and breaks if <= 0)
		while ((c = getchar()) != '\n') {
			//if (c == '-')
			//	break;
			//else
				num[c - '0']++;	
		}

		//if (c == '-')
		//	break;

		//To check for only repeated digits
		printf("Repeated digit(s): ");

		for (int i = 0; i < ARR; i++)
			if (num[i] > 1)
				printf("%d ", i);
		
		printf("\n");

		//printf("Digit: \t\t");
		//for (int i = 0; i < ARR; i++)
		//	printf("%d ", i);
		//printf("\n");

		//printf("Occurrnces: \t");
		//for (int i = 0; i < ARR; i++)
		//	printf("%d ", num[i]);
		//printf("\n\n");
	//}

	return 0;
}
