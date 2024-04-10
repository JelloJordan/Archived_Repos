import java.text.DecimalFormat;

import cs1.Keyboard;

public class Main
{
	public static void main(String[] args)
	{
		System.out.println("Enter the first number");
		int num1 = Keyboard.readInt();
		System.out.println("Enter the second number");
		int num2 = Keyboard.readInt();
		System.out.println("Enter the third number");
		int num3 = Keyboard.readInt();
		int sum = num1 + num2 + num3;
		double average = sum * 0.3333333333333333333333333333333333333333333333333333333333333333333333333333333;
		DecimalFormat numberFormat = new DecimalFormat("#.0000");
		System.out.print("Average : " + numberFormat.format(average));
	}
}
