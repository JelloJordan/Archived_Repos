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
		ArrayAddress book = new ArrayAddress();
		book.addAddress("Jordan", "Millett", 15, 'M');
		book.addAddress("Craig", "Swanson", 45, 'M');
		book.addAddress("Duke", "Nukem", 9000, 'F');
		book.addAddress("Caden", "Garrett", 14, 'M');
		book.addAddress("John", "Andersonville-Smith", 16, 'M');
		book.addAddress("John", "Deere", 145, 'M');
		book.addAddress();
		
		System.out.println(book);	
	}
}
