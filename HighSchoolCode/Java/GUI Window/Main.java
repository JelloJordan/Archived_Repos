import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.MouseInfo;    


/* 
    NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   4/19/2017

    PURPOSE:  Main Method
    		  We won't add much after today
 */

public class Main
{
	public static void main(String[] args)
	{
		GUIWindow win = new GUIWindow("Milletts Window");
		win.setLocationSize(30,30,300,300);
		win.makeVisible();
	
		win.shakeMenuItem.addActionListener(new ActionListener()
		{
			  public void actionPerformed(ActionEvent e)
			  { 
				  while(1 == 1)
				  {
					  
					  int mouseY = MouseInfo.getPointerInfo().getLocation().y;
				      int mouseX = MouseInfo.getPointerInfo().getLocation().x;
				      int x = (mouseX - 150) + (int)(Math.random() * 10) + 25;
				      int y = (mouseY - 200) + (int)(Math.random() * 10) + 25;
				      win.setLocation(x, y);
				  }
	  
			  }
		});
		
		win.shakeMenuItem.addActionListener(new ActionListener()
		{
			  public void actionPerformed(ActionEvent e)
			  { 
				  while(1 == 1)
				  {
					  
					  int x = (int)(Math.random() * 10) + 5;
					  int y = (int)(Math.random() * 10) + 5;
					  int sx = (int)(Math.random() * 900) + 100;
					  int sy = (int)(Math.random() * 900) + 100;
				      win.setLocationSize(x, y, sx, sy);
				     
				  }
	  
			  }
		});
		
		win.shakeMenuItem.addActionListener(new ActionListener()
		{
			  public void actionPerformed(ActionEvent e)
			  { 
				  while(1 == 1)
				  {
				      int x = (int)(Math.random() * 10) + 25;
				      int y = (int)(Math.random() * 10) + 25;
				      win.setLocation(x, y);
				  }
	  
			  }
		});
	
	}
}
