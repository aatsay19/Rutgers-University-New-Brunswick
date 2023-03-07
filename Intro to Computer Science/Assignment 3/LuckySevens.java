/*************************************************************************
 *  Compilation:  javac LuckySevens.java
 *  Execution:    java LuckySevens 421
 *
 *  @author: Aatif Sayed
 *
 * LuckySevens takes an int as a command-line argument and displays
 * how many digits in the integer number are 7s.  
 *
 * Note: the number can be negative.
 *
 *  % java LuckySevens 3482
 *  0
 *
 *  % java LuckySevens 372777
 *  4
 * 
 *  % java LuckySevens -2378272
 *  2
 *
 *************************************************************************/

public class LuckySevens {

    public static void main(String[] args) {

		int n = Integer.parseInt(args[0]);

		int numSevens = 0;

		while (n != 0) {
			if (n % 10 == 7 || n % 10 == -7) {
				numSevens++;
			}
			n = n / 10;
		}

		System.out.println(numSevens);

    }

}