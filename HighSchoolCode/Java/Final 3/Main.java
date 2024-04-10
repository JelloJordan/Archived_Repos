import cs1.Keyboard;

public class Main
{
	public static void main(String[] args)
	{
		String input = Keyboard.readString();
		int[] inputarray = new int[10];
		int[] count = new int[10];
		for(int i = 0;i != input.length();i++)
		{
			inputarray[i] = input.charAt(i);
			for(int l = 1;i != 10;l++)
			{
				count[l] = 1;
			}
		}
		System.out.println(count[2]);
	}
}
