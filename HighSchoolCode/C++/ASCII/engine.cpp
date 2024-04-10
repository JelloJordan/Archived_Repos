#include <iostream>
#include <string>

using namespace std;

char pixel[1800];

void init()
{

    for(int i = 1; i < 1801; i++)
    {
        pixel[i] = ' ';
        if(i%75 == 0.0)
            cout << pixel[i] <<endl;
        else
            cout << pixel[i];
    }
}

void draw(int x, char y)
{
    pixel[x] = y;
}

void draw(int z, string x)
{
    int a = 1;
    for(int i = z;i - 1 < (z + x.size()); i++)
    {
        cout << pixel[i];
        pixel[i] = x[a-1];
        a++;
    }
}

void clr(int x)
{
    pixel[x] = ' ';
}

void refresh()
{
    system("CLS");
    for(int i = 1; i < 1801; i++)
    {
        if(i%75 == 0.0)
            cout << pixel[i] <<endl;
        else
            cout << pixel[i];
    }
}

void altclr(char x)
{
    for(int i = 1; i < 1801; i++)
    {
        if(pixel[i] != x)
            pixel[i] = ' ';
    }
}

