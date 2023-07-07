public class Solution 
{
    Dictionary<char, int> numerals = new Dictionary<char, int>()
    {
        {'I', 1},
        {'V', 5},
        {'X', 10},
        {'L', 50},
        {'C', 100},
        {'D', 500},
        {'M', 1000},
    };

    public int RomanToInt(string s) 
    {
        int total = 0;
        for(int i = 0; i < s.Length; i++)
        {
            if(i < s.Length - 1)
            {
                if(numerals[s[i]] < numerals[s[i + 1]])
                {
                    total += numerals[s[i + 1]];
                    total -= numerals[s[i]];
                    i++;
                }else
                    total += numerals[s[i]];
            }else
                total += numerals[s[i]];
        }

        return total;
    }
}