#include <stdio.h>
#include <stdlib.h>


int atois(char s[]);
void squeeze(char s[], int c);

int main()
{
//	char g[10]= "heello";
//	int h = 'l';
//	squeeze(g, h);
	char num[10];
	scanf("%s", &num);
	int g = atois(num);
	printf("% d\n", g);
	return 0;
}

int atois(char s[])
{
	int i, n;

	n = 0;
	for (i = 0; s[i] >= '0' && s[i] <= '9'; ++i)
		n = 10 * n + (s[i] - '0');
	return n;
}

void squeeze(char s[], int c)
{
	int i, j;

	for (i = j = 0; s[i] != '\0'; i++)
		if (s[i] != c)
			s[j++] = s[i];
	s[j] = '\0';
}
