/* 
    NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   2/15/2017

    PURPOSE:  To make a snowman.
 */
import java.awt.*;
import java.awt.Font;
import java.applet.Applet;

public class Snowman extends Applet
{
	public void init()
	{
		resize(800,400);
	}

	public void paint(Graphics box)
	{
	
		box.setColor(Color.orange);
		
		box.fillOval(340, 75, 250, 250); //Right Circle
		box.setColor(Color.red);
		
		box.fillOval(160, 75, 250, 250); //Left Circle
		box.setColor(Color.orange);
		//box.drawArc(340, 75, 250, 250, 135, 90);   Arc used to line up polygons
		
		int [ ] onex = {375, 365, 400, 400}; //First Line
		int [ ] oney = {114, 124, 124, 114};
		box.fillPolygon(onex, oney, 4);
		
		int [ ] twox = {359, 353, 400, 400}; //Second Line
		int [ ] twoy = {134, 144, 144, 134};
		box.fillPolygon(twox, twoy, 4);
		
		int [ ] threex = {349, 346, 410, 410}; //Third Line
		int [ ] threey = {154, 164, 164, 154};
		box.fillPolygon(threex, threey, 4);
		
		int [ ] forthx = {348, 353, 410, 410}; //Forth Line
		int [ ] forthy = {244, 254, 254, 244};
		box.fillPolygon(forthx, forthy, 4);
		
		int [ ] fifthx = {358, 364, 410, 410}; //Fifth Line
		int [ ] fifthy = {264, 274, 274, 264};
		box.fillPolygon(fifthx, fifthy, 4);
		box.setColor(Color.white);

		Font myFont = new Font("Sans Bold Oblique", Font.BOLD, 70); 
		box.setFont(myFont);
		box.drawString("MasterCard",190,220);  //MasterCard Text
		
	}
}


