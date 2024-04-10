/*
        Name : Jordan Millett
        Class : Adv. Lang.
        Date :  9/14/2017
        Purpose : To explore options for future programs
        System
        CLS
        Pause
        title window
*/


#include <iostream>
#include <windows.h>
#include <cstdlib>
#include <iomanip>

using namespace std;

int main()
{


    double x,y,z;
    x = 15.674;
    y = 235.73;
    z = 9525.9867;
    cout << fixed << showpoint;

    cout << setprecision(3);
    cout << "x = " << x << endl;
    cout << "y = " << y << endl;
    cout << "z = " << z << endl;

    cout << setw(8) << x << endl;
    cout << setw(8) << y << endl;
    cout << setw(7) << z << endl;

    cout << setw(9) << x << setw(10) << y << setw(7) << z << "warn\n" << endl;
    cout << setfill('-');
    cout << setw(9) << x << setw(10) << y << setw(7) << z << "warn\n" << endl;

    cout << "HELLO WORLD" << endl;
    //system("CLS");
    //system("PAUSE");
    //system("title WINDOW");
    //system("echo hello");
    //system("color a");
    cout << "My name is Jordan" << endl;
    cout << "This was made in c++" << endl;
    cout << "HELP THERE IS A LOCK DOWN" << endl;


/*
    for(int a = 300; a = 5000; a++)
    {
      Beep(a,1);
    }
*/


}
