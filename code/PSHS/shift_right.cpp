//Alcantara, Carlos Miguel R.
//8 - Sampa
#include <iostream>
#include <iomanip>
using namespace std;

int main(void){

    int size, left, right, dis;
    cout << "Enter array size: ";
    cin >> size;

    double a[size];
    cout << "Enter all values for array in order: ";
    for(int i = 0; i < size; i++)
        cin >> a[i];

    while (1){
    cout << "Enter Left, Right, and Distance in order: ";
    cin >> left >> right >> dis;
    if(left < right)
        break;
    cout << "Error: Left is larger than Right; Please input proper data\n";
    }

    cout << "\nBefore: ";
    for(int i = 0; i < size; i++)
        cout << a[i] << "\t";

    for(int prev = right - 1, nu = right + dis - 1; nu >= left ; prev--, nu--)
        a[nu] = a[prev];

    std::fixed;
    std::setprecision(3);
    cout << "\nAfter:\t";
    for(int i = 0; i< size; i++)
        cout << a[i] << "\t";
    cout << "\nNOTE: Alignment may not be perfect because of the garbage value";

    return 0;
 }
        
    
