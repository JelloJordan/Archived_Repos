/*
        Name : Jordan Millett
        Class : Adv. Lang.
        Date :  10/19/2017
        Purpose : To create a game with a random number
*/
#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

int main()
{
    int num = (rand() + time(0)) % 100 + 1;
    int input,guess;
    guess = 0;

    do
    {
        guess++;
        system("CLS");
        cout << "Guess a number from 1 to 100 : ";
        cin >> input;

        if(input > num)
            cout << "Too High" << endl;
        else if(input < num)
            cout << "Too Low" << endl;
        else if(input == num)
            cout << "You Win!" << endl;
        else
            cout << "Incorrect Input" << endl;
    }
    while(input != num);
    cout << "You Win!" << endl;
    cout << "It took you " << guess << " guesses!" << endl;





}

