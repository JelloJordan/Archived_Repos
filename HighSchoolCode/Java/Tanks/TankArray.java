/*
 * Author: RODIN_PHILIP
 * Created: Thursday, May 13, 2010 2:31:04 PM
 * Modified: Thursday, May 13, 2010 2:31:04 PM
 */
import cs1.Keyboard;

public class TankArray
{
	private Tank[] collection;
	private int count;
	String pass = "";
		
	// initializes the collection of Address
	public TankArray()
	{
		collection = new Tank[100];
		count = 0;		
	}
	
	//adds Address to your collection
	public void addAddress (String name1, String country1, String type1, int crew1, int weight1)
	{
		if (count == collection.length)
			increaseSize();
		
		collection[count] = new Tank (name1, country1,type1,crew1,weight1);
		count++;
	}
	
	//returns a report describing the Address collection
	public String toString()
	{
		//NumberFormat fmt = NumberFormat.getCurrencyInstance();
		String report = "******************************************************\n";
		report += "My Address Collections\n\n";
		report += "Number of Tanks:  " + count + "\n";
		report += "\n\nAddress List: \n\n";
		
		for (int tank =0; tank < count; tank++)
			report += collection[tank].toString() + "\n";
		
		return report;
	}
	
	//  doubles the size of the array - makes a new array - copies data into it.
	private void increaseSize()
	{
		Tank[] temp = new Tank[collection.length * 2];
		 for (int tank = 0;  tank < collection.length; tank++)
				temp[tank] = collection[tank];
			
		collection = temp;
	}
	
	public void sortWeight()
	{
		System.out.println(pass);
	}

}
