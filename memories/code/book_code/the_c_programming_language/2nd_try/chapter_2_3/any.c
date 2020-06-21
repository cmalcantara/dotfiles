#include <stdio.h>
#include <string.h>
#define FOUND 1
#define NOT 0

void squeeze_string(char s1[], char s2[]);
int any(char s1[], char s2[]);

int main()
{
	char a[] = "motherfucker";
	char b[] = "ht";
	int c = 'h';
	int g = any(a, b);
	printf("%d\n", g);
	return 0;
}

void squeeze_string(char s1[], char s2[])
{
	int i, j, k;
	for (k = 0; s2[k] != '\0'; k++)
		for (i = j = 0; s1[i] != '\0'; i++) 
			if (s1[i] != s2[k])
				s1[j++] = s1[i];
	s1[j] = '\0';
}

int any(char s1[], char s2[])
{
	int i, j, state = NOT;
	
	for (i = 0; s1[i] != '\0'; i++) {
		for (j = 0; s2[j] != '\0'; j++) {
			if (s1[i] == s2[j]) {
				state = FOUND;
				break;
			}
		}
		if (state == FOUND)
			break;
	}
					
	if (state == NOT)
		return -1;
	else 
		return i;
}
