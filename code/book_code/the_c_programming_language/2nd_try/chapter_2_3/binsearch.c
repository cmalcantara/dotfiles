#include <stdio.h>
#include <time.h>

int binsearch(int x, int v[], int n);
int rev_binsearch(int x, int v[], int n);
void shellsort(int v[], int n);

int main()
{
	int tmp = 0;
	int n = 25;
	int k[] = {11, 44 ,6, 13, 25, 78, 28, 3, 34, 37, 39, 4, 49, 57};
	for (int i = 1; k[i - 1] != '\0'; i++)
		tmp++;

	shellsort(k, tmp);
	for (int i = 0; i < tmp; i++)
		printf("%d ", k[i]);
	printf("\n");
	printf("%d\n", binsearch(n, k, tmp));
	printf("%d\n", rev_binsearch(n, k, tmp));

	return 0;
}

// binsearch: find x in v[0] <=  v[1] <= ... <= v[n-1]
int binsearch(int x, int v[], int n)
{
	int low, high, mid;

	low = 0;
	high = n - 1;
	while (low <= high) {
		mid = (low+high) / 2;
		if (x < v[mid])
			high = mid - 1;
		else if (x > v[mid])
			low = mid + 1;
		else	//found match 
			return mid;
	}
	return -1; //no match
}

int rev_binsearch(int x, int v[], int n)
{
	int low, high, mid;

	low = 0;
	high = n - 1;
	while (low <= high || v[mid] != x) {
		mid = (low+high) / 2;
		if (x < v[mid])
			high = mid - 1;
		else 
			low = mid + 1;
	}
	if (v[mid] == x)
		return mid;
	else
		return -1; //no match
}

//shellsort: sortv[0] .. v[n-1] into increasing order
void shellsort(int v[], int n)
{
	int gap, i , j, temp;

	for(gap = n/2; gap > 0; gap /=2)
		for(i = gap; i < n; i++)
			for (j = i - gap; j >= 0 && v[j] > v[j+gap]; j -= gap) {
				temp = v[j];
				v[j] = v[j+gap];
				v[j+gap] = temp;
			}
	
}
