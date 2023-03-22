/*************************************************************************
 *  Compilation:  javac WCS111FM.java
 *  Execution:    java WCS111FM 53
 *
 *  The program takes the number of hours the listener spends
 *  programming as an int argument. Based on the number of hours spent
 *  programming, display the listener prize
 *
 *  @author: Aatif Sayed
 *  E-mail: aatifsayed9@gmail.com
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

        /* Check that exactly 1 command-line argument is provided; no more, no less.
           If not, display error message and terminate program. */
        if (args.length != 1) {
            System.out.println("USAGE ERROR: Program must have exactly 1 command-line argument " +
                    "input: [hours_spent_programming (int)]");
            System.out.println("Terminating program...");
            return;
        }

        int hours;

        /* Input validation: check if the first command-line argument provided is not an integer. 
           If it is not an integer, display error message and terminate program. Otherwise, parse
           the value from command-line argument. */
        try {
            hours = Integer.parseInt(args[0]);
        }
        catch (Exception exception) {
            System.out.println("INPUT ERROR: Non-integer detected for hours_spent_programming");
            System.out.println("Terminating program...");
            return;
        }

        String prize = "";

        if (hours == 0)
            prize = "Nothing";
        else if (hours >= 1 && hours <= 5)
            prize = "T-shirt";
        else if (hours >= 6 && hours <= 400) {
            if ((hours + 1) % 10 == 0)
                prize = "Laptop";
            if (hours % 2 == 0) {
                if (prize == "")
                    prize += "Hat";
                else
                    prize += "\nHat";
            }
            if (hours % 3 == 0) {
                if (prize == "")
                    prize += "TV";
                else
                    prize += "\nTV";
            }
        }
        else
            prize = "Cat";

        System.out.println(prize);

    }

}