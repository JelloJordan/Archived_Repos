public class Solution 
{
    public int LengthOfLongestSubstring(string s) 
    {
        List<char> sub = new List<char>();
        int longest = 0;

        for(int i = 0; i < s.Length; i++)
        {
            if(!sub.Contains(s[i]))
            {
                sub.Add(s[i]);
            }else
            {
                while(!sub[0].Equals(s[i]))
                    sub.RemoveAt(0);

                sub.RemoveAt(0);
                sub.Add(s[i]);
            }

            if(longest < sub.Count)
                longest = sub.Count;
        }

        return longest;
    }
}