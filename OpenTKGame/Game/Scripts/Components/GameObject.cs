using System;
using System.IO;
using OpenTK;
using OpenTK.Graphics;
using OpenTK.Graphics.OpenGL;
using OpenTK.Input;

namespace Game
{
    public class GameObject
    {   
        public Transform Transform;
        public Renderer Renderer;
        

        Shapes S;
        OBJImporter O;

        public GameObject(Vector3 PositionOffset, Game G, int ModelNum)
        {
            Transform = new Transform(this);
            Renderer = new Renderer(this);
            G.GameObjects.Add(this);

            S = new Shapes();
            S.SetIndex(ModelNum);

            O = new OBJImporter();
            string FileLocation = "Models/3D/Test.obj";

            if(ModelNum != -1)
                Renderer.Init(S.GetVertices(), S.GetIndices(), S.GetNormals());
            else
                Renderer.Init(O.GetVertices(FileLocation, 0.25f), O.GetIndices(FileLocation), O.GetNormals(FileLocation));
            
            Transform.Position = PositionOffset;

            Init();
        }

        Vector3[] AddVector3Arrays(Vector3[] A, Vector3 B)
        {

            Vector3[] C = new Vector3[A.Length];

            for(int i = 0; i < A.Length; i++)
            {

                C[i] = A[i] + B;

            }

            return C;

        }

        public void AddComponent()
        {



        }

        //make transform its own object
        public Renderer GetRenderer() //make this eventually become a getcomponent sorta thing, make mesh changable in runtime along with color
        {

            return Renderer;

        }

        public void Init()
        {

            Renderer.Bind();

        }

        public void Update()
        {

            Renderer.Render();

        }

        public void Destroy()
        {

            Renderer.Dispose();

        }
        
    }
}