using System;
using System.IO;
using OpenTK;
using OpenTK.Graphics;
using OpenTK.Graphics.OpenGL;
using OpenTK.Input;

namespace Game
{
    public class Transform
    {   
        GameObject Parent;

        public Vector3 Position = new Vector3(0f,0f,0f);
        public Vector3 Rotation = new Vector3(0f,0f,0f);
        public float Scale = 1f;

        public Transform(GameObject O)
        {

            Parent = O;

        }

        public void MovePosition(Vector3 Offset)
        {
            Position += Offset;
        }

        public void Resize(float newScale)
        {
            Scale = newScale;
        }

        public void Rotate(Vector3 NewAngles)
        {
            Rotation += NewAngles;
        }

        
    }
}