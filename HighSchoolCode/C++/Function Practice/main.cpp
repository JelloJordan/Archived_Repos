/*
        Name : Jordan Millett
        Class : Adv. Lang.
        Date :  9/12/2017
        Purpose :
        To practice using functions
        To learn about prototypes
        To understand return values

*/

#include <iostream>
#include <fstream>

using namespace std;

//prototypes

double firstFunction(int , int);
char secondFunction(char , char);
void thirdFunction();
int add(int , int);


int main() //like a method in Java , the main function
{

    int n1,n2;
    cout << "Enter two numbers with a space between : ";
    cin >> n1 >> n2;

    cout << "\nThe sum is " << add(n1 , n2 );
    cout << "\nThe average is " << firstFunction(n1 , n2);

    char l1,l2;
    cout << "\nEnter two letters with a space between : ";
    cin >> l1 >> l2;

    cout << "\nThis letter was not selected : " << secondFunction(l1 , l2);

    thirdFunction();


    ofstream myfile;
    myfile.open ("example.txt");
    for(int i = 0; i < 20000; i++);
    {
        myfile << "rip" << endl;
    }
    myfile.close();




    return 0;

}

//function definition

double firstFunction(int x , int y)
{
    return (x + y) / 2.0;
}

char secondFunction(char x , char y)
{
    if((x != 'R') && (y != 'R'))
    {
        return 'R';
    }else
    {
        return '%';
    }
}

void thirdFunction()
{
    cout << "\n\n\nThanks for using my program!";
    cout << "\nHAVE A GREAT DAY";
    cout << "\n\n\t~~~~Jordan";

}

int add(int x , int y)
{
    return x + y;
}









