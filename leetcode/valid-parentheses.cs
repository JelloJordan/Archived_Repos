public class Solution 
{
    Dictionary<char, char> closers = new Dictionary<char, char>()
    {
        {')', '('},
        {'}', '{'},
        {']', '['},
    };
    
    public bool IsValid(string s) 
    {
        if(s.Length % 2 == 1 || closers.ContainsKey(s[0]))
            return false;
        
        List<int> indices = new List<int>();
        indices.Add(0); //first bracket is open, store it
        for(int i = 1; i < s.Length; i++)
        {
            if(!closers.ContainsKey(s[i])) //if bracket is open
            {
                indices.Add(i);//store it
            }else //if bracket is closed
            {
                if(indices.Count == 0)
                    return false;

                if(closers[s[i]] != s[indices[indices.Count - 1]]) //if closed bracket not same as last open
                    return false;
                else
                    indices.RemoveAt(indices.Count - 1);//remove last open bracket
            }
        }

        return indices.Count == 0;
    }
}