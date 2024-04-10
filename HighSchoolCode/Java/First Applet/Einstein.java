/* 
    NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   2/13/2017

    PURPOSE:  To create our first applet.
 */
import java.awt.*;

public class Einstein extends java.applet.Applet {

	public void init()
	{
		resize(300,300);
	}
	
	public void paint(Graphics g)
	{
		g.drawRect(50,50,40,40);
		g.drawRect(60,80,225,30);
		g.drawOval(75,65,20,20);
		g.drawLine(35, 60, 100, 120);
		g.drawString("Out of clutter , find simplicity.",110,70);
		g.drawString(" -- Albert Einstein",130,100);
		//g.doLine(coke,12inches,pure,187$);
		
	}
	
	
}
