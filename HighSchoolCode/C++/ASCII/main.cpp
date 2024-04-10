#include <iostream>
#include <engine.h>
#include <cstdlib>
#include <windows.h>

using namespace std;

int main()
{
    init();
    refresh();
    draw(150,'J');
    refresh();
    while(true);
}































/*

if( GetAsyncKeyState( VK_RIGHT ) & 0x8000 )
        {
            x++;
            altclr(x-1);
            draw(x,'@');
            refresh();
        }
        if( GetAsyncKeyState( VK_LEFT ) & 0x8000 )
        {
            x--;
            altclr(x+1);
            draw(x,'@');
            refresh();
        }
        if( GetAsyncKeyState( VK_DOWN) & 0x8000 )
        {
            x = x + 75;
            altclr(x-75);
            draw(x,'@');
            refresh();
        }
        if( GetAsyncKeyState( VK_UP) & 0x8000 )
        {
            x = x - 75;
            altclr(x);
            draw(x,'@');
            refresh();
        }
    */

