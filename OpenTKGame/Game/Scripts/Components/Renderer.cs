using System;
using System.IO;
using OpenTK;
using OpenTK.Graphics;
using OpenTK.Graphics.OpenGL;

using OpenTK.Input;

namespace Game
{
    public class Renderer
    {
        GameObject Parent;

        int VerticesBuffer;
        int IndiciesBuffer; 
        int NormalsBuffer;

        int VertexArray;    //VAO Object where the buffers will be loaded into

        Vector3[] Vertices;
        uint[] Indices;
        Vector3[] NormalVectors;

        bool WireFrameMode = false;

        Shader _shader;        //Shader used in combination with vertices

        public Renderer(GameObject O)
        {

            Parent = O;

        }

        public void Init(Vector3[] Verts, uint[] Indi, Vector3[] Normal) //Init
        {
            Vertices = Verts;
            Indices = Indi;
            NormalVectors = Normal;

            VertexArray = GL.GenVertexArray(); //Create the VAO

            VerticesBuffer = GL.GenBuffer();   //Create the elements that will go into the VAO
            IndiciesBuffer = GL.GenBuffer();
            NormalsBuffer = GL.GenBuffer();
            

            _shader = new Shader("Shader/Shader.vert", "Shader/Shader.frag");   //Initing Shader
            _shader.Use();

            _shader.SetVector3("LightPosition", new Vector3(0f,3f,0f)); //xyz coords don't match the transform coords
            _shader.SetVector3("LightColor", new Vector3(1f,1f,1f));

            
        }

        public void SetModel(Vector3[] Verts, uint[] Indi, Vector3[] Normal)
        {

            

        }

        public void Bind() //Pass initial Data to GPU
        {
            

            GL.BindVertexArray(VertexArray);   //Tell the gpu to use this VAO

            GL.BindBuffer(BufferTarget.ArrayBuffer, VerticesBuffer);        //Bind the vertices
            GL.BufferData<Vector3>(BufferTarget.ArrayBuffer, (Vector3.SizeInBytes * Vertices.Length), Vertices, BufferUsageHint.StaticDraw); //Config the buffer
            GL.VertexAttribPointer(0, 3, VertexAttribPointerType.Float, false, 3 * sizeof(float), 0);       //Assing the VAO
            GL.EnableVertexAttribArray(0);                              //Pass the VAO attribute to the vertex shader script
        
            GL.BindBuffer(BufferTarget.ElementArrayBuffer, IndiciesBuffer);         //Bind the indicies
            GL.BufferData(BufferTarget.ElementArrayBuffer, Indices.Length * sizeof(uint), Indices, BufferUsageHint.StaticDraw); //Config the buffer

            GL.BindBuffer(BufferTarget.ArrayBuffer, NormalsBuffer);
            GL.BufferData<Vector3>(BufferTarget.ArrayBuffer, (Vector3.SizeInBytes * NormalVectors.Length), NormalVectors, BufferUsageHint.StaticDraw);
            GL.VertexAttribPointer(1, 3, VertexAttribPointerType.Float, false, 3 * sizeof(float), 0);
            GL.EnableVertexAttribArray(1);
            

        }

        void StoreDataInAttributeList(int attributeNumber, Vector3[] data)
        {

            //int vboID = GL.GenBuffer();
            //GL.BindBuffer(BufferTarget.ArrayBuffer, vboID);

        }

     
        //Update Model, Color
        public void SetColor(Vector4 Color)
        {

            _shader.SetVector4("ModelColor", Color);

        }

        public void WireFrameModeToggle()
        {

            WireFrameMode = !WireFrameMode;

        }

        public void Render() //Update
        {

          

            Matrix4 RotationMatrix =    Matrix4.CreateRotationX(MathHelper.DegreesToRadians(Parent.Transform.Rotation[0])) * 
                                        Matrix4.CreateRotationY(MathHelper.DegreesToRadians(Parent.Transform.Rotation[1])) * 
                                        Matrix4.CreateRotationZ(MathHelper.DegreesToRadians(Parent.Transform.Rotation[2]));

       

            Matrix4 TransformMatrix =   Matrix4.Identity * 
                                        Matrix4.CreateScale(Parent.Transform.Scale, Parent.Transform.Scale, Parent.Transform.Scale) *
                                        RotationMatrix *
                                        Matrix4.CreateTranslation(Parent.Transform.Position);
                                        
                                        

     
            Matrix4 ViewMatrix = Matrix4.CreateTranslation(0,0,-3f);  //camera is at 0 0 0

           
            Matrix4 ProjectionMatrix = Matrix4.CreatePerspectiveFieldOfView(MathHelper.DegreesToRadians(30), 700f / 700f, 0.1f, 100.0f);
      

            _shader.SetMatrix4("Model", TransformMatrix);
            _shader.SetMatrix4("View", ViewMatrix);
            _shader.SetMatrix4("Projection", ProjectionMatrix);




            GL.BindVertexArray(VertexArray);        //set what vertices are being drawn

         
            
            _shader.Use();

            if(WireFrameMode)
            {
                GL.PolygonMode(MaterialFace.FrontAndBack, PolygonMode.Line);
                    GL.DrawElements(PrimitiveType.Triangles, Indices.Length, DrawElementsType.UnsignedInt, 0);
                GL.PolygonMode(MaterialFace.FrontAndBack, PolygonMode.Fill);
            }else
            {
                GL.DrawElements(PrimitiveType.Triangles, Indices.Length, DrawElementsType.UnsignedInt, 0);
            }

            GL.BindVertexArray(0);                  //clear what vertices are being drawn



        }

        public void Dispose() //On Destroy
        {
            GL.DeleteVertexArray(VertexArray);
            GL.DeleteBuffer(VerticesBuffer);
            GL.DeleteBuffer(IndiciesBuffer);
            GL.DeleteBuffer(NormalsBuffer);
            _shader.Dispose();
        }

    }
}