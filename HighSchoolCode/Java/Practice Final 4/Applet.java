/* 
	NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   2/1/2017

    PURPOSE:  Type a description of your program here.
 */

import java.awt.*;

public class Applet extends java.applet.Applet {

	public void init()
	{
		resize(300,300);
	}
	
	public void paint(Graphics g)
	{
		g.drawString("4", 120, 120);
		g.drawRect(100,100,30,30);
		g.drawOval(100,85,20,20);
	}
	
	
}
