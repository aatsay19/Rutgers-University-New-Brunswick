/*************************************************************************
 *  Compilation:  javac TrainTicket.java
 *  Execution:    java TrainTicket
 *
 *  @author: Aatif Sayed
 *  E-mail: aatifsayed9@gmail.com
 *
 *  This program takes two command-line arguments: an age (int) and a
 *  boolean referring to whether or not the ticket was bought at the
 *  train station (true = bought at station, false = bought on train).
 *  The program computes and displays the ticket price the person needs
 *  to pay for the train ride according to the following set of rules:
 *
 *    - Kids ride free (age < 7)
 *    - Senior citizens ride at a discounted price of $7.50 (age > 65)
 *    - Everyone else rides at the regular price of $13.20
 *    - If user entered "false" for train/station, then that means that
 *      the user bought the ticket on the train which implies a 20% extra
 *      charge added to the total price.
 *
 *  % java TrainTicket 23 true
 *  13.20
 *
 *  % java TrainTicket 23 false
 *  15.84
 *
 *  % java TrainTicket 230 false
 *  Illegal input
 *
 *************************************************************************/

public class TrainTicket {

    public static void main(String[] args) {

        /* Check that exactly 2 command-line arguments are provided; no more, no less.
           If not, display error message and terminate program. */
        if (args.length != 2) {
            System.out.println("USAGE ERROR: Program must have exactly 2 command-line argument " +
                    "inputs: [age (integer)] [train/station (\"true\"/\"false\")]");
            System.out.println("Terminating program...");
            return;
        }

        int age;
        boolean trainOrStation;

        /* Input validation: check if the first command-line argument provided is not an integer. 
           If it is not an integer, display error message and terminate program. Otherwise, parse
           the value from command-line argument. */
        try {
            age = Integer.parseInt(args[0]);
        }
        catch (Exception exception) {
            System.out.println("INPUT ERROR: Non-integer detected for age");
            System.out.println("Terminating program...");
            return;
        }

        /* Input validation: check if the second command-line argument provided is not a boolean.
           If any non-boolean input is found, display error message and terminate program. Otherwise
           parse the value from command-line arguments. */
        if (args[1].equals("true"))
            trainOrStation = true;
        else if (args[1].equals("false"))
            trainOrStation = false;
        else {
            System.out.println("INPUT ERROR: Non-boolean value detected for train/station. Input " +
                    "must be either \"true\" or \"false\"");
            System.out.println("Terminating program...");
            return;
        }

        double price;

        
        /* If the age is below 0 or greater than 120, display error message and terminate program. */
        if (age < 0 || age > 120) {
            System.out.println("VALUE ERROR: Age must be between 0 and 120");
            System.out.println("Terminating program...");
            return;
        }

        /* Calculate price based on the age and the aforementioned rules */
        else if (age < 7)
            price = 0;  // Kids ride free (age below 7)
        else if (age > 65)
            price = 7.50;  // Senior citizens ride at a discounted price of $7.50 (age above 65)
        else
            price = 13.20;  // Everyone else rides at the regular price of $13.20

        /* If user entered "false" for train/station, then that means that the user bought the 
           ticket on the train which implies a 20% extra charge added to the total price. */
        if (trainOrStation == false)
            price *= 1.2;

        // Display total price formatted to 2 decimal places
        System.out.printf("%.2f", price);

    }

}