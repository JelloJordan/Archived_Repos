/*
 * Author: rodin_philip
 * Created: Monday, January 26, 2009 7:56:06 AM
 * Modified: Monday, January 26, 2009 7:56:06 AM
 *
 * Purpose: creating a class called VolcanoRobot that we will use to create objects.
 */


public class Main  //defines a class - VolcanoRobot
{
	//these are the variables of the class
	
	String status;
	int speed;
	float temperature;
	
	
	//instance method
	void checkTemperature()
	{
		if (temperature > 660)
		{
			status = "returning home";
			speed = 5;
		}
		
	}

	void showAttributes()
	{
		System.out.println("Status: " + status);
		System.out.println("Speed: " + speed);
		System.out.println("Temperature: " + temperature);
		
	}
	
	//put in my main method
	public static void main(String[] args)
	{
		
		
	}
}

