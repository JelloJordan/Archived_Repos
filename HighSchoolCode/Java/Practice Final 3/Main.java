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
		System.out.print("Number : ");
		int num = Keyboard.readInt();
		for(int i = 1;i < num + 1;i++)
		{
		System.out.print(i + " ");
		}
	}
}
