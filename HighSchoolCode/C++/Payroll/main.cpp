/*
        Name : Jordan Millett
        Class : Adv. Lang.
        Date :  9/28/2017

        reviewer: jowsef

        review: good program but it has no error trapping.

        Purpose :
          Error Trapping
          Input when Input is not needed
          no global variables
        Overtime ://calculate the hours worked overtime //calculating the gross //getting the pay per hour from the job number
          40hr normal pay
          40 to 60 time and a half
          60+ double over 60 time and a half
        Input :
          Employee Name (first and last)
          Job Number
          Hours worked (this week)

        Job #
        10 -- 8.75
        20 -- 12.25
        30 -- 13.75

        Functions
          2+ functions
          Function serves a purpose
          Prototypes
          Documentation

        General
          Multiple employees
          output pay (broken down by general , OT , and total)
          formatting and organizing output

        Above / Beyond
          Keep track of employees on text file
          Table of output
          For each employee output as a check
          Error Trapping

*/
#include <iostream>
#include <iomanip>
#include <stdlib.h>

using namespace std;

#define TEN 8.75        //defining the different job numbers you can have
#define TWENTY 12.25
#define THIRTY 13.75

//prototypes
double jobNum(int);     //getting the pay per hour from the job number
double jobMath(double,int); //calculating the gross
void timeMath(int&,int&,int&,int); //calculate the hours worked overtime

int main()
{
    string first,last; //initialize all variables
    int hours,job;
    double pay,gross;
    char exit = 'N';
    int time,timehalf,timedouble;

    cout << fixed << setprecision(2);   //Make double variables formatted like money

    do          //The quit loop
    {
    cout << "First and Last Name : ";   //getting all information from the user
    cin >> first >> last;
    cout << "Job # : ";
    cin >> job;
    cout << "Hours Worked : ";
    cin >> hours;

    system("CLS");
    pay = jobNum(job);              //getting the pay per hour from the job number
    gross = jobMath(pay,hours);    //calculating the gross

    cout << first << " " << last << "\'s gross pay is $" << gross << endl;  //outputting the gross and finding if the user wants to continue
    cout << endl;
    cout << "Would you like to exit? (Y/N)? : ";//calculate the hours worked overtime //calculating the gross //getting the pay per hour from the job number
    cin >> exit;
    exit = toupper(exit);
    system("CLS");
    }
    while(exit == 'N');                     //testing the users response
    cout << "Thanks for using my program!";
    cout << endl;


}

double jobNum(int x)    //getting the pay per hour from the job number
{
    if(x == 10)
    {
        return TEN;
    } else
    if(x == 20)
    {
        return TWENTY;
    } else
    if(x == 30)
    {
        return THIRTY;
    }
}

double jobMath(double pay,int hours)    //calculating the gross
{
    double gross = 0;
    int time , timehalf , timedouble;

    timeMath(time,timehalf,timedouble,hours); //calculate the hours worked overtime

    if(hours <= 40)         //standard pay
    {
        gross = (time * pay);
    }
    if((hours > 40) && (hours < 60)) //half time pay
    {
        gross = (time * pay) + (timehalf * pay * 1.5);
    }
    if(hours >= 60)     //overtime pay
    {
        gross = (time * pay) + (timehalf * pay * 1.5) + (timedouble * pay * 2);
    }

    return gross;
}

void timeMath(int& time, int& timehalf , int& timedouble,int hours) //calculate the hours worked overtime
{

    if(hours <= 40)         //limiting the normal hours to 40
        time = hours;
    else
        time = 40;

    if(hours - 40 <= 20 && hours - 40 > 0) //limiting the half time hours to 20 and making sure it does not go negative
        timehalf = hours - 40;
    else
    if(hours - 40 > 20)
        timehalf = 20;
    else
        timehalf = 0;

    if(hours - 60 > 0)              //making sure the overtime does not negative
        timedouble = hours - 60;
    else
        timedouble = 0;

    cout << "Time : " <<  time << " hrs" << endl;             //outputting the hours that were worked
    cout << "Time and a Half : "<< timehalf << " hrs" <<  endl;
    cout << "Time Double : " << timedouble << " hrs" <<  endl;
}












