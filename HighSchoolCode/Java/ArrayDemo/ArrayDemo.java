/* 
    NAME:   Jordan Millett
    CLASS:  Comp Sci 2
    DATE:   2/24/2017

    PURPOSE:  Build a class that deals with arrays.
    	Initialize , get input , output , calculations
    	Find and display the sum of the numbers
    	Find and display the average of the numbers
    	Find the Lowest
    	Find the Highest
 */

import cs1.Keyboard;

public class ArrayDemo {

	// constants

	final static int MAX = 5;

	// variables

	int[] scores = new int[MAX];
	int sum = 0;
	double ave;

	// methods

	public void initArray() {

		for (int index = 0; index < MAX; index++) {

			scores[index] = 0;
		}
	}

	public void getInput() {

		for (int index = 0; index < MAX; index++) {

			System.out.print("Enter score number " + index + " : ");
			scores[index] = Keyboard.readInt();
		}
	}

	public void getSum() {

		for (int index = 0; index < MAX; index++) {

			sum = sum + scores[index];
		}
	}

	public void getAve() {

		for (int index = 0; index < MAX; index++) {

			sum = sum + scores[index];
		}
		ave = sum / MAX;
	}

	public void outputArray() {

		for (int index = 0; index < MAX; index++) {

			System.out.println("Score number " + index + " = " + scores[index]);
		}
		System.out.println("The sum of the array is " + sum);
		System.out.println("The average is " + ave);
	}

	public static void main(String[] args) {

		ArrayDemo box = new ArrayDemo();
		box.initArray();
		box.getInput();
		box.getSum();
		box.getAve();
		box.outputArray();

		System.out.println("Score[3] is " + box.scores[3]);

	}

}
