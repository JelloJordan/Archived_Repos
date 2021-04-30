using System;
using System.Collections.Generic;

namespace NurNet
{
    struct Node
    {
        private int index;
        private float amount;

        public int Index { get { return (int)index; } }
        public float Amount { get { return amount; } }

        public Node(int index, float amount)
        {
            this.index = index;
            this.amount = amount;
        }
    }

    class Network
    {
        int TimesTrained = 0;

        int InputCount = 3;
        int HiddenCount = 3;
        int OutputCount = 3;

        public List<float> InputValues = new List<float>();
        public List<float> HiddenValues1 = new List<float>();
        public List<float> HiddenValues2 = new List<float>();
        public List<float> OutputValues = new List<float>();

        public Network()    //Pass size constructors
        {
            for(int i = 0; i < 9; i++)
            {
                InputValues.Add(0);
                HiddenValues1.Add(0);
                HiddenValues2.Add(0);
                OutputValues.Add(0);
            }

            DisplayNetwork();

            /*
            while(Train(int.Parse(Console.ReadLine()), int.Parse(Console.ReadLine())))
            {
                DisplayNetwork();
            }*/

            //Test();
        }
        
        void DisplayNetwork()
        {
            
            
            /*
            int LineCount = 0;

            if(OutputCount > LineCount)
                LineCount = OutputCount;
            if(HiddenCount > LineCount)
                LineCount = HiddenCount;
            if(InputCount > LineCount)
                LineCount = InputCount;

            LineCount *= HiddenCount;
            */
            /*
            int ValueIndex = 0;

            Console.WriteLine(" I ---------  H  --------- O ");

            for(int x = 0; x < InputCount; x++)
            {
                Console.Write("[" + x + "]")
                for(int y = 0; y < HiddenCount; y++)
                {

                }

            }*/

            /*

            Console.WriteLine(" ");
            Console.WriteLine(" I ---------  H  --------- O ");
            Console.WriteLine("[0] > 0.00 > [0] > 0.00 > [0]");
            Console.WriteLine("[0] > 0.00 > [0] > 0.00 > [0]");
            Console.WriteLine("[0] > 0.00 > [0]          [0]");
            Console.WriteLine("[1] > 0.00 > [1] > 0.00 > [1]");
            Console.WriteLine("[1] > 0.00 > [1] > 0.00 > [1]");
            Console.WriteLine("[1] > 0.00 > [1]          [1]");
            Console.WriteLine("[2] > 0.00 > [2] > 0.00 >    ");
            Console.WriteLine("[2] > 0.00 > [2] > 0.00 >    ");
            Console.WriteLine("[2] > 0.00 > [2]             ");

            */
            for(int i = 0; i < 9; i++)
            {
                int CurrentIndex = (int)Math.Floor(i/3.00);
                Console.WriteLine("["+ CurrentIndex +"] > "+ String.Format("{0:0.00}", HiddenValues1[0]) +" > ["+ CurrentIndex +"] > "+ String.Format("{0:0.00}", HiddenValues2[0]) +" > ["+ CurrentIndex +"]");
            }
            
        }

        int Test(List<Node> Nodes)
        {
            return 0;
        }

        //Take list of structs with int and float, Index and value
        //Train by giving it float values for its inputs and by showing it the desired outcome
        //maybe only have two outcomes for true or false
        //Train it to say true if conditions match a specific example
        bool Train(List<Node> Nodes, int OutputIndex)
        {   


            TimesTrained++;   
            return true;
        }

    }
}