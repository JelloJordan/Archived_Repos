using System;
using OpenTK;
using OpenTK.Graphics.OpenGL;
using System.Drawing;

namespace InvarEngine
{

    struct Vertex
    {
        public Vector3 position;
        public Vector2 texCoord;
        public Vector4 color;
        public Vector3 normals;

        public Color Color
        {
            get
            {
                return Color.FromArgb((int)(255 * color.W), (int)(255 * color.X), (int)(255 * color.Y), (int)(255 * color.Z));
            }
            set
            {
                this.color = new Vector4(value.R/255f, value.G/255f, value.B/255f, value.A/255f);
            }
        }

        public static int SizeInBytes
        {

            get { return Vector2.SizeInBytes + Vector3.SizeInBytes + Vector4.SizeInBytes + Vector3.SizeInBytes; } //update when values get added to vertex struct

        }

        public Vertex(Vector3 position, Vector2 texCoord, Vector3 normals)
        {

            this.position = position;
            this.texCoord = texCoord;
            this.color = new Vector4(1, 1, 1, 1);
            this.normals = normals;

        }

    }
}