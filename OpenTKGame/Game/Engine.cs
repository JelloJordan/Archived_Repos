using System;
using System.IO;
using OpenTK;
using OpenTK.Graphics;
using OpenTK.Graphics.OpenGL;
using OpenTK.Input;


namespace Game
{
    public class Engine : GameWindow
    {
        
        DevTools DT = new DevTools();   //FPS Counter
        Game G;
        DebugWindow DW;

        public Engine(int width, int height, string title) : base(width, height, GraphicsMode.Default, title){} //Function used to create the window

        protected override void OnLoad(EventArgs e)         //On Create, like the Start(); in unity
        {
            //Matrix4 World = Matrix4.CreateOrthographicOffCenter(0, Width, Height, 0, 0, 1); //doesnt actually work
            //GL.MatrixMode(MatrixMode.Projection);
            //GL.LoadMatrix(ref World);
            //GL.MatrixMode(MatrixMode.Projection);
            //GL.Ortho (-1f, 1f, -1f, 1f, 1000f, -1000f);
            SetMatrices();

            G = new Game(this); //Creates Game
            //DW = new DebugWindow(400, 700, "Debug Window", G);
            DT.Start();                 //Begins Dev tools 
            GL.ClearColor(0f, 0f, 0f, 1f);          //Background Color

            base.OnLoad(e);
        }

        protected override void OnUpdateFrame(FrameEventArgs e)             //updated every frame
        {
            DT.DrawFPS();   //FPS Counter
            G.Update();     //updates all game logic

            base.OnUpdateFrame(e);
        }

        protected override void OnRenderFrame(FrameEventArgs e)             //draws every frame
        {
            GL.Clear(ClearBufferMask.ColorBufferBit); //wipes the screen for the new frame

            G.Draw();    //update objects, draws in renderer
            
            Context.SwapBuffers(); //Buffer swapping thing that reduces screen tearing
            base.OnRenderFrame(e);
        }

        protected override void OnResize(EventArgs e) //called everytime the window is resized, Stays in a 1:1 ratio
        {
            int NewSize = 0;
            if(Width > Height)
                NewSize = Height;
            else
                NewSize = Width;

            GL.Viewport((Width - NewSize)/2, (Height - NewSize)/2, NewSize, NewSize);       //maps the rendered output to the dimensions of the window, might change to lock 1280x720

            SetMatrices();

            base.OnResize(e);
        }

        protected override void OnUnload(EventArgs e)
        {
            G.Destroy();   //Destroy objects

            Console.Clear();
            
            base.OnUnload(e);
        }

        void SetMatrices()
        {
            GL.MatrixMode(MatrixMode.Projection);
            GL.LoadIdentity();
            GL.Ortho(-1, 1, -1, 1, 1, -1);
            GL.MatrixMode(MatrixMode.Modelview);
        }
    }
}
