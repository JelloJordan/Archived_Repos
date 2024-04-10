/* 
    NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   2/1/2017

    PURPOSE:  Type a description of your program here.
 */

import cs1.Keyboard;

public class Main
{
	public static void main(String[] args)
	{
		String text = Keyboard.readString();
		int length = text.length();
		int count = 0;
		for(int i = 0;i == length;i++)
		{
			StringBuilder e = new StringBuilder(text);
			e.setCharAt(i, ' ');
			//text.charAt(4) = " ";
			//text[i] = " ";
			//text = text.concat(" ");
			count++;
			//if(count = 3)
			System.out.println(text);
		}
	}
}