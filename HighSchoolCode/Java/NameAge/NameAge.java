import cs1.Keyboard;

/* 
   NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   2/1/2017

    PURPOSE:  Type a description of your program here.
 */

public class NameAge {
	
	public static void main(String[] args) {
		int age = 0;
		String name = new String("blank");
		double gpa = 0.0;
		System.out.print("Name : ");
		name = Keyboard.readString();
		System.out.print("Age : ");
		age = Keyboard.readInt();
		System.out.print("GPA : ");
		gpa = Keyboard.readDouble();
		System.out.println(name + " is "+ age +" years old");
		System.out.println(name + "'s GPA is "+ gpa);
		
		
		
	}

}
