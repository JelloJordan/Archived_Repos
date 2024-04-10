/* 
    NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   2/1/2017

	When you place this game you roll 3 dice and it acts like a slot machine, 
	if you roll 3 of the same you get your bet back times the amount your rolled. 
	if you roll a 1 anywhere you get an additional $10.
	
	What I Learned :
	How to use two class files together
	How to create my own methods
	How to use a return statement
	
	What I Need To Do :
	I need to do a large amount of error trapping
	I would like to optimize parts of my code and add different rewards
	
	
    		
 */

public class Dicegame
{
	public static void main(String[] args) 
	{
		Dice slots = new Dice();
		slots.rules();
		while (slots.exit <= 0)
		{
			slots.placeBet();
			slots.rollDice();
			slots.printDice();
			slots.scanRolls();
			slots.exit();
		}
		slots.checkBank();
	}
}
