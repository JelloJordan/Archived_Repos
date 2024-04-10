/* 
    NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   4/19/2017

    PURPOSE:  This is where we will define our
    		  GUI window and what it can do.
    		  
Make spot that the user can type in Text.
Actions may also put information in the text box.
Need to have three buttons (one needs to be a Quit button)
All buttons need to be "active".
Need to have at least three menus (not menu bars!).
Every Menu needs to have at least 3 items.
 */

import javax.swing.*;
import javax.swing.JOptionPane.*;
import java.awt.*;
import java.awt.event.*;

public class GUIWindow extends JFrame 
{
	//variables
	private int x,y,width,height;

	private JPanel north = new JPanel();
	private JPanel south = new JPanel();
	
	//text area
	private JTextArea chat = new JTextArea(20,20);
	
	//buttons
	private JButton buttonOk = new JButton("Ok");
	
	//menu bar
	private JMenuBar menuBar = new JMenuBar();
	//menu items
	private JMenu fileMenu = new JMenu("File");
	private JMenu helpMenu = new JMenu("Help");
	private JMenu colorMenu = new JMenu("Color");
	private JMenu trollMenu = new JMenu("Troll");
	//menu bar items
	private JMenuItem quitMenuItem = new JMenuItem("Quit");
	 		JMenuItem shakeMenuItem = new JMenuItem("Shake");
	private JMenuItem helpMenuItem = new JMenuItem("Help");
	private JMenuItem aboutMenuItem = new JMenuItem("About");
	private JMenuItem redMenuItem = new JMenuItem("Red");
	private JMenuItem greenMenuItem = new JMenuItem("Green");
	private JMenuItem blueMenuItem = new JMenuItem("Blue");
	private JMenuItem whiteMenuItem = new JMenuItem("White");
	
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
		Main m = new Main();
		
		//Add panels
		
		cp.add(north);
		cp.add(south);
		
		//Add menu bar items
	    
	    menuBar.add(fileMenu);
	    menuBar.add(helpMenu);
	    menuBar.add(colorMenu);
	    menuBar.add(trollMenu);
		
		//Add menu items
		
	    fileMenu.add(quitMenuItem);
	    helpMenu.add(helpMenuItem);
	    helpMenu.add(aboutMenuItem);
	    colorMenu.add(redMenuItem);
		colorMenu.add(greenMenuItem);
		colorMenu.add(blueMenuItem);
		colorMenu.add(whiteMenuItem);
		trollMenu.add(shakeMenuItem);
	    
	    //Add menu items  
	    	
	    this.setJMenuBar(menuBar);
	    
	    //Layout of panels
	    
	    cp.setLayout(new GridLayout(2,2));
	    
	    //Add colors to panels
	    
		north.setBackground(Color.white);
		south.setBackground(Color.white);
		
		//Add buttons to panels
		
		chat.setWrapStyleWord(true);
		chat.setLineWrap(true);
		north.add(chat);
		south.add(buttonOk);
		
		//Listeners
		
		aboutMenuItem.addActionListener(new ActionListener()
		{
			  public void actionPerformed(ActionEvent e)
			  {
					String str = "Caden Garrett\n";
					str += "-2017\n";
					ImageIcon icon = new ImageIcon("bin/caden.jpg");
					JOptionPane.showMessageDialog(aboutMenuItem,str, "About",JOptionPane.INFORMATION_MESSAGE,icon);
			  }
		});
		
		helpMenuItem.addActionListener(new ActionListener()
		{
			  public void actionPerformed(ActionEvent e)
			  {
				  JOptionPane.showMessageDialog(helpMenuItem,"no");
			  }
		});
		
		quitMenuItem.addActionListener(new ActionListener()
		{
			  public void actionPerformed(ActionEvent e)
			  {
			int ans = JOptionPane.showConfirmDialog(quitMenuItem ,"Are you sure you want to quit?", "Exit",JOptionPane.YES_NO_OPTION);
			if (ans == JOptionPane.YES_OPTION)
					{
						System.exit(0);
					}
			  }
		});
		
		
		buttonOk.addActionListener(new ActionListener()
		{
			  public void actionPerformed(ActionEvent e)
			  {
				  
				  
				  while(1 == 1)
				  {
					  //int mouseY = MouseInfo.getPointerInfo().getLocation().y;
				      //int mouseX = MouseInfo.getPointerInfo().getLocation().x;
				      //int x = (mouseX - 150) + (int)(Math.random() * 10) + 25;
				      //int y = (mouseY - 200) + (int)(Math.random() * 10) + 25;
					  //int x = (int)(Math.random() * 10) + 5;
					  //int y = (int)(Math.random() * 10) + 5;
					  //int sx = (int)(Math.random() * 900) + 100;
					  //int sy = (int)(Math.random() * 900) + 100;
				      //win.setLocationSize(x, y, sx, sy);
				      //win.setLocation(x, y);
				      //.setLocation(x, y);  
				  }
			  }
		});
		
		redMenuItem.addActionListener(new ActionListener()
		{
			  public void actionPerformed(ActionEvent e)
			  {
				  north.setBackground(Color.red);
				  south.setBackground(Color.red); 
			  }
		});
		
		greenMenuItem.addActionListener(new ActionListener()
		{
			  public void actionPerformed(ActionEvent e)
			  {
				  north.setBackground(Color.green);
				  south.setBackground(Color.green); 
			  }
		});
		
		blueMenuItem.addActionListener(new ActionListener()
		{
			  public void actionPerformed(ActionEvent e)
			  {
				  north.setBackground(Color.blue);
				  south.setBackground(Color.blue); 
			  }
		});
		
		whiteMenuItem.addActionListener(new ActionListener()
		{
			  public void actionPerformed(ActionEvent e)
			  {
				  north.setBackground(Color.white);
				  south.setBackground(Color.white); 
			  }
		});
	}   
}
