public class Solution 
{
    public int[] TwoSum(int[] nums, int target) 
    {
        for(int i = 0; i < nums.Length; i++)
        {
            for(int j = 0; j < nums.Length; j++)
            {
                if(i == j)
                    break;

                if(target - nums[i] - nums[j] == 0)
                    return new int[]{i, j};
            }
        }

        return null;
    }
}