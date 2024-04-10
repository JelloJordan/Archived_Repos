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
		this.setResizable(false);
		cp.setLayout(null);;
		cp.add(l.object);
		l.object.setBackground(Color.RED);
		l.object.setBounds(100, 100, 100, 100);
	}
}
