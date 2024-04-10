import cs1.Keyboard;

public class Main
{
	public static void main(String[] args)
	{
		String input = Keyboard.readString();
		char[] array = input.toCharArray();
		for(int i = 0;i != input.length();i++)
		{
			System.out.println(array[i]);
		}
	}
}
