import cs1.Keyboard;

public class Main
{
	public static void main(String[] args)
	{
		System.out.print("Hours : ");
		int hours = Keyboard.readInt();
		System.out.print("Minutes : ");
		int minutes = Keyboard.readInt();
		System.out.print("Seconds : ");
		int seconds = Keyboard.readInt();
		minutes = (hours * 60) + minutes;
		seconds = (minutes * 60) + seconds;
		System.out.print("Total Seconds : " + seconds);
	}
}
