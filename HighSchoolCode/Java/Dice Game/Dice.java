/* 
    NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   3/17/2017

    PURPOSE:  To create a Dice Class
    It will contain all information about dice
 */

import cs1.Keyboard;

public class Dice
{

	//Variables
	int die1, die2 , die3;
	int bet, bank = 100, bonus = 0;
	char exit = 0;
	
	//Constructors
	public Dice(int newDie1, int newDie2 , int newDie3)
	{
		die1 = newDie1;
		die2 = newDie2;
		die3 = newDie3;
	}

	//rolls dice when it creates
	public Dice()
	{
		rollDice();
	}
	
	//Methods	
	
	public void rules()
	{
		System.out.println("3 Matching Numbers - - - - - - Bet * Your Roll");
		System.out.println("Rolling a 1 - - - - - - - - -  10 * Amount of 1's Rolled");
		System.out.println("");
	}
	
	//place bet
	public void placeBet()
	{
		checkBank();
		if (exit != 1)
		{
		System.out.println("You have $" + bank);	
		System.out.print("How much do you want to bet? ");
		}
		bet = Keyboard.readInt();
		if (bet > bank)
		{
			bet = bank;
		}
		if (bet == 0)
		{
			placeBet();
			
		}
	}
	
	//to roll the dice
	public void rollDice()
	{
		die1 = (int)(Math.random() * 6) +1;
		die2 = (int)(Math.random() * 6) +1;
		die3 = (int)(Math.random() * 6) +1;
	}
	
	//display all dice rolls
	public void printDice()
	{
		System.out.println(die1 +" "+ die2 +" "+ die3);
	}
	
	//checks balance of bank
	public void checkBank()
	{
		if (bank == 0)
		{
			exit = 1;
			System.out.println("Game Over");
		}
	}
	
	//decide prize of rolls
	public void scanRolls()
	{
		if (die1 == die2 && die2 == die3 && die1 == 1)
		{
			System.out.println("JACKPOT");
			bet = bet * 10;
			bank = bank + bet;
			System.out.println("You have $" + bank);	
		}
		else if (die1 == die2 && die2 == die3)
		{
			System.out.println("You Win");
			bet = bet * die1;
			bank = bank + bet;
			System.out.println("You have $" + bank);
		}
		else if (die1 == 1 || die2 == 1 || die3 == 1)
		{
			bonus = 0;
			if (die1 == 1)
			bonus++;
			if (die2 == 1)
			bonus ++;
			if (die3 == 1)
			bonus++;
		
			
			System.out.println("Bonus $" + bonus * 10);
			bank = bank + (10 * bonus);
			System.out.println("You have $" + bank);
		}
		else
		{
			System.out.println("You Lose");
			bank = bank - bet;
			System.out.println("You have $" + bank);
		}
		
	}
	
	//ask user if they want to end the program
	public void exit()
	{
		System.out.print("Do you want to continue? (Y/N) ");
		char temp = Keyboard.readChar();
		temp = Character.toUpperCase(temp);
		if (temp == 'N')
		{
			bank = 0;
			exit = 1;
			System.out.println("-----------------------------");
		}
		else if (temp == 'Y')
		{
			exit = 0;
			System.out.println("-----------------------------");
		}
	}
	
	//return the sum of the dice
	public int sumDice()
	{
		return die1 + die2;
	}
}
