using System;
using System.IO;
using OpenTK;
using OpenTK.Graphics;
using OpenTK.Graphics.OpenGL;
using OpenTK.Input;

namespace Game
{
    public class Shapes
    {   

        Vector3[] DefaultTri =
        {
            new Vector3(-0.05f, -0.1f,  0f),
            new Vector3(0.05f,  -0.1f,  0f),
            new Vector3(0f,      0.01f,  0f)  
        };

        uint[] DefaultTri_Ind = 
        {
            0, 1, 2
        };

        Vector3[] DefaultTri_Normals =
        {
            new Vector3(0, 1f,  0f)
        };

        Vector3[] DefaultSquare =
        {
            new Vector3(-0.05f, -0.05f,  0f),
            new Vector3(-0.05f,  0.05f,  0f),
            new Vector3(0.05f,   0.05f,  0f),
            new Vector3(0.05f,  -0.05f,  0f),
        };

        uint[] DefaultSquare_Ind = 
        {
            0, 1, 2,
            0, 2, 3
        };

        Vector3[] DefaultSquare_Normals =
        {
            new Vector3(0, 0,  -1f),
            new Vector3(0, 0,  -1f),
            new Vector3(0, 0,  -1f),
            new Vector3(0, 0,  -1f)
        };

        Vector3[] ComplexTestShape =
        {
            new Vector3(-0.05f, -0.05f,  0f),
            new Vector3(-0.05f,  0.05f,  0f),
            new Vector3(0.05f,   0.05f,  0f),
            new Vector3(0.05f,  -0.05f,  0f),
            new Vector3(0f,  0.1f,  0f),
            new Vector3(0f,  -0.1f,  0f),
            
        };

        uint[] ComplexTestShape_Ind = 
        {
            0, 1, 2,
            0, 2, 3,
            1, 2, 4,
            0, 3, 5
        };

        Vector3[] ComplexTestShape_Normals =
        {

        };

        Vector3[] Cube =
        {
            new Vector3(-0.05f, -0.05f,  0.05f),
            new Vector3(-0.05f,  0.05f,  0.05f),
            new Vector3(0.05f,   0.05f,  0.05f),
            new Vector3(0.05f,  -0.05f,  0.05f),

            new Vector3(-0.05f, -0.05f,  -0.05f),
            new Vector3(-0.05f,  0.05f,  -0.05f),
            new Vector3(0.05f,   0.05f,  -0.05f),
            new Vector3(0.05f,  -0.05f,  -0.05f),

            new Vector3(-0.05f,  0.05f,  -0.05f),
            new Vector3(-0.05f,  0.05f,  0.05f),
            new Vector3(0.05f,   0.05f,  0.05f),
            new Vector3(0.05f,   0.05f,  -0.05f),

            new Vector3(-0.05f,  -0.05f,  -0.05f),
            new Vector3(-0.05f,  -0.05f,  0.05f),
            new Vector3(0.05f,   -0.05f,  0.05f),
            new Vector3(0.05f,   -0.05f,  -0.05f),

            new Vector3(-0.05f,  -0.05f,    0.05f),
            new Vector3(-0.05f,   0.05f,    0.05f),
            new Vector3(-0.05f,   0.05f,  -0.05f),
            new Vector3(-0.05f,  -0.05f,  -0.05f),

            new Vector3(0.05f,  -0.05f,    0.05f),
            new Vector3(0.05f,   0.05f,    0.05f),
            new Vector3(0.05f,   0.05f,  -0.05f),
            new Vector3(0.05f,  -0.05f,  -0.05f)
            
        };

        uint[] Cube_Ind = 
        {
            0, 1, 2,
            0, 2, 3,

            4, 5, 6,
            4, 6, 7,

            8, 9, 10,
            8, 10, 11,

            12, 13, 14,
            12, 14, 15,

            16, 17, 18,
            16, 18, 19,

            20, 21, 22,
            20, 22, 23

        };

        Vector3[] Cube_Normals =        //normals for each face
        {

            new Vector3(-1, -1,  1f),
            //new Vector3(-0.05f,  0.05f,  0.05f),
            //new Vector3(0.05f,   0.05f,  0.05f),
            //new Vector3(0.05f,  -0.05f,  0.05f),

            new Vector3(-0.05f, -0.05f,  -0.05f),
            //new Vector3(-0.05f,  0.05f,  -0.05f),
            //new Vector3(0.05f,   0.05f,  -0.05f),
            //new Vector3(0.05f,  -0.05f,  -0.05f),

            new Vector3(-0.05f,  0.05f,  -0.05f),
            //new Vector3(-0.05f,  0.05f,  0.05f),
            //new Vector3(0.05f,   0.05f,  0.05f),
            //new Vector3(0.05f,   0.05f,  -0.05f),

            new Vector3(-0.05f,  -0.05f,  -0.05f),
            //new Vector3(-0.05f,  -0.05f,  0.05f),
            //new Vector3(0.05f,   -0.05f,  0.05f),
            //new Vector3(0.05f,   -0.05f,  -0.05f),

            new Vector3(-0.05f,  -0.05f,    0.05f),
            //new Vector3(-0.05f,   0.05f,    0.05f),
            //new Vector3(-0.05f,   0.05f,  -0.05f),
            //new Vector3(-0.05f,  -0.05f,  -0.05f),

            new Vector3(0.05f,  -0.05f,    0.05f)
            //new Vector3(0.05f,   0.05f,    0.05f),
            //new Vector3(0.05f,   0.05f,  -0.05f),
            //new Vector3(0.05f,  -0.05f,  -0.05f)

        };

        public Vector3[][] Vertices = new Vector3[4][];
        public uint[][] Indices = new uint[4][];
        public Vector3[][] Normals = new Vector3[4][];

        int Index = 0;

        public Shapes()
        {
            Init();
        }

        void Init()
        {

            Vertices[0] = DefaultTri;
            Vertices[1] = DefaultSquare;
            Vertices[2] = ComplexTestShape;
            Vertices[3] = Cube;

            Indices[0] = DefaultTri_Ind;
            Indices[1] = DefaultSquare_Ind;
            Indices[2] = ComplexTestShape_Ind;
            Indices[3] = Cube_Ind;

            Normals[0] = DefaultTri_Normals;
            Normals[1] = DefaultSquare_Normals;
            Normals[2] = ComplexTestShape_Normals;
            Normals[3] = Cube_Normals;

        }

        public void SetIndex(int I)
        {

            Index = I;

        }

        public Vector3[] GetVertices()
        {

            return Vertices[Index];

        }

        public uint[] GetIndices()
        {

            return Indices[Index];

        }

        public Vector3[] GetNormals()
        {

            return Normals[Index];

        }



        
    }
}