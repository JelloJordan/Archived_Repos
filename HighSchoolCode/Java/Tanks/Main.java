/* 
    NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   2/1/2017

    PURPOSE:  Type a description of your program here.
 */

public class Main
{
	static String name;
	static String country;
	static String type;
	static int crew;
	static int weight;
	static int append = 0;
	static GUIWindow w = new GUIWindow("Tanks");
	public static void main(String[] args)
	{
		//GUIWindow w = new GUIWindow("Tanks");
		w.setLocationSize(200,200,500,500);
		TankArray a = new TankArray();
		a.addAddress("T-26", "Russia", "Light", 3, 10);
		w.append(name, country, type, crew, weight);
		a.addAddress("T-34", "Russia", "Medium", 4, 26);
		w.append(name, country, type, crew, weight);
		System.out.println(a);
	}
	
	public void append()
	{
		w.append(name, country, type, crew, weight);
	}
}
