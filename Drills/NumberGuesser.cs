using System.Text;

namespace Application
{
    class NumberGuesser : Drill
    {
        static string[] last =
        {
            "ноль",
            "один",
            "два",
            "три",
            "четыре",
            "пять",
            "шесть",
            "семь",
            "восемь",
            "девять",
            "десять",
            "одиннадцать",
            "двенадцать",
            "тринадцать",
            "четырнадцать",
            "пятнадцать",
            "шестнадцать",
            "семнадцать",
            "восемнадцать",
            "девятнадцать"
        };
        
        static string[] tens =
        {
            "ноль",
            "десять",
            "двадцать",
            "тридцать",
            "сорок",
            "пятьдесят",
            "шестьдесят",
            "семьдесят",
            "восемьдесят",
            "девяносто",
        };
        
        static string[] hundreds =
        {
            "ноль",
            "сто",
            "двести",
            "триста",
            "четыреста",
            "пятьсот",
            "шестьсот",
            "семьсот",
            "восемьсот",
            "девятьсот"
        };
        
        public override void Play()
        {
            Random rand = new Random();
            int answer = rand.Next(0, 1000);

            while(true)
            {
                Console.WriteLine();
                answer = rand.Next(0, 1000);
                OutputNumber(answer);
                int guess = Convert.ToInt32(Console.ReadLine());
                if (guess == answer)
                    Console.WriteLine("Correct");
                else
                    Console.WriteLine("WRONG - " + answer);
            }
        }
        
        public void OutputNumber(int number)
        {
            if (number < 20)
            {
                Console.WriteLine(last[number] + " ");
                return;
            }

            if (number > 99)
            {
                int subtract = (int)MathF.Floor(number / 100f);
                Console.Write(hundreds[subtract] + " ");
                number -= subtract * 100;
            }

            if (number < 100 && number > 19)
            {
                int subtract = (int)MathF.Floor(number / 10f);
                Console.Write(tens[subtract] + " ");
                number -= subtract * 10;
            }

            if (number < 20 && number != 0)
                Console.Write(last[number] + " ");
            
            Console.WriteLine();
        }
    }
}