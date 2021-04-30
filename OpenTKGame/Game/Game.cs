using System;
using System.Collections.Generic;
using OpenTK;
using OpenTK.Input;

namespace Game
{
    public class Game
    { 

        /*  TODO :
            Make GameObjects exist in the game script but get controlled and updated in the engine script
        */

        public Engine GameEngine;
        public List<GameObject> GameObjects = new List<GameObject>();


        GameObject Player;

        bool LastTabUp = true;

        public Game(Engine E)
        {
            GameEngine = E;





            Player = new GameObject(new Vector3(0f,0f,0f),this, 3);
            Player.GetRenderer().SetColor(new Vector4(0f,1f,0f,0f));


            GameObject Other = new GameObject(new Vector3(0f,.5f,0f),this, 0);
            GameObject Other2 = new GameObject(new Vector3(0f,-.5f,0f),this, 0);
            GameObject Other3 = new GameObject(new Vector3(-.5f,0f,0f),this, 0);
            GameObject Other4 = new GameObject(new Vector3(.5f,0f,0f),this, 0);

            Other.GetRenderer().SetColor(new Vector4(1f,0f,0f,0f));
            Other2.GetRenderer().SetColor(new Vector4(1f,0f,0f,0f));
            Other3.GetRenderer().SetColor(new Vector4(1f,0f,0f,0f));
            Other4.GetRenderer().SetColor(new Vector4(1f,0f,0f,0f));
            
        }

        public void Update()
        {

            PlayerInput();
            
        }

        public void Draw()
        {
            foreach(GameObject G in GameObjects)
                G.Update();
        }

        void ToggleWireframe()
        {

            foreach(GameObject G in GameObjects)
                G.GetRenderer().WireFrameModeToggle();

        }

        public void Destroy()
        {
            foreach(GameObject G in GameObjects)
                G.Destroy();
        }

        void PlayerInput()
        {

            KeyboardState input = Keyboard.GetState();  //gets current keyboard input

            float Speed = 0.005f;

            if(input.IsKeyDown(Key.W))
            {
                
                Player.Transform.MovePosition(new Vector3(0f, Speed, 0f));
            
            }

            if(input.IsKeyDown(Key.A))
            {
                Player.Transform.MovePosition(new Vector3(-Speed, 0f, 0f));
            
            }

            if(input.IsKeyDown(Key.S))
            {
                Player.Transform.MovePosition(new Vector3(0f, -Speed, 0f));
            
            }

            if(input.IsKeyDown(Key.D))
            {
                Player.Transform.MovePosition(new Vector3(Speed, 0f, 0f));
            
            }

            if(input.IsKeyDown(Key.R))
            {
                Player.Transform.Resize(0.5f);
            }

            if(input.IsKeyDown(Key.T))
            {
                Player.Transform.Resize(1f);
            }

            



            if(input.IsKeyDown(Key.E))
            {
                Player.Transform.Rotate(new Vector3(0f,0f,-5f));
            }

            if(input.IsKeyDown(Key.Q))
            {
                Player.Transform.Rotate(new Vector3(0f,0f,5f));
            }

            if(input.IsKeyDown(Key.J))
            {
                Player.Transform.Rotate(new Vector3(0f,-5f,0f));
            }

            if(input.IsKeyDown(Key.L))
            {
                Player.Transform.Rotate(new Vector3(0f,5f,0f));
            }

            if(input.IsKeyDown(Key.I))
            {
                Player.Transform.Rotate(new Vector3(-5f,0,0f));
            }

            if(input.IsKeyDown(Key.K))
            {
                Player.Transform.Rotate(new Vector3(5f,0f,0f));
            }

            

            if(input.IsKeyDown(Key.Tab) && LastTabUp)
            {
                LastTabUp = false;
                ToggleWireframe();
            }

            if(input.IsKeyUp(Key.Tab))
                 LastTabUp = true;

        }

    }
}