/*using System;
using System.IO;
using OpenTK;
using OpenTK.Graphics;
using OpenTK.Graphics.OpenGL;
using OpenTK.Input;


namespace Game
{
    public class Test : GameWindow
    {

        Movement M = new Movement();
        DevTools DT = new DevTools();

        //int VertexBufferObject;     //uh
        //int VertexArrayObject;      //uh needed?
        //int ElementBufferObject;    //Draws the player

        Shader _shader;        //Shader used in combination with vertices

        float[] PlayerVerts =              //Vertices used for the rectangle drawn on screen
        {
            -0.05f, -0.1f -0.6f, 0.0f, 
            0.05f, -0.1f -0.6f, 0.0f, 
            0.05f,  0.1f -0.6f, 0.0f,
            -0.05f,  0.1f -0.6f, 0.0f    
        };

        uint[] indices =  //describes how the vertices are linked together to form two triangles
        {  
            0, 1, 2,
            0, 2, 3   
        };

        float[] ball =                      //verts for the "ball"
        {
            -0.03f, -0.03f, 0.0f, 
            0.03f, -0.03f, 0.0f, 
            0.0f,  0.03f, 0.0f 
        };

        Renderable R;

        //public Engine(int width, int height, string title) : base(width, height, GraphicsMode.Default, title){} //Function used to create the window

        protected override void OnUpdateFrame(FrameEventArgs e)             //updated every frame
        {
            DT.DrawFPS();
            PlayerMovement();
            base.OnUpdateFrame(e);
        }

        void PlayerMovement()
        {
            KeyboardState input = Keyboard.GetState();  //gets current keyboard input

            if(input.IsKeyDown(Key.W)){M.Move(PlayerVerts, 0f, 0.01f);}   
            if(input.IsKeyDown(Key.A)){M.Move(PlayerVerts, -0.01f, 0f);}
            if(input.IsKeyDown(Key.S)){M.Move(PlayerVerts, 0f, -0.01f);}           
            if(input.IsKeyDown(Key.D)){M.Move(PlayerVerts, 0.01f, 0f);}
            
            if(input.IsKeyDown(Key.Escape)){Exit();}

            //GL.BufferData(BufferTarget.ArrayBuffer, PlayerVerts.Length * sizeof(float), PlayerVerts, BufferUsageHint.StaticDraw);
            //GL.BufferData(BufferTarget.ArrayBuffer, PlayerVerts.Length * sizeof(float), PlayerVerts, BufferUsageHint.DynamicDraw);
        }

        protected override void OnLoad(EventArgs e)         //On Create, like the Start(); in unity
        {
            DT.Start();                                  
            GL.ClearColor(0f, 0f, 0f, 1f);          //Background Color

            //Console.Write("Before");

            R = new Renderable(ball);
            R.Bind();

            //Console.Write("After");

            //VertexBufferObject = GL.GenBuffer(); //NEEDED I GUESS?!?
            //GL.BindBuffer(BufferTarget.ArrayBuffer, VertexBufferObject);
            //GL.BufferData(BufferTarget.ArrayBuffer, PlayerVerts.Length * sizeof(float), PlayerVerts, BufferUsageHint.DynamicDraw);


            //ElementBufferObject = GL.GenBuffer();   
            //GL.BindBuffer(BufferTarget.ElementArrayBuffer, ElementBufferObject);
            //GL.BufferData(BufferTarget.ElementArrayBuffer, indices.Length * sizeof(uint), indices, BufferUsageHint.DynamicDraw);

       
            _shader = new Shader("Shader/shader.vert", "Shader/shader.frag");   //Initing Shader
            _shader.Use();


            //VertexArrayObject = GL.GenVertexArray();        //Init Vertex Array Object
            //GL.BindVertexArray(VertexArrayObject);  


            //GL.BindBuffer(BufferTarget.ArrayBuffer, VertexBufferObject);


            //GL.BindBuffer(BufferTarget.ElementArrayBuffer, ElementBufferObject);


            GL.VertexAttribPointer(0, 3, VertexAttribPointerType.Float, false, 3 * sizeof(float), 0);
            GL.EnableVertexAttribArray(0);


            base.OnLoad(e);
        }

        protected override void OnRenderFrame(FrameEventArgs e)
        {
            GL.Clear(ClearBufferMask.ColorBufferBit); //wipes the screen for the new frame
            
            _shader.Use();

            //GL.BindVertexArray(VertexArrayObject);

            //R.Bind();
            R.Render();

            //GL.DrawElements(PrimitiveType.Triangles, indices.Length, DrawElementsType.UnsignedInt, 0); //displays elements
            

            Context.SwapBuffers(); //Buffer swapping thing that reduces screen tearing
            base.OnRenderFrame(e);
        }

        protected override void OnResize(EventArgs e) //called everytime the window is resized
        {
            GL.Viewport(0, 0, Width, Height);       //maps the rendered output to the dimensions of the window, might change to lock 1280x720
            base.OnResize(e);
        }

        protected override void OnUnload(EventArgs e)
        {
            //GL.BindBuffer(BufferTarget.ArrayBuffer, 0);
            //GL.BindBuffer(BufferTarget.ElementArrayBuffer, 0); //binding the buffer to zero sets it to null
            //GL.BindVertexArray(0);
            //GL.UseProgram(0);

            R.Dispose();

            //GL.DeleteBuffer(VertexBufferObject);
            //GL.DeleteBuffer(ElementBufferObject);
            //GL.DeleteVertexArray(VertexArrayObject);
            _shader.Dispose();

            base.OnUnload(e);
        }
    }
}



  //GL.MatrixMode(MatrixMode.Modelview);
            //GL.PushMatrix();
            //GL.Translate(Position);

            //Matrix4 World = Matrix4.CreateTranslation(Position); //doesnt actually work
            //GL.MatrixMode(MatrixMode.Modelview);
            //GL.LoadMatrix(ref World);
            
            //GL.MatrixMode(MatrixMode.Modelview);

            //GL.Ortho(-1, 1, -1, 1, 1, -1);

            //GL.CullFace(CullFaceMode.Back);

            //Matrix4 TransformMatrix = Matrix4.Identity;

            //Vector4 vec = new Vector4(1.0f, 0.0f, 0.0f, 1.0f);

            //glViewport(0,0,width,height);
            //glMatrixMode(GL_PROJECTION);
            //glLoadIdentity();
            //glOrtho(0,width,0,height,-1,1);
            //GL.MatrixMode(MatrixMode.Modelview);
            
            //Matrix4 TransformMatrix = Matrix4.CreateTranslation(0,Position[1],0);
            //Matrix4 TransformMatrix = Matrix4.Identity;
            //GL.LoadIdentity();
            //Matrix4 TransformMatrix = Matrix4.Identity * Matrix4.CreateTranslation(Position[0],0f,0f);

                              
            //Matrix4 TransformMatrix = Matrix4.CreateRotationY(MathHelper.DegreesToRadians(Position[0] * 100f));
            //TransformMatrix *= Matrix4.CreateTranslation(Position/10f);
            //Position += new Vector3(.01f,0f,0f);
            //Position += new Vector3(.1f,.1f,.1f);        


            //GL.MatrixMode(MatrixMode.Modelview);
            //TransformMatrix *= Matrix4.CreateTranslation(Position);
            //TransformMatrix *= Matrix4.CreateTranslation(Position);

            //Matrix4 ViewMatrix = Matrix4.Identity;
            //Matrix4 ViewMatrix = Matrix4.LookAt(new Vector3(0,0, 10), new Vector3(0f,0f,0f), new Vector3(0,1f,0f));
            //Matrix4 ViewMatrix = Matrix4.Identity * Matrix4.CreateTranslation(Position[0],0f,0f);
            //Matrix4 ViewMatrix = Matrix4.Identity * Matrix4.CreateTranslation(0.0f, 0.0f, -3.0f);

             //Matrix4 ProjectionMatrix = Matrix4.Identity * Matrix4.CreateTranslation(Position[0],0f,0f);
            //Matrix4 ProjectionMatrix = Matrix4.Identity;
            //Matrix4 ProjectionMatrix = Matrix4.CreateOrthographicOffCenter(0.0f, 1280.0f, 0.0f, 720.0f, 0.1f, 100.0f);
            //Matrix4 ProjectionMatrix = Matrix4.CreatePerspectiveFieldOfView(MathHelper.DegreesToRadians(1.0f), 1, 0.1f, 1.0f);
            
            //Vector4 vec = new Vector4(1.0f, 0.0f, 0.0f, 1.0f);
            //Matrix4 trans = Matrix4.CreateTranslation(0.1f, 0.1f, 0.0f);
            //vec *= trans;
            //Console.WriteLine("{0}, {1}, {2}", vec[0], vec[1], vec[2]);

            //GL.MatrixMode(MatrixMode.Modelview);
            //GL.LoadIdentity();
            //GL.Translate(Position); // translates by 1 pixel
            
            //Matrix4 ProjectionMatrix = Matrix4.CreateOrthographicOffCenter(-1.0f, 1.0f, -1.0f, 1.0f, -1.0f, 1.0f);

                  //TransformMatrix *= 
            //Matrix4 TransformMatrix = Matrix4.CreateTranslation(Position);
            //TransformMatrix *= GL.Ortho(-1, 1, -1, 1, 1, -1);
            //TransformMatrix *= Matrix4.CreateOrthographicOffCenter(0.0f, 1.0f, 0.0f, 1.0f, 0.1f, 100.0f);
            //Matrix4 TransformMatrix = Matrix4.CreateRotationZ(MathHelper.DegreesToRadians(Position[1]));
            //_shader.SetMatrix4("transform", TransformMatrix);
            //vec *= trans;

            
            //_shader.SetVector3("LightPosition", new Vector3(0f,0f,3f));
            //_shader.SetVector3("LightColor", new Vector3(1f,1f,1f));


            //TransformMatrix *= Matrix4.CreateTranslation(Position);
            //TransformMatrix *= Matrix4.CreateScale(1.1f);

            
            //GL.Translate(new Vector3(0f,0.1f,0f));

               //GL.DrawArrays(PrimitiveType.Triangles, 0, Vertices.Length);  now outdated for my engine

               


            //GL.PopMatrix();

            //GL.Translate(-Position);

              //StoreDataInAttributeList(0, Vertices);
            //StoreDataInAttributeList(1, NormalVectors);

            //var positionLocation = _shader.GetAttribLocation("Position");
            //GL.EnableVertexAttribArray(positionLocation);
            //GL.VertexAttribPointer(positionLocation, 3, VertexAttribPointerType.Float, false, 3 * sizeof(float), 0);

            //var normalLocation = _shader.GetAttribLocation("Normal");
            //GL.EnableVertexAttribArray(normalLocation);
            //GL.VertexAttribPointer(normalLocation, 3, VertexAttribPointerType.Float, false, 3 * sizeof(float), 0);

                       //GL.VertexAttribPointer(1, 3, VertexAttribPointerType.Float, false, 3 * sizeof(float), 0);


*/