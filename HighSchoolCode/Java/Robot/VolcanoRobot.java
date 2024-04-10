/* 
   NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   2/1/2017

    PURPOSE:  To create a class called "VolcanoRobot" and in turn create objects.
 */

public class VolcanoRobot {
	
	//Instance variables
	String status;
	int speed;
	float temperature;
	
	//Instance methods
    void checkTemperature() {
    	if (temperature > 660) {
    		status = "returning home";
    		speed = 5;
    	}
    }
    
    void showAttributes() {
    	System.out.println("Status : " + status);
    	System.out.println("Speed : " + speed);
    	System.out.println("Temperature : " + temperature);
    }
    
    
	public static void main(String[] args) {
	 	//create object
		VolcanoRobot dante = new VolcanoRobot();
		//Initialize variables
		dante.speed = 2;
		dante.status = "exploring";
		dante.temperature = 510;	 
		//use methods
		dante.showAttributes();
		//make some changes
		System.out.println("Increase the speed to 3");
		dante.speed = 3;
		dante.showAttributes();
		System.out.println("Change temp to 690");
		dante.temperature = 690;
		dante.checkTemperature();
		dante.showAttributes();
		
	}

}
