using System.Text;

namespace Application
{
    class Program
    {
        static void Main()
        {
            Console.OutputEncoding = Encoding.UTF8;

            Drill Game = new Alphabet();

            Game.Play();
        }
    }
}