#include <stdio.h>
#include <string.h>


void squeeze_string(char s1[], char s2[], int c);

int main()
{
	char a[] = "motherfucker";
	char b[] = "other";
	int c = 'h';
	squeeze_string(a, b, c);
	printf("%s\n", a);
	return 0;
}

void squeeze_string(char s1[], char s2[], int c)
{
	int i, j, k;
	for (k = 0; s2[k] != '\0'; k++)
		for (i = j = 0; s1[i] != '\0'; i++) 
			if (s1[i] != s2[k])
				s1[j++] = s1[i];
	s1[j] = '\0';
}
