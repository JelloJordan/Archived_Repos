import javax.swing.*;
import java.util.TimerTask;
import java.util.Timer;
import java.util.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class GUIWindow extends JFrame
{
	//variables
	private int x,y,width,height;
	private JPanel scene = new JPanel();
			JTextArea console = new JTextArea();
	private JPanel chat = new JPanel();
	private JPanel button = new JPanel();
	private JPanel talk = new JPanel();
	private JButton test = new JButton("Test");
	private JButton clear = new JButton("Clear");
	private JButton quit = new JButton("Quit");
	private JLabel counter = new JLabel("0");
	private JButton zero = new JButton("Click");
	private JTextField input = new JTextField(10);
	
	int i = 0;
	int label = 0;
    int score = 0;
	
	
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
	
	public GUIWindow(String title)
	{
		super(title);
		init();
	}

	public void init()
	{
		//initiate important things
		console.setEditable(false);
		Container cp = this.getContentPane();
		Timer timer = new Timer();
		
		//create objects
		cp.setLayout(null);
		cp.add(talk);
		cp.add(input);
		cp.add(button);
		cp.add(chat);
		cp.add(scene);
		cp.add(test);
		cp.add(clear);
		cp.add(quit);
		cp.add(counter);
		//set size of panels
		cp.setBackground(Color.yellow);
	    scene.setBounds(0, 0, 1000, 681);	scene.setBackground(Color.RED);
	    button.setBounds(1000, 0, 280, 40);	button.setBackground(Color.BLUE);
	    chat.setBounds(1000, 40, 280, 641);	chat.setBackground(Color.GREEN);
	    //talk.setBackground(Color.RED);
	    //talk.setBounds(1000, 620 ,100, 30);
	    //button Panel
	    button.setLayout(new FlowLayout());
	    button.add(test);
	    button.add(clear);
	    button.add(quit);
	    //chat Panel
	    chat.setLayout(new GridLayout(1,1));
	    chat.add(console);
	    //scene Panel
	    scene.add(counter);
	    scene.add(zero);
	    talk.add(input);
	    timer.schedule(new TimerTask() 
		  {
			    public void run() 
			    {  
			    	 label++;
			    	 score++;
			    	 counter.setText(String.valueOf(label));
			    	 if(label == 10)
			    	 {
			    		 console.append("You Lose\n");
			    		 console.append("Your highscore was " + String.valueOf(score));
			    		 console.append("\n");
			    	 }
					 
			    }
		  }, 0, 1000);  
	    
	    //Listener
	    
	    test.addActionListener(new ActionListener()
		{
			  public void actionPerformed(ActionEvent e)
			  {
				  i++;
				  String str = new String(i + "\n");
				  console.append(str);
			  }
		});
	    
	    clear.addActionListener(new ActionListener()
		{
			  public void actionPerformed(ActionEvent e)
			  {
				  console.setText(null);
			  }
		});
	    
	    quit.addActionListener(new ActionListener()
		{
			  public void actionPerformed(ActionEvent e)
			  {
				  System.exit(0);
			  }
		});
	 
	    zero.addActionListener(new ActionListener()
		{
			  public void actionPerformed(ActionEvent e)
			  {
				  label = 0;
				  counter.setText("0");
			  }
		});
	}
}
