#include <stdio.h>
#include <ctype.h>

int main()
{

	int c;

	printf("Enter message: ");
	while ((c = getchar()) != '\n')
		switch(c) {
		case 'A':
		case 'a':
			putchar('4');
			break;
		case 'B':
		case 'b':
			putchar('8');
			break;
		case 'E':
		case 'e':
			putchar('3');
			break;
		case 'I':
		case 'i':
			putchar('1');
			break;
		case '0':
		case 'o':
			putchar('0');
			break;
		case 'S':
		case 's':
			putchar('5');
			break;
		default:
			putchar(toupper(c));
	
	}
	printf("!!!!!!!!!!!\n");

	return 0;
}
