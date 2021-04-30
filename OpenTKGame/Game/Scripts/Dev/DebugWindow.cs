using System;
using System.IO;
using OpenTK;
using OpenTK.Graphics;
using OpenTK.Graphics.OpenGL;
using OpenTK.Input;


namespace Game
{
    public class DebugWindow : GameWindow
    {

        Game GameInfo;

        public DebugWindow(int width, int height, string title, Game G) : base(width, height, GraphicsMode.Default, title){GameInfo = G;} //Function used to create the window

        protected override void OnLoad(EventArgs e)         //On Create, like the Start(); in unity
        {
            //Matrix4 World = Matrix4.CreateOrthographicOffCenter(0, Width, Height, 0, 0, 1); //doesnt actually work
            //GL.MatrixMode(MatrixMode.Projection);
            //GL.LoadMatrix(ref World);
            //GL.MatrixMode(MatrixMode.Projection);
            //GL.Ortho (-1f, 1f, -1f, 1f, 1000f, -1000f);
            //SetMatrices();

            GL.ClearColor(0f, 0f, 0f, 1f);          //Background Color

            base.OnLoad(e);
        }

        protected override void OnUpdateFrame(FrameEventArgs e)             //updated every frame
        {
        

            base.OnUpdateFrame(e);
        }

        protected override void OnRenderFrame(FrameEventArgs e)             //draws every frame
        {
            GL.Clear(ClearBufferMask.ColorBufferBit); //wipes the screen for the new frame

            
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

            //GL.Viewport((Width - NewSize)/2, (Height - NewSize)/2, NewSize, NewSize);       //maps the rendered output to the dimensions of the window, might change to lock 1280x720

            //SetMatrices();

            base.OnResize(e);
        }

        protected override void OnUnload(EventArgs e)
        {


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
