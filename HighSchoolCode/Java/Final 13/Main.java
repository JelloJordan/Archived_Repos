import cs1.Keyboard;

public class Main
{
	public static void main(String[] args)
	{
		System.out.print("Age : ");
		int age = Keyboard.readInt();
		if(age < 6)
		{
			System.out.println("No Charge");
		}else
		if(age < 13)
		{
			System.out.println("Child Rate");
		}else
		if(age < 61)
		{
			System.out.println("Adult Rate");
		}else
		if(age > 60)
		{
			System.out.println("No Charge");
		}
			
	}
}
