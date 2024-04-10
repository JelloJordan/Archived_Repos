/* 
    NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   2/10/2017

    PURPOSE:  To learn how java does math
    Part 1 : Basic Operations
    Part 2 : More Complex Math
*/

import cs1.Keyboard;

public class Arithmetic {

	public static void main(String[] args) {
	//Part 1 : Basic Math
	//Get the user to input two integers
	System.out.print("Enter Number One : ");
	int num1 = Keyboard.readInt();
	System.out.print("Enter Number Two : ");
	int num2 = Keyboard.readInt();
	
	//Addition
	int sum = num1 + num2;
	System.out.println(num1 + " + " + num2 + " = " + sum);
	
	//Subtraction
	int dif = num1 - num2;
	System.out.println(num1 + " - " + num2 + " = " + dif);
		
	//Multiplication
	int mul = num1 * num2;
	System.out.println(num1 + " * " + num2 + " = " + mul);	
	
	//Division		
	float div = (float)num1 / num2;
	System.out.println(num1 + " / " + num2 + " = " + div);
    
	int mystery = num1 % num2;
	System.out.println(num1 + " % " + num2 + " = " + mystery);
	//% --> leftover numbers after division 
	
	//Part 2 : Complex Math
	
	System.out.println(Math.PI);
	System.out.println(Math.max(18.25 , 22.32));
	dif = Math.max(num1 , num2) - Math.min(num1 , num2);
	System.out.println(num1 + " - " + num2 + " = " + dif);
	div = Math.round(div);
	System.out.println("Round to : "+ div);
	}

}
