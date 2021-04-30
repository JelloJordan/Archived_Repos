using System;
using System.IO;
using OpenTK;
using OpenTK.Graphics;
using OpenTK.Graphics.OpenGL;
using OpenTK.Input;

namespace Game
{
    public class Light
    {

        public Vector3 Color;

        public Light(Vector3 C) //Init
        {
            Color = C;
        }
    }
}