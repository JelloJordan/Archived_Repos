import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.util.*;

public class GUIWindow extends JFrame
{
	//variables
	private int x,y,width,height;
	private int click = 1;
	private int cookies = 0;
	private int cps = 0;
	
	private JPanel north = new JPanel();
	private JPanel south = new JPanel();
	
	//buttons
	private JButton buttonOk = new JButton("Click");
	
	//text field
	JLabel cooklabel = new JLabel("0");
	
	//menu
	private JMenuBar menuBar = new JMenuBar();
	private JMenu buyMenu = new JMenu("Buy");
	private JMenuItem ClickingPower = new JMenuItem("Clicking Power + 2    " + click * 10);
	private JMenuItem CPS = new JMenuItem("Clicks Per Second + 1    10");
	
	//constructors
	public GUIWindow()
	{
		super();
		init();
	}
	
	public GUIWindow(String title)
	{
		super(title);
		init();
	}
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
	
	public void makeVisible()
	{
		this.setVisible(true);
	}
	
	public void init()
	{	
		Container cp = this.getContentPane();
		
	    buyMenu.add(ClickingPower);
	    buyMenu.add(CPS);
	    menuBar.add(buyMenu);
	    this.setJMenuBar(menuBar);
		
		cp.setLayout(new GridLayout(2,2));
		
		//north.add(TextName);
		north.add(cooklabel);
		south.add(buttonOk);

		cp.add(north);
		cp.add(south);
		
		//listener
		buttonOk.addActionListener(new ActionListener()
		{ 
			  public void actionPerformed(ActionEvent e)
			  {
				  System.out.println("Click");
				  cookies = cookies + click;
				  cooklabel.setText(String.valueOf(cookies));
			  } 
		});
		
		ClickingPower.addActionListener(new ActionListener()
		{ 
			  public void actionPerformed(ActionEvent e)
			  {
				  System.out.println("Upgrade Clicked");
				  if (cookies >= click * 10)
				  {
					  System.out.println("Bought");
					  cookies = cookies - (click * 10);
					  click++;
					  cooklabel.setText(String.valueOf(cookies));
					  ClickingPower.setText("Clicking Power + 2    " + click * 10);
				  }
			  } 
		});
		
		CPS.addActionListener(new ActionListener()
		{ 
			  public void actionPerformed(ActionEvent e)
			  {
				  System.out.println("Upgrade Clicked");
				  if (cookies >= 10)
				  {
					  System.out.println("Bought");
					  cookies = cookies - 10;
					  cps++;
					  cooklabel.setText(String.valueOf(cookies));
					  CPS.setText("Clicks Per Second + 1    " + cps * 10);
				  }
			  } 
		});
	}	
}
