/* 
    NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   3/3/2017

    PURPOSE:  Use what we learned in array_demo and name_list.
    		Use instance Variables
    		Use Methods
    		Use an array to :
    	+	Get 5 names
    	+	Up case all names
    	+	Find the longest name
    		Some sort of comparison
    		Sort the list
    		Display the list as needed
    		---Above and Beyond ---
    		Search for name
    		Multiple Sorts
    		Menu Program
    		---Notes---
    		Be able to change number (constant)
    		Some Methods should have return values
    		Use string methods as needed
 */
import cs1.Keyboard;

public class Names
{
	
//Constants	
final static int MAX = 5;	
//Variables
static String[] names = new String [MAX];
String prevname = "";
String repeat = "";
int count = 0;

	public void getnames()
	{
		for(int index = 0; index < MAX ; index++)
		{	
			System.out.print("Enter a Name " + index + " : ");
			names[index] = Keyboard.readString();
		}			
	}
	
	public void upcase()
	{
		for(int index = 0; index < MAX ; index++)
		{	
			names[index] = names[index].toUpperCase();
		}
	}
	
	public void output()
	{
		for(int index = 0; index < MAX ; index++)
		{	
			System.out.println("Name "+ index + " " + names[index]);
		}
	}	
	
	public void length()
	{
		for(int index = 0; index < MAX ; index++)
		{	
			if (names[index].length() > prevname.length())
			{
				prevname = names[index];	
			}
		}
		System.out.println("The largest name is " + prevname);	
	}	
	
	public void match()  //NOT WORKING AS OF RIGHT NOW
	{
		for(int index = 0; index < MAX ; index++)
		{	
			if (names[0] == names[index])
			{
				count++;
				System.out.println("COUNT");
			}
		}
		System.out.println(count);
		System.out.println(names[0] + " repeats " + count + " times");
	}	
	
	public static void main(String[] args)
	{
	Names box = new Names();
	AllSorts.sortAsc(names);
	box.getnames();
	box.upcase();
	box.length();
	box.match();
	box.output();
	}
}
