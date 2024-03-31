using System.Text;

namespace Application
{
    class DayGuesser : Drill
    {
        static string[] daysRU =
        {
            "понедельник",
            "вторник",
            "среда",
            "четверг",
            "пятница",
            "суббота",
            "воскресенье"
        };
        
        static string[] daysEN =
        {
            "monday",
            "tuesday",
            "wednesday",
            "thursday",
            "friday",
            "saturday",
            "sunday"
        };
        
        public override void Play()
        {
            Random rand = new Random();
            int index = rand.Next(0, 7);
            string guess;

            while(true)
            {
                Console.WriteLine();
                Console.WriteLine(daysRU[index]);
                
                guess = Console.ReadLine() ?? "ERROR";
                if (guess == daysEN[index])
                    Console.WriteLine("Correct");
                else
                    Console.WriteLine("WRONG - " + daysEN[index]);
                    
                index = rand.Next(0, 7);
            }
        }
    }
}