//CS2 Source Code Template for ay 2015-2016 rev. 0

/*
Program: Converts Arabic Aumberals between 1 and 3000 to Roman Numerals
Programmer: Alcantara, Carlos Miguel R.
Section: 8 - Sampaguita
Date: 25 January 2016
*/

#include <iostream>
#include <cstdlib>
using namespace std;

void roman(int input){
// Sorry for making an mess and not finding a more elegant solution.
// I had to do somehting and didn't have enough time.
    int rom_onek  = input / 1000; 
    int rom_fiveh = (input % 1000) / 500;
    int rom_oneh  = ((input % 1000) % 500) / 100; 
    int rom_fifty = (((input % 1000) % 500) % 100) / 50;
    int rom_ten   = ((((input % 1000) % 500) % 100) % 50) / 10;
    int rom_five  = (((((input % 1000) % 500) % 100) % 50) % 10) / 5; 
    int rom_one   = (((((input % 1000) % 500) % 100) % 50) % 10) % 5;

    if (rom_onek > 0)
        for (int i = 0; i < rom_onek; i++)
            cout << "M";

    if (rom_fiveh ==  1 && rom_oneh == 4) 
        cout << "CM";
    else if (rom_fiveh == 1){
        cout << "D";
        for (int i = 0; i < rom_oneh; i++)
            cout << "C";
    }
    else if (rom_oneh == 4)
        cout << "CD";
    else if (rom_oneh > 0)
        for (int i = 0; i < rom_oneh; i++)
            cout << "C";
 
    if (rom_fifty ==  1 && rom_ten == 4) 
        cout << "XC";
    else if (rom_fifty == 1){
        cout << "L";
        for (int i = 0; i < rom_ten; i++)
            cout << "X";
    }
    else if (rom_ten == 4)
        cout << "XL";
    else if (rom_ten > 0)
        for (int i = 0; i < rom_ten; i++)
            cout << "X";

    if (rom_five == 1 && rom_one == 4)
        cout << "IX";
    else if (rom_five == 1){
        cout << "V";
        for(int i = 0; i < rom_one; i++)
            cout << "I";
    }
    else if (rom_one == 4)
        cout << "IV";
    else if (rom_one > 0){
        for(int i = 0; i < rom_one; i++)
            cout << "I";
    }
}

int main()
{
    int input; 

    system("cls");
    cout << "Enter Arabic Number between 1 and 3000: ";
    cin >> input;

    roman(input);
    
    cout << endl << endl;

    return 0;
}
