/*************************************************************************
 *  Compilation:  javac Gas.java
 *  Execution:    java Gas 3.40 15.0 true
 *
 *  @author: Aatif Sayed
 *  E-mail:  aatifsayed9@gmail.com
 *
 *  This program takes three command-line arguments, the price per
 *  gallon, the number of gallons, and a boolean value to determine
 *  whether payment will be done via cash or card (true = cash, false =
 *  credit). It then computes and displays the price a person will pay 
 *  for gas at the gas station.
 *
 *  % java Gas 3.40 15.0 false
 *  56.1
 *
 *  % java Gas 3.40 15.0 true
 *  51.0
 *
 *************************************************************************/

public class Gas {

    public static void main(String[] args) {

        /* Check that exactly 3 command-line arguments are provided; no more, no less.
           If not, display error message and terminate program. */
        if (args.length != 3) {
            System.out.println("USAGE ERROR: Program must have exactly 3 command-line argument inputs: [price_per_gallon (double)] [number_of_gallons (double)] [cash/card (\"true\"/\"false\")]");
            System.out.println("Terminating program...");
            return;
        }

        double[] numbers = new double[2];

        /* Input validation: check if the first two command-line arguments provided are not numbers.
           If any non-numeric input is found, display error message and terminate program. Otherwise,
           parse the number from command-line arguments and store it into a double array. */
        for (int i = 0; i < 2; i++) {
            try {
                numbers[i] = Double.parseDouble(args[i]);
            }
            catch (Exception exception) {
                System.out.println("INPUT ERROR: Non-numeric temperature detected");
                System.out.println("Terminating program...");
                return;
            }
        }

        double pricePerGallon = numbers[0];
        double numGallons = numbers[1];
        boolean cashOrCredit;

        /* Input validation: check if the third command-line argument provided is not a boolean.
           If any non-boolean input is found, display error message and terminate program. Otherwise,
           parse the value from command-line arguments. */
        if (args[2].equals("true"))
            cashOrCredit = true;
        else if (args[2].equals("false"))
            cashOrCredit = false;
        else {
            System.out.println("INPUT ERROR: Non-boolean value detected for cash/card. Input must be either \"true\" or \"false\"");
            System.out.println("Terminating program...");
            return;
        }

        /* Input Validation: check that neither the price per gallon nor the number of gallons
           entered are <= 0. If any of them are, display the appropriate error message and
           terminate program. */
        if (pricePerGallon <= 0) {
            System.out.println("VALUE ERROR: The price per gallon cannot be less than or equal to zero.");
            System.out.println("Terminating program...");
            return;
        }
        if (numGallons <= 0) {
            System.out.println("VALUE ERROR: The number of gallons cannot be less than or equal to zero.");
            System.out.println("Terminating program...");
            return;
        }

        /* Compute total price as (price per gallon) multiplied by (number of gallons) */
        double totalPrice = pricePerGallon * numGallons;

        /* If user entered "false" for cash/credit, then that means that the user will pay
           via credit card which implies a 10% service charge added to the total price. */
        if (!cashOrCredit)
            totalPrice *= 1.1;

        /* Display total price */
        System.out.println(totalPrice);

    }

}