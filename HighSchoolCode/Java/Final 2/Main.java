import cs1.Keyboard;

public class Main
{
	public static void main(String[] args)
	{
		System.out.println("Width");
		int width = Keyboard.readInt();
		System.out.println("Length");
		int length = Keyboard.readInt();
		System.out.println("depth");
		int depth = Keyboard.readInt();
		System.out.println("Volume " + width * length * depth);
		int base = length * width * 2;
		int p = length + width + length + width;
		int lsa = p * depth;
		System.out.println("Surface Area " + (lsa + base));
	}
}
