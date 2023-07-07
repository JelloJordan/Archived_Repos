public class Solution 
{
    public string LongestCommonPrefix(string[] strs) 
    {
        //longest prefix can only be as long as shortest word
        int maxPrefixSize = 200;
        for(int i = 0; i < strs.Length; i++)
            if(strs[i].Length < maxPrefixSize)
                maxPrefixSize = strs[i].Length;

        StringBuilder prefix = new StringBuilder(maxPrefixSize);
        for(int i = 0; i < maxPrefixSize; i++)
        {
            char match = strs[0][i]; //equals character of first string initially
            for(int j = 1; j < strs.Length; j++)
                if(strs[j][i] != match)
                    return prefix.ToString();

            prefix.Append(match);
        }

        return prefix.ToString();
    }
}