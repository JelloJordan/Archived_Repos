import java.awt.*;

import javax.swing.*;

public class GUIWindow extends JFrame
{
	//variables
	private int x,y,width,height;
	Container cp = this.getContentPane();
	Listen l = new Listen();
	TankArray t = new TankArray();
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
		this.setVisible(true);
		this.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		this.setResizable(false);
		l.console.setEditable(false);
	}
	public void init()
	{
		//create objects and initiate important stuff
		l.Listen();
		cp.setLayout(new GridLayout(1,1));
		cp.add(l.main);
		l.main.add(l.console);
		this.setJMenuBar(l.menuBar);
		l.menuBar.add(l.sortMenu);
		l.sortMenu.add(l.weightItem);
		l.main.setLayout(new GridLayout(2,1));
		l.input.setLayout(new GridLayout(6,1));
		l.main.add(l.input);
		l.input.add(l.name);
		l.input.add(l.country);
		l.input.add(l.type);
		l.input.add(l.crew);
		l.input.add(l.weight);
		l.input.add(l.submit);
	}
	public void append(String name1, String country1, String type1, int crew1, int weight1)
	{
		t.pass += name1 + "\t" + country1 + "\t" + type1 + "\t";
		t.pass += crew1 + " crew" + "\t" + weight1 + " tonnes" + "\n";
		String data;
		data = name1 + "\t" + country1 + "\t" + type1 + "\t";
		data += crew1 + " crew" + "\t" + weight1 + " tonnes" + "\n";
		l.console.append(data);
	}
}
