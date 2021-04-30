using System;
using System.IO;
using OpenTK;
using OpenTK.Graphics;
using OpenTK.Graphics.OpenGL;
using OpenTK.Input;
using System.Timers;

namespace Game
{
    public class DevTools
    {
        private static System.Timers.Timer timer;
        int Frames = 0;

        public void Start()
        {

            timer = new System.Timers.Timer(1000);
			timer.AutoReset = true;
			timer.Elapsed += OnTimedEvent;
			timer.Enabled = true;

        }

        public void DrawFPS()
        {
            Frames++;
        }
        
        void OnTimedEvent(Object source, ElapsedEventArgs e)
        {
            //Console.Clear();
            //Console.Write(Frames);
            Frames = 0;
        }

    }
}

