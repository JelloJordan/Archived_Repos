using System;
using OpenTK;

namespace Game
{
    class Program
    { 

        static void Main(string[] args)
        {

            Console.Clear();

            Engine GameEngine = new Engine(700, 700, "OpenGL Game");

            GameEngine.Run(60.0);
            
        }

    }
}

//cls
//dotnet run

/*

What is : 

VBO
VAO
EBO



*/