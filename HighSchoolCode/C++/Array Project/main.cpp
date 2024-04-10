#include <iostream>
#include <cstdlib>

using namespace std;

const int starting_students = 5;
const int starting_assignments = 5;

void initArray(int **,string *,char *);
void outArray(int **,string *,int,int,char*);
void inArray(int **,int,int);
void menu(int **,string *,int,int,int **,char *);
void addStudent(int **,int&,int,int **);
void update(char*,int**,int,int);
void addAsign(string*,int);

int main()
{


    int students = starting_students;
    int assignments = starting_assignments;
    string* asign = new string[starting_assignments];
    char* grades = new char[starting_students];

    int** dummy = new int*[students];
    for(int i = 0; i < students;i++)
        dummy[i] = new int[starting_assignments];

    int** scores = new int*[starting_students];
    for(int i = 0; i < starting_students;i++)
        scores[i] = new int[starting_assignments];

    initArray(scores,asign,grades);

    menu(scores,asign,students,assignments,dummy,grades);

}

void addStudent(int** scores,int& students,int assignments,int** dummy)
{

    students++;
    scores++;
    dummy++;

    for(int y = 0;y != students;y++)        //dummy ---> scores
    {
        for(int x = 0;x != assignments;x++)
        {
            dummy[x][y] = 0;
            dummy[x][y] = scores[x][y];
            dummy[x][students-1] = 0;
        }
    }

    for(int y = 0;y != students;y++)        //scores ---> dummy
    {
        for(int x = 0;x != assignments;x++)
        {
            scores[x][y] = 0;
            scores[x][y] = dummy[x][y];
        }
    }
}

void initArray(int** scores,string* asign,char* grades)
{
        for(int y = 0;y != starting_students;y++)
            for(int x = 0;x != starting_assignments;x++)
            {
                scores[x][y] = 0;
                asign[x] = "Ex";
                grades[x] = 'F';
            }
}

void outArray(int** scores,string* asign,int students,int assignments,char* grades)
{

        cout << endl;
        cout << endl;
        cout << "\t\t";
        for(int b = 0;b != assignments;b++)
            cout << "\t" << asign[b];
        cout << "\tGrades";
        cout << endl;
        for(int y = 0;y != students;y++)
        {
        cout << "\n\tStudent : " << y + 1;
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

void inArray(int** scores,int students,int assignments)
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

void menu(int** scores,string* asign,int students,int assignments,int** dummy,char* grades)
{
    char exit = 'E';
    do
    {
        system("CLS");
        update(grades,scores,students,assignments);
        outArray(scores,asign,students,assignments,grades);

        cout << endl;
        cout << endl;
        cout << "\t(I)nput";
        cout << "\n\t(S)tudent";
        cout << "\n\t(A)ssignment";
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
            case 'S' : addStudent(scores,students,assignments,dummy); break;
            case 'A' : addAsign(asign,assignments); break;
            default : cout << "Incorrect Input" << endl;
        }
    }
    while(exit != 'E');
}

void update(char* grades,int** scores,int students,int assignments)
{
    int total;
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

void addAsign(string* asign,int assignments)
{


}
