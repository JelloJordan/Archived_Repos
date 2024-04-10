import java.awt.*;

import javax.swing.*;

public class GUIWindow extends JFrame
{
	//variables
	private int x,y,width,height;
	//methods
	public void setLocationSize(int x,int y,int width,int height)
	{
		this.x = x;
		this.y = y;
		this.width = width;
		this.height = height;
		this.setLocation(x,y);
		this.setSize(width, height);
	}
	public GUIWindow(String title)
	{
		super(title);
		init();
	}
	public void init()
	{
		//create objects and initiate important stuff
		Container cp = this.getContentPane();
		Listen l = new Listen();
		l.Listen();
		this.setVisible(true);
		this.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		this.setResizable(false);
		cp.setLayout(new GridLayout(2,2));
		//add to cp
		cp.add(l.top);
		cp.add(l.bottom);
		//add to panels
		l.top.add(l.userName);
		l.bottom.add(l.password);
	}
}
