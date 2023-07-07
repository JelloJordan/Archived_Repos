public class Solution 
{
    public bool IsPalindrome(int x) 
    {
        string s = x.ToString();
        int len = s.Length;
        
        int i = 0;
        while(i < (int) Math.Floor(len/2f))
        {
            if(s[i] == s[len - 1 - i])
                i++;
            else
                return false;
        }

        return true;
    }
}