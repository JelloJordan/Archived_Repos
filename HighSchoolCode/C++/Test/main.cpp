#include <iostream>
#include <stdlib.h>
#include <fstream>

using namespace std;

int main()
{
    fstream file;

    string money = "0";

    file.open("money.txt");
    getline(file,money);
    file.close();
    cout << "Money : " << money;

    cin >> money;

    file.open("money.txt");
    file << money;
    file.close();

    file.open("money.txt");
    getline(file,money);
    file.close();
    cout << "Money : " << money;



    /*
    string txt1,txt2;

    fstream myfile;
    myfile.open ("example.txt");
    myfile << "Writing this to a file.\n";
    myfile << "TEXT\n";
    myfile.close();


    myfile.open ("example.txt");
    getline(myfile,txt1);
    getline(myfile,txt2);
    myfile.close();

    cout << txt1 << endl;
    cout << txt2 << endl;
    */
    /*
    system("color a");
    while(true)
    system("tree");
    */

}
