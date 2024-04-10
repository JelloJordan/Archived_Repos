/* 
    NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   5/15/2017

    PURPOSE:  To create the record
    We will define the fields and constructors
 */

public class Tank
{
	
	//variables
	private String country, type, name;
	private int crew, weight;
	Main m = new Main();
	TankArray t = new TankArray();
	
	//constructors
	
	//1st constructor - create a blank contact
	public Tank()
	{
		country = "";
		type = "";
		name = "";
		crew = 0;
		weight = 0;
	}	
	
	//2nd constructor - the "caller" sets the information
	public Tank(String name1, String country1, String type1, int crew1, int weight1)
	{
		country = country1;
		type = type1;
		crew = crew1;
		weight = weight1;
		name = name1;
		m.country = country;
		m.type = type;
		m.name = name;
		m.weight = weight;
		m.crew = crew;
	}
	
	//methods
	public String toString()
	{
		String data;
		data = name + "\t" + country + "\t" + type + "\t";
		data += crew + " crew" + "\t" + weight + " tonnes";
		return data;
	}
}
