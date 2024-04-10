/*
        Name : Jordan Millett
        Class : Adv. Lang.
        Date :  9/12/2017
        Purpose :
            To Output a Menu
            5 sensible choices
            Have user enter a character to choose an option
            One choice can be quit or exit
            Unique action for each choice
            Should be able to repeat

*/
#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

int main()
{

    char input;

    do
    {
        cout << "(C)ats" << endl;
        cout << "(D)ogs" << endl;
        cout << "(B)irds" << endl;
        cout << "(F)ish" << endl;
        cout << "(E)xit" << endl;

        cin >> input;
        input = toupper(input);

        system("CLS");

        switch(input)
        {
            case 'C':
                cout << "The domestic cat is a small, typically furry, carnivorous mammal." << endl;
            break;
            case 'D':
                cout << "The domestic dog is a member of genus Canis that forms part of the " << endl;
                cout << "wolf-like canids, and is the most widely abundant carnivore." << endl;
                break;
            case 'B':
                cout << "Birds (Aves) are a group of endothermic vertebrates, characterised by " << endl;
                cout << "feathers, toothless beaked jaws, the laying of hard-shelled eggs, a high metabolic rate," << endl;
                cout << "a four-chambered heart, and a strong yet lightweight skeleton." << endl;
                break;
            case 'F':
                cout << "Birds (Aves) are a group of endothermic vertebrates, characterised by " << endl;
                cout << "feathers, toothless beaked jaws, the laying of hard-shelled eggs, a high metabolic rate," << endl;
                cout << "a four-chambered heart, and a strong yet lightweight skeleton." << endl;
                break;
            case 'E':
                //system("QUIT");
                break;
            default:
                cout << input << " Is not an option" << endl;
        }
        //system("PAUSE");
        system("CLS");


        for(int i = 0;i < 25;i++) //this will generate 25 random numbers from 0 - 99
        {

            int num = (rand() + time(0)) % 100 + 1;
            cout << "A random number : " << num << endl;

        }

    }
    while(input != 'E');

}
