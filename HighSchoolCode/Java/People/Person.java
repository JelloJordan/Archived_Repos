import cs1.Keyboard;
/* 
   NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   2/1/2017

    PURPOSE:  Type a description of your program here.
 */

public class Person {
	
	//Instance variables
	int age;
	String name;
	String color;
	
	//Instance Methods
	void input(){
		
	System.out.print("Enter name ");	
	name = Keyboard.readString();
	System.out.print("Enter color ");
	color = Keyboard.readString();	
	System.out.print("Enter age ");
	age = Keyboard.readInt();
	
	}
	
    void output(){
    	
	System.out.println(name+" is "+age+" years old and "+color+" is their favorite color");		
	
	}
    
	public static void main(String[] args) {

	//Create objects	
	Person Student = new Person();
	//Use methods
	Student.input();
	Student.output();

	}

}
