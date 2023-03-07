/*************************************************************************
 *  Compilation:  javac WCS111FM.java
 *  Execution:    java WCS111FM 53
 *
 *  The program takes the number of hours the listener spends
 *  programming as an int argument. Based on the number of hours spent
 *  programming, display the listener prize
 *
 *  @author: Aatif Sayed
 *
 *  % java WCS111FM 3
 *  T-shirt
 *
 *  % java WCS111FM 9
 *  Laptop
 *  TV
 * 
 *  % java WCS111FM 0
 *  Nothing
 *
 *************************************************************************/

public class WCS111FM {

    public static void main(String[] args) {

		int hours = Integer.parseInt(args[0]);

		String prize = "";
		if (hours == 0) {
			prize = "Nothing";
		}
		else if (hours >= 1 && hours <= 5) {
			prize = "T-shirt";
		}
		else if (hours >= 6 && hours <= 400) {
			if ((hours + 1) % 10 == 0) {
				prize = "Laptop";
			}
			if (hours % 2 == 0) {
				if (prize == "") {
					prize = prize + "Hat";
				}
				else {
					prize = prize + "\nHat";
				}
			}
			if (hours % 3 == 0) {
				if (prize == "") {
					prize = prize + "TV";
				}
				else {
					prize = prize + "\nTV";
				}
			}
		}
		else {
			prize = "Cat";
		}

		System.out.println(prize);

    }

}
