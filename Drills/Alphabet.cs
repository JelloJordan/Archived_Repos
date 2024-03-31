using System.Text;

namespace Application
{
    class Alphabet : Drill
    {
        public struct Letter
        {
            public char Character;
            public string Name;
            
            public Letter(char _character, string _name)
            {
                Character = _character;
                Name = _name;
            }
        }
        
        static Letter[] letters = new Letter[]
        {
            new Letter('а', "а"),
            new Letter('б', "бэ"),
            new Letter('в', "вэ"),
            new Letter('г', "гэ"),
            new Letter('д', "дэ"),
            new Letter('е', "е"),
            new Letter('ё', "ё"),
            new Letter('ж', "же"),
            new Letter('з', "зэ"),
            new Letter('и', "и"),
            new Letter('й', "и краткое"),
            new Letter('к', "ка"),
            new Letter('л', "эль"),
            new Letter('м', "эм"),
            new Letter('н', "эн"),
            new Letter('о', "о"),
            new Letter('п', "пэ"),
            new Letter('р', "эр"),
            new Letter('с', "эс"),
            new Letter('т', "тэ"),
            new Letter('у', "у"),
            new Letter('ф', "эф"),
            new Letter('х', "ха"),
            new Letter('ц', "це"),
            new Letter('ч', "че"),
            new Letter('ш', "ша"),
            new Letter('щ', "ща"),
            new Letter('ъ', "твёрдый знак"),
            new Letter('ы', "ы"),
            new Letter('ь', "мягкий знак"),
            new Letter('э', "э"),
            new Letter('ю', "ю"),
            new Letter('я', "я")
        };
        
        public override void Play()
        {
            Random rand = new Random();
            int index = 0;

            Console.WriteLine("ж".ToLower());
            Console.WriteLine("Ж".ToLower());

            char guess;
            
            while(index < 33)
            {
                Console.WriteLine();
                Console.Write("Letter #" + (index + 1) + " = ");

                guess = Console.ReadKey().KeyChar;
                if (guess == letters[index].Character)
                {
                    Console.WriteLine("\tCorrect - " + letters[index].Character + " - " + letters[index].Name);
                    index++;
                }
                else
                {
                    Console.WriteLine("\tWRONG - " + letters[index].Character + " - " + letters[index].Name);
                    index = 0;
                }
            }

            Console.WriteLine("\tYOU DID IT!");
        }
    }
}