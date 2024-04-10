/*

Name : Jordan Millett
Date : 1/25/18
Class : Comp Sci 3

    The concept I chose and worked on for this final began with pointer to make dynamic arrays but
I ended up using vectors to make dynamic arrays work. A dynamic array is an array that will allocate
storage as its needed throughout the program , this means dynamic arrays save of memory and are more
efficient.

    The example I decided to use is a grading program that can be expanded to accommodate more students
or assignments. Dynamic arrays can be used in most programs that require user input to store large amounts
of the same type of data.

    If there is any kind of roster or database that needs to expand to hold more users then a dynamic array
would be the best thing to use. This could be applied to scheduling programs for a company that can handle
large amounts of employees or this could work for taxis and buses to keep track of payments from customers.

    The benefit of using this over just allocating a large block of memory is if a device can't handle having
too much space used at one time or if the developer does not know how large a database has to be in their program.

*/
#include <iostream>
#include <cstdlib>
#include <vector>

using namespace std;

const int starting_assignments = 5;
const int starting_students = 5;

void outArray(vector< vector<int> >,string *,int,int,char*);    //this outputs the array and formats it
void inArray(vector< vector<int> >&,int,int);                   //this takes input from the user to put in the array
void menu(vector< vector<int> >&,string *,int,int,char *);      //this is the menu the user can pick options from
void addSize(vector< vector<int> >&,int&,int&,int);             //this is used to increase the size of the array
void update(char*,vector< vector<int> >,int,int);               //this adds up the scores to make grades

int main()
{
    int assignments = starting_assignments;
    int students = starting_students;
    vector< vector<int> > scores;
    string* asign = new string[starting_assignments];
    char* grades = new char[starting_students];

    for(int y = 0;y != students;y++)
            for(int x = 0;x != assignments;x++)
            {
                asign[x] = "Ex";
                grades[x] = 'F';
            }

    do
    {
        cout << "How many students do you have? : ";                //introduction and setup
        cin >> students;
        cin.clear();
        cin.ignore(100, '\n');
    }while((students > 5) || (students <= 0));
    do
    {
        cout << "How many assignments do you have? : ";
        cin >> assignments;
        cin.clear();
        cin.ignore(100, '\n');
    }while((assignments > 5) || (assignments <= 0));

    scores.resize( students , vector<int>( assignments , 0 ) ); //initializing the vector

    menu(scores,asign,students,assignments,grades);
}

void addSize(vector< vector<int> >& scores,int& students,int& assignments,int x)
{
    if(x == 1)      //extends the amount of students in the array
    {
        students++;
        for(int i=0;i<students-1;i++)
        {
            scores.push_back(vector<int>());
                scores[i].push_back(0);
        }
    }
    if(x == 2)      //extends the amount of assignments in the array , sorta
    {
        assignments++;
        for(int i=0;i<students;i++)
        {
            scores.push_back(vector<int>(i));
                scores[students].push_back(0);
        }
    }
}

void outArray(vector< vector<int> > scores,string* asign,int students,int assignments,char* grades)
{
        cout << endl;                   //this block of code makes the table and displays the array
        cout << endl;
        cout << "\t\t";
        for(int b = 0;b != assignments;b++)
            cout << "\t" << asign[b];
        cout << "\tGrades";
        cout << endl;
        for(int y = 0;y != students;y++)
        {
        cout << "\tStudent : " << y + 1;
            for(int x = 0;x != assignments;x++)
            {
                if(x < assignments - 1)
                    cout << "\t" << scores[x][y];
                else
                {
                    cout << "\t" << scores[x][y] << "\t" << grades[y] << endl;
                }
            }
        }
}

void inArray(vector< vector<int> >& scores,int students,int assignments)
{
    int y = 0;
    int x = 0;
    int input = 0;

    do
    {
        cout << "\tStudent # ";
        cin >> y;
        cin.clear();
        cin.ignore(100, '\n');
    }while((y > students) || (y <= 0));
    do
    {
        cout << "\tAssignment # ";
        cin >> x;
        cin.clear();
        cin.ignore(100, '\n');
    }while((x > assignments) || (x <= 0));
    cout << "\tNew Score : ";
    cin >> input;
    cin.clear();
    cin.ignore(100, '\n');
    scores[x-1][y-1] = input;
}

void menu(vector< vector<int> >& scores,string* asign,int students,int assignments,char* grades)
{
    char exit = 'E';
    do                                      //main program loop
    {
        system("CLS");
        update(grades,scores,students,assignments);
        outArray(scores,asign,students,assignments,grades);

        cout << endl;
        cout << endl;
        cout << "\t(I)nput";
        cout << "\n\tAdd (S)tudent";
        cout << "\n\tAdd (A)ssignment";
        cout << "\n\t(E)xit";
        cout << endl;
        cout << endl;
        cout << "\t";
        cin >> exit;

        exit = toupper(exit);

        system("CLS");

        outArray(scores,asign,students,assignments,grades);

        cout << endl;

        switch (exit)
        {
            case 'I' : inArray(scores,students,assignments); break;
            case 'S' : addSize(scores,students,assignments,1); break;
            case 'A' : addSize(scores,students,assignments,2); break;
            case 'E' : break;
            default : cout << "Incorrect Input" << endl; system("PAUSE"); break;
        }
    }
    while(exit != 'E');
}

void update(char* grades,vector< vector<int> > scores,int students,int assignments)
{
    int total;                          //this calculates the letter grade of each student
        for(int y = 0;y != students;y++)
        {
            total = 0;
            for(int x = 0;x != assignments;x++)
            {
                total += scores[x][y];
            }
            total = total / assignments;
            if(total >= 90)
                grades[y] = 'A';
            else if(total >= 80)
                grades[y] = 'B';
            else if(total >= 70)
                grades[y] = 'C';
            else if(total >= 60)
                grades[y] = 'D';
            else if(total <= 59)
                grades[y] = 'F';
        }
}
