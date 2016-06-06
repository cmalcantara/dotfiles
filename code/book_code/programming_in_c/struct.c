#include <stdio.h>

int main(void)
{
	struct date {
		int day;
		int month;
		int year;
	};

	struct date today;

	today.day = 6;
	today.month = 6;
	today.year = 2016;

	printf("Today's date is %i/%i/%.2i.\n", today.month, today.day, today.year % 100);
	
	return 0;
}
