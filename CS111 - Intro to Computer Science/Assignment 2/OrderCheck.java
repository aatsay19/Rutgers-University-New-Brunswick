/*************************************************************************
 *  Compilation:  javac OrderCheck.java
 *  Execution:    java OrderCheck 5 10 15 2
 *
 *  @author: Aatif Sayed
 *  E-mail:  aatifsayed9@gmail.com
 *
 *  This program takes four integer command-line arguments and displays 
 *  "true" if the four integer inputs are in strictly ascending order or 
 *  strictly descending order. It displays "false" otherwise.
 *
 *  % java OrderCheck 5 10 15 2
 *  false
 *
 *  % java OrderCheck 15 11 9 4
 *  true
 *************************************************************************/

public class OrderCheck {

    public static void main(String[] args) {

        /* Check that exactly 4 integer command-line arguments are provided; no more, no less.
           If not, display error message and terminate program. */
        if (args.length != 4) {
            System.out.println("USAGE ERROR: Program must have exactly 4 integer command-line " +
                    "argument inputs: [number_1 (int)] [number_2 (int)] [number_3 (int)] " +
                    "[number_4 (integer)]");
            System.out.println("Terminating program...");
            return;
        }

        int[] ints = new int[4];

        /* Input validation: check if any of the command-line arguments provided are not integers.
           If any non-integer input is found, display error message and terminate program. Otherwise, 
           parse the integers from command-line arguments and store it into an integer array. */
        for (int i = 0; i < 4; i++) {
            try {
                ints[i] = Integer.parseInt(args[i]);
            }
            catch (Exception exception) {
                System.out.println("INPUT ERROR: Non-integer detected for number " + (i + 1));
                System.out.println("Terminating program...");
                return;
            }
        }

        /* Check if the integers are in either strictly ascending or strictly descending order.
           Store value in a boolean variable */
        boolean strictlyAscendingOrDescending;
        strictlyAscendingOrDescending = ((ints[0] < ints[1]) && (ints[1] < ints[2]) && (ints[2] < ints[3])) || 
                                        ((ints[0] > ints[1]) && (ints[1] > ints[2]) && (ints[2] > ints[3]));
        System.out.println(strictlyAscendingOrDescending);

    }

}