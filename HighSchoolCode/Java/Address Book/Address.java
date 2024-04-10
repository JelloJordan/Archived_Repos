/* 
    NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   5/15/2017

    PURPOSE:  To create the record
    We will define the fields and constructors
 */

public class Address
{
	
	//variables
	private String first, last;
	private int age;
	private char gender;
	
	//constructors
	
	//1st constructor - create a blank contact
	public Address()
	{
		first = "";
		last = "";
		age = 0;
		gender = 'X';
	}	
	
	//2nd constructor - the "caller" sets the information
	public Address(String name1, String name2, int years, char sex)
	{
		first = name1;
		last = name2;
		age = years;
		gender = sex;
	}
	
	//methods
	public String toString()
	{
		String data;
		data = first + "\t" + last + "\t";
		data += age + "\t" + gender;
		return data;
	}
}
