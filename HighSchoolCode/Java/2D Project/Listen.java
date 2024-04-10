import java.awt.Color;

import javax.swing.*;

public class Listen
{
	
	int i = 100;
	//panels
	JPanel object = new JPanel();
	public void Update()
	{
		i = i + 25;
		object.setLocation(i, i);
		object.setBackground(Color.blue);
		System.out.println("Updated");
		
	}
	public void Listen()
	{	
	}
}
