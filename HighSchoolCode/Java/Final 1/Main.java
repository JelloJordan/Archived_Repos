import java.text.DecimalFormat;

import cs1.Keyboard;

public class Main
{
	public static void main(String[] args)
	{
		double input = Keyboard.readDouble();
			DecimalFormat numberFormat = new DecimalFormat("#.00");
			System.out.println("Starting Value " + input);
			input = input * 1.15;
			System.out.println("End of year " + 1 + " " + numberFormat.format(input));
			input = input * 1.15;
			System.out.println("End of year " + 2 + " " + numberFormat.format(input));
			input = input * 1.15;
			System.out.println("End of year " + 3 + " " + numberFormat.format(input));
			input = input * 1.15;
			System.out.println("End of year " + 4 + " " + numberFormat.format(input));
			input = input * 1.15;
			System.out.println("End of year " + 5 + " " + numberFormat.format(input));
	}
}
