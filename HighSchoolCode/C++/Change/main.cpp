/*
        Name : Jordan Millett
        Class : Adv. Lang.
        Date :  9/12/2017
        Purpose : To write a program to calculate the change given to a customer
        and display the number of each coin given.
        Input : Integer
*/

#include <iostream>

using namespace std;

int main()
{
    int quarter = 0; int dime = 0;
    int nickle = 0; int penny = 0;
    int price = 0; int pay = 0;

    cout << "Enter the price : ";
    cin >> price;
    cout << "Enter the amount payed : ";
    cin >> pay;

    int dif = pay - price;
    cout << "Change Due : " << dif << endl;

    do
    {
        if((dif - 25) >= 0)
        {
            dif = dif - 25;
            quarter++;
        } else
        if((dif - 10) >= 0)
        {
            dif = dif - 10;
            dime++;
        } else
        if((dif - 5) >= 0)
        {
            dif = dif - 5;
            nickle++;
        } else
        if((dif - 1) >= 0)
        {
            dif = dif - 1;
            penny++;
        }
    }
    while(dif != 0);

    cout << "Quarters : " << quarter << endl;
    cout << "Dimes : " << dime << endl;
    cout << "Nickles : " << nickle << endl;
    cout << "Pennies : " << penny << endl;

}
