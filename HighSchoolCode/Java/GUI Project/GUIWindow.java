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
		this.setJMenuBar(l.menuBar);
		this.setVisible(true);
		this.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		l.console.setLineWrap(true);
		this.setResizable(false);
		cp.setLayout(new GridLayout(1,3));
		Font Serif = new Font("Serif", Font.PLAIN, l.fontSize);
		l.console.setFont(Serif);
		//add  items to menu
		l.fileMenu.add(l.saveItem);
		l.fileMenu.add(l.loadItem);
		l.fileMenu.add(l.quitItem);
		l.editMenu.add(l.undoItem);
		l.editMenu.add(l.redoItem);
		l.editMenu.add(l.clearItem);
		l.helpMenu.add(l.aboutItem);
		l.helpMenu.add(l.helpItem);
		l.helpMenu.add(l.optionsItem);
		//add menu to menu bar
		l.menuBar.add(l.fileMenu);
		l.menuBar.add(l.editMenu);
		l.menuBar.add(l.helpMenu);
		//add to cp
		cp.add(l.left);
		cp.add(l.middle);
		cp.add(l.right);
		//add to panels
		l.left.setLayout(new FlowLayout(FlowLayout.LEFT));
		l.middle.setLayout(new GridLayout(1,1));
		l.middle.add(l.console);
		l.right.setLayout(new FlowLayout(FlowLayout.RIGHT));
		l.right.add(l.boldButton);
		l.left.add(l.fontupButton);
		l.left.add(l.fontdownButton);
		l.left.add(l.fontType);
	}
}
