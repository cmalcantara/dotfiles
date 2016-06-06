#include <stdio.h>

int main(void)
{
	struct date {
		int day;
		int month;
		int year;
	};

	struct date  today, tomorrow;
	
	struct date  lol = {12, 21, 12};
	struct date  ginger = { .year = 1, .day = 5};
	const int days_in_months[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

	printf("Enter today's date (mm/dd/yyyy): ");
	scanf("%d/%d/%d", &today.month, &today.day, &today.year);

	if (today.day != days_in_months[today.month - 1]) {	
		tomorrow.day = today.day + 1;
		tomorrow.month = today.month;
		tomorrow.year = today.year;
	} else if (today.month == 12) {				//End of Year
		tomorrow.day = 1;
		tomorrow.month = 1;
		tomorrow.year = today.year + 1;
	} else {						//End of Month
		tomorrow.day = 1;
		tomorrow.month = today.month + 1;
		tomorrow.year = today.year;
	}

	printf("Tomorrow's date is %d/%d/%.2d.\n", tomorrow.month, tomorrow.day, tomorrow.year % 100);

	return 0;
}
