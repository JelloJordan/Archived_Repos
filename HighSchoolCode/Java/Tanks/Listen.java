import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;

public class Listen
{
	//objects
	Main m = new Main();
	TankArray t = new TankArray();
	//panels
	JPanel main = new JPanel();
	JPanel input = new JPanel();
	//text area
	JTextArea console = new JTextArea();
	//text field
	JTextField country = new JTextField(10);
	JTextField type = new JTextField(10);
	JTextField name = new JTextField(10);
	JTextField crew = new JTextField(10);
	JTextField weight = new JTextField(10);
	//button
	JButton submit = new JButton("Submit");
	//menu bar
	JMenuBar menuBar = new JMenuBar();
	//menu
	JMenu sortMenu = new JMenu("Sort");
	//menu item
	JMenuItem weightItem = new JMenuItem("Weight");
	

	public void Listen()
	{	
		submit.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e)
			  {
			if(
			country.getText().isEmpty() & type.getText().isEmpty() & name.getText().isEmpty() & 
			crew.getText().isEmpty() & weight.getText().isEmpty())
			{}else
			{
				m.country = country.getText();
				m.type = type.getText();
				m.name = name.getText();
				m.crew = Integer.parseInt(crew.getText());
				m.weight = Integer.parseInt(weight.getText());
				m.append();
				t.addAddress(m.name, m.country, m.type, m.crew , m.weight);
			}
			  }});
		weightItem.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e){
			t.sortWeight();
			  }});
		
	}
}
