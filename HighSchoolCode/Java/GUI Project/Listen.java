import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;
public class Listen
{
	//variables
	int fontSize = 14;
	String font = "Serif";
	int bold = Font.PLAIN;
	String[] undo = new String[3];
	String save;
	//panels
	JPanel left = new JPanel();
	JPanel middle = new JPanel();
	JPanel right = new JPanel();
	//menu bar
	JMenuBar menuBar = new JMenuBar();
	//menu
	JMenu fileMenu = new JMenu("File");
	JMenu editMenu = new JMenu("Edit");
	JMenu helpMenu = new JMenu("Help");
	//menu item
	JMenuItem quitItem = new JMenuItem("Quit");
	JMenuItem saveItem = new JMenuItem("Save");
	JMenuItem loadItem = new JMenuItem("Load");
	JMenuItem undoItem = new JMenuItem("Undo");
	JMenuItem redoItem = new JMenuItem("Redo");
	JMenuItem clearItem = new JMenuItem("Clear");
	JMenuItem aboutItem = new JMenuItem("About");
	JMenuItem helpItem = new JMenuItem("Help");
	JMenuItem optionsItem = new JMenuItem("Options");
	//button
	JButton fontupButton = new JButton("Font Up");
	JButton fontdownButton = new JButton("Font Down");
	JButton boldButton = new JButton("Bold");
	//text area
	JTextArea console = new JTextArea();
	//drop down menu
	String[] FontTypes = new String[] {"Serif","Comic Sans","Century","Times New Roman"};
	JComboBox fontType= new JComboBox(FontTypes);
	
	public void Listen()
	{	
		//FILE MENU
		quitItem.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e)
			  {
				  System.exit(1);
			  }});
		saveItem.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e)
			  {
			save = console.getText();
			System.out.println(save);
			  }});
		loadItem.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e)
			  {
			console.setText("");
			console.append(save);
			  }});
		//EDIT MENU
		undoItem.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e)
			  {
			JOptionPane.showMessageDialog(undoItem,"undone");
			  }});
		redoItem.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e)
			  {
			JOptionPane.showMessageDialog(redoItem,"redone");
			  }});
		clearItem.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e)
			  {
			console.setText("");
			  }});
		//HELP MENU
		aboutItem.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e)
			  {
			
			String str = "This is a word processor\n";
			str += "that was compiled in Eclipse\n";
			str += "\n";
			str += "Programmed By\n";
			str += "Jordan Millett\n";
			ImageIcon icon = new ImageIcon("bin/Jordan.png");
			JOptionPane.showMessageDialog(aboutItem,str, "About",JOptionPane.INFORMATION_MESSAGE,icon);
			
			  }});
		helpItem.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e)
			  {
			JOptionPane.showMessageDialog(helpItem,"help");
			  }});
		optionsItem.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e)
			  {
			JOptionPane.showMessageDialog(optionsItem,"options");
			  }});
		//FONTS
		fontupButton.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e)
			  {
			Font myFont = new Font(font, bold, fontSize = fontSize + 2);
			console.setFont(myFont);
			  }});
		fontdownButton.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e)
			  {
			Font myFont = new Font(font, bold, fontSize = fontSize - 2);
			console.setFont(myFont);
			  }});
		fontType.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e)
		  {
			font = fontType.getSelectedItem().toString();
			System.out.println(font);
			Font myFont = new Font(font, bold, fontSize);
			console.setFont(myFont);
		  }});
		boldButton.addActionListener(new ActionListener()
		{public void actionPerformed(ActionEvent e)
		  {
			if(bold == Font.PLAIN)
			{
				bold = Font.BOLD;
				System.out.println("Bold");
			}
			else if(bold == Font.BOLD)
			{
				bold = Font.PLAIN;
				System.out.println("Normal");
			}
			Font myFont = new Font(font, bold, fontSize);
			console.setFont(myFont);
		  }});
	}
}
