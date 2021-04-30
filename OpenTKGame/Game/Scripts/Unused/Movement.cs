using System;
using System.IO;
using OpenTK;
using OpenTK.Graphics;
using OpenTK.Graphics.OpenGL;
using OpenTK.Input;

namespace Game
{
    public class Movement
    {
        public void Move(float[] Points, float xOff, float yOff)
        {
            if(!Colliding(Points, xOff, yOff))
            {
                Points[0] += xOff;
                Points[3] += xOff;
                Points[6] += xOff;
                Points[9] += xOff;

                Points[1] += yOff;
                Points[4] += yOff;
                Points[7] += yOff;
                Points[10] += yOff;
            }

        }

        bool Colliding(float[] Points, float xOff, float yOff)
        {
            for(int i = 0; i < Points.Length; i += 3)
            {  
                float newLoc = Points[i] + xOff;

                if((newLoc >= 1f) || (newLoc <= -1f))
                    return true;

            }

            for(int i = 1; i < Points.Length; i += 3)
            {  
                float newLoc = Points[i] + yOff;

                if((newLoc >= 1f) || (newLoc <= -1f))
                    return true;

            }

            
            

            return false;

        }
    }
}