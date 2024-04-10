/* 
    NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   2/22/2017

    PURPOSE:  To work with Strings.
 */
import cs1.Keyboard;

public class NameList {
	
	public static void main(String[]args) {
		//get 2 names from the user
		System.out.print("Enter the first name : ");
		String one = Keyboard.readString();
		System.out.print("Enter the second name : ");
		String two = Keyboard.readString();
		
		
		//display those names
		
		System.out.println("Name one is "+ one);
		System.out.println("Name two is "+ two);
		
		//compare the names -- see if same name was typed
		if (one.equals(two))
		{
			System.out.println("The names are the same");
		}
		else
		{
			System.out.println("The names are not the same");
		}
		
		//up case both names and display
	
		one = one.toUpperCase();
		two = two.toUpperCase();
		
		//display those names
		
		System.out.println("Name one is "+ one);
		System.out.println("Name two is "+ two);
		
		//find the longest name
		
		int length1 = one.length();
		int length2 = two.length();
		
		if (length1 > length2) 
		{
			System.out.println(one + " is the longer name");
		} 
		else if (length2 > length1)
		{
			System.out.println(two + " is the longer name");	
		}
		else
		{
			System.out.println("The names are the same length");	
		}
		
		
		//Additional Methods
		
		int result = one.compareTo(two);
		System.out.println(result);
	
		char a = 'c';
		char o = 'y';
				
		String three = one.replace(a, o);
		
		System.out.println(three);
			
		
		
		
	}

}
