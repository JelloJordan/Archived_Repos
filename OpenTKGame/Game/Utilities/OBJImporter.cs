using System;
using System.IO;
using System.Collections.Generic;
using OpenTK;
using OpenTK.Input;

namespace Game
{
    public class OBJImporter
    { 

        public OBJImporter()
        {
            

            
        }

        public Vector3[] GetVertices(string Filepath, float ImportScale)
        {

            StreamReader reader = new StreamReader(Filepath);
            
            string TotalContents = reader.ReadToEnd();
            string[] Lines = TotalContents.Split('\n');
            
            //Console.Write(TotalContents);
            
            List<Vector3> VertList = new List<Vector3>();

            //Console.Write("Total Length : " + Lines.Length + "\n");

            for(int i = 0; i < Lines.Length - 1; i++)
            {

                //Console.Write(Lines[i] + "\n");
                //Console.Write("Index Number : " + i + "\n");
              
                if(Lines[i][0] == 'v' && Lines[i][1] == ' ')
                {
                    



                    string[] Points = Lines[i].Split(' '); 
                   
                    

                    /*string[] Points = new string[4]
                    {

                        "v",
                        "1",
                        "1",
                        "1"

                    };*/
                    
                    //Console.Write("Points : " + Points[1] + " " + "\n");
                    /*Console.Write("(" + 
                    Points[1] + ", " + 
                    Points[2] + ", " + 
                    Points[3] + 
                    "\n");*/

                    VertList.Add(new Vector3
                    (
                    float.Parse(Points[1]) * ImportScale,
                    float.Parse(Points[2]) * ImportScale,
                    float.Parse(Points[3]) * ImportScale
                    ));

                    //Console.Write("Converted to : " + VertList[i] + "\n");

                }
                

            }

            

            Vector3[] Vertices = new Vector3[VertList.Count];

            for(int i = 0; i < VertList.Count; i++)
            {
                Vertices[i] = VertList[i];
                //Console.Write(VertList[i]);   
            }

            //Console.Write(Vertices[0]);  
            //Console.Write(Contents);



           
            return Vertices;

        }

        public uint[] GetIndices(string Filepath)
        {
            StreamReader reader = new StreamReader(Filepath);
            
            string TotalContents = reader.ReadToEnd();
            string[] Lines = TotalContents.Split('\n'); 
            
            List<uint> IndList = new List<uint>();

            for(int i = 0; i < Lines.Length - 1; i++)
            {

                if(Lines[i][0] == 'f')
                {

                    string[] Points = Lines[i].Split(' '); 

                    string[] first = Points[1].Split('/');
                    string[] second = Points[2].Split('/');
                    string[] third = Points[3].Split('/');
    

                    //Console.Write(Points[1] + "\n");
                    IndList.Add(Convert.ToUInt32(first[0]) - 1);
                    IndList.Add(Convert.ToUInt32(second[0]) - 1);
                    IndList.Add(Convert.ToUInt32(third[0]) - 1);

                    //Console.Write(first[0] + "/" + second[0] + "/" + third[0] + "\n");


                    

                }

            }

            uint[] Indices = new uint[IndList.Count];

            for(int i = 0; i < IndList.Count; i++)
                Indices[i] = IndList[i];

            //Console.Write(Indices[0]);
            //Indices[Indices.Length - 1] = Indices[0];

            return Indices;

        }

        public Vector3[] GetNormals(string Filepath)
        {

            uint[] NormalIndices = GetNormalIndices(Filepath);



            StreamReader reader = new StreamReader(Filepath);
            
            string TotalContents = reader.ReadToEnd();
            string[] Lines = TotalContents.Split('\n');
            
            //Console.Write(TotalContents);
            
            List<Vector3> VertList = new List<Vector3>();

            //Console.Write("Total Length : " + Lines.Length + "\n");

            for(int i = 0; i < Lines.Length - 1; i++)
            {

                //Console.Write(Lines[i] + "\n");
                //Console.Write("Index Number : " + i + "\n");
              
                if(Lines[i][0] == 'v' && Lines[i][1] == 'n')
                {
                    



                    string[] Points = Lines[i].Split(' '); 
                   
                    

                    /*string[] Points = new string[4]
                    {

                        "v",
                        "1",
                        "1",
                        "1"

                    };*/
                    
                    //Console.Write("Points : " + Points[1] + " " + "\n");
                    /*Console.Write("(" + 
                    Points[1] + ", " + 
                    Points[2] + ", " + 
                    Points[3] + 
                    "\n");*/

                    VertList.Add(new Vector3
                    (
                    float.Parse(Points[1]),
                    float.Parse(Points[2]),
                    float.Parse(Points[3])
                    ));

                    //Console.Write("Converted to : " + VertList[i] + "\n");

                }
                

            }

            

            Vector3[] ScrambledNormals = new Vector3[VertList.Count];

            for(int i = 0; i < VertList.Count; i++)
            {
                ScrambledNormals[i] = VertList[i];
                //Console.Write(VertList[i]);   
            }

            //Console.Write(Vertices[0]);  
            //Console.Write(Contents);

            Vector3[] Normals = new Vector3[ScrambledNormals.Length * 3];
            
            for(int i = 0; i < ScrambledNormals.Length; i += 3)
            {
                Normals[i] = ScrambledNormals[NormalIndices[i]];
                Normals[i + 1] = ScrambledNormals[NormalIndices[i + 1]];
                Normals[i + 2] = ScrambledNormals[NormalIndices[i + 2]];
            }

           
            return Normals;

        }

        uint[] GetNormalIndices(string Filepath)
        {

            StreamReader reader = new StreamReader(Filepath);
            
            string TotalContents = reader.ReadToEnd();
            string[] Lines = TotalContents.Split('\n'); 
            
            List<uint> IndList = new List<uint>();

            for(int i = 0; i < Lines.Length - 1; i++)
            {

                if(Lines[i][0] == 'f')
                {

                    string[] Points = Lines[i].Split(' '); 

                    string[] first = Points[1].Split('/');
                    string[] second = Points[2].Split('/');
                    string[] third = Points[3].Split('/');
    

                    //Console.Write(Points[1] + "\n");
                    IndList.Add(Convert.ToUInt32(first[2]) - 1);
                    IndList.Add(Convert.ToUInt32(second[2]) - 1);
                    IndList.Add(Convert.ToUInt32(third[2]) - 1);

                    //Console.Write(first[0] + "/" + second[0] + "/" + third[0] + "\n");


                    

                }

            }

            uint[] Indices = new uint[IndList.Count];

            for(int i = 0; i < IndList.Count; i++)
                Indices[i] = IndList[i];

            //Console.Write(Indices[0]);
            //Indices[Indices.Length - 1] = Indices[0];

            return Indices;


        }
    }

}