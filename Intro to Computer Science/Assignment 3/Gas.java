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
 *  credit) , computes and displays the price a person will pay for gas
 *  at the gas station.
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

        /* Check that exactly 3 integer command-line arguments are provided; no more, no less.
           If not, display error message and terminate program. */
        if (args.length != 3) {
            System.out.println("USAGE ERROR: Program must have exactly 3 command-line argument inputs: [number_1] [number_2] [true/false]");
            System.out.println("Terminating program...");
            return;
        }

        double[] numbers = new double[2];

        /* Input validation: check if the first two command-line arguments provided are not numbers.
           If any non-numeric input is found, display error message and terminate program. Otherwise
           parse the number from command-line arguments and store it into a double array. */
        for (int i = 0; i < 2; i++) {
            try {
                numbers[i] = Double.parseDouble(args[0]);
            }
            catch (Exception exception) {
                System.out.println("INPUT ERROR: Non-numeric temperature detected");
                System.out.println("Terminating program...");
                return;
            }
        }

    	double pricePerGallon = Double.parseDouble(args[0]);
    	double numGallons = Double.parseDouble(args[1]);
    	boolean cashOrCredit = Boolean.parseBoolean(args[2]);
    	// If cashOrCredit is true, the user will pay by cash and if false, then by credit

    	if (pricePerGallon <= 0 || numGallons <= 0) {
    		System.out.println("Illegal input");
    		return;
    	}

    	double totalPrice = pricePerGallon * numGallons;

    	if (cashOrCredit == false) {
    		totalPrice = totalPrice * 1.1;
    	}

    	System.out.println(totalPrice);

    }

}