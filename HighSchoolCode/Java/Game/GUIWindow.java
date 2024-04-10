import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class GUIWindow extends JFrame
{
	//variables
	private int x,y,width,height;
	private int far,cel,kel;
	private String temp;
	
	private JPanel top = new JPanel();
	private JPanel middle = new JPanel();
	private JPanel bottom = new JPanel();
	
	JTextField FAR = new JTextField(10);
	JTextField CEL = new JTextField(10);
	JTextField KEL = new JTextField(10);
	
	JLabel JFAR = new JLabel("Fahrenheit");
	JLabel JCEL = new JLabel("Celsius");
	JLabel JKEL = new JLabel("Kelvin");
	
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
		
		cp.setLayout(new GridLayout(3,1));

		cp.add(top);
		cp.add(middle);
		cp.add(bottom);
		
		top.add(JFAR);
		middle.add(JCEL);
		bottom.add(JKEL);
		
		top.add(FAR);
		middle.add(CEL);
		bottom.add(KEL);
		
		//listener
		FAR.addActionListener(new ActionListener()
		{ 
			  public void actionPerformed(ActionEvent e)
			  {
				  temp = FAR.getText();
				  far = Integer.parseInt(temp);
				  CEL.setText(String.valueOf(((far - 32) * 5) / 9));
				  KEL.setText(String.valueOf((far - 32) * 5 / 9 + 273.15));
			  }
		});
		
		CEL.addActionListener(new ActionListener()
		{ 
			  public void actionPerformed(ActionEvent e)
			  {
				  temp = CEL.getText();
				  cel = Integer.parseInt(temp);
				  FAR.setText(String.valueOf(cel * 1.8 + 32));
				  KEL.setText(String.valueOf(cel + 273.15));
			  }
		});
		
		KEL.addActionListener(new ActionListener()
		{ 
			  public void actionPerformed(ActionEvent e)
			  {
				  temp = KEL.getText();
				  kel = Integer.parseInt(temp);
				  CEL.setText(String.valueOf(kel - 273.15));
				  FAR.setText(String.valueOf(kel * 9/5 - 459.67));
			  }
		});
	}	
}
