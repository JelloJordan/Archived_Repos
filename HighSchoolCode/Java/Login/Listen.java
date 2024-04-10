import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;

public class Listen
{
	//panels
	JPanel top = new JPanel();
	JPanel bottom = new JPanel();
	//button
	JButton logIn = new JButton("Bold");
	//text field
	JTextField userName = new JTextField();
	JTextField password = new JTextField();

	public void Listen()
	{	
		logIn.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e)
			  {
			
			  }});
	}
}
