#include <stdio.h>
#define MAX 1000

int getlin(char s[], int lim);
int stridex(char s[], char t[]);

int main() 
{
	char first[] = "I like programming because it is so cool";
	char word[] = "like";
	int a = stridex(first, word);
	printf("%d\n", a);
	return 0;
}

//getlin: get line into s, returns length
int getlin(char s[], int lim)
{
	int c, i;

	while (--lim > 0 && (c = getchar() != EOF) && c != '\n')
		s[i++] = c;
	if (c == '\n')
		s[i++] = c;
	s[i] = '\0';
	return i;
}

//strindex: retunr index of last character of t in s, -1 if none
int stridex(char s[], char t[])
{
	int i, j, k;

	for (i = 0; s[i] != '\0'; i++) {
		for (j = i, k = 0; t[k] != '\0' && s[j] == t[k]; j++, k++)
			;
		if (k > 0 && t[k] == '\0')
			return j;
	}
	return -1;
}

