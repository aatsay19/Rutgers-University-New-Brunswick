/*************************************************************************
 *  Compilation:  javac WindChill.java
 *  Execution:    java WindChill 35.0 10.0
 *
 *  @author: Aatif Sayed
 *  E-mail:  aatifsayed9@gmail.com
 *
 *  Program that takes two double command-line arguments, temperature
 *  (in Farenheit) and velocity (in mph), and prints the wind chill
 *  (a double) according to the following formula:
 *
 *  w = 35.74 + 0.6215*T + (0.4275*T - 35.75) * v^0.16
 *
 *  % java WindChill 35.0 10.0
 *  Wind Chill: 27.445 degrees Farenheit
 *
 *  The formula is not valid if T is larger than 50 in absolute value or if
 *  v is larger than 120 or less than 3.
 *************************************************************************/

public class WindChill {

    public static void main(String[] args) {

        /* Check that exactly 2 numerical command-line arguments are provided; no more, no less.
           If not, display error message on console and terminate program. */
        if (args.length != 2) {
            System.out.println("USAGE ERROR: Program must have exactly 2 numerical command-line argument inputs: [temperature] [velocity]");
            System.out.println("Terminating program...");
            return;
        }

        double[] numbers = new double[2];

        /* Input validation: check if any of the command-line arguments provided are not integers.
           If any non-numeric input is found, display error message and terminate program. Otherwise
           parse the number from command-line arguments and store it into a double array. */
        for (int i = 0; i < 2; i++) {
            try {
                numbers[i] = Double.parseDouble(args[i]);
            }
            catch (Exception exception) {
                if (i == 0)
                    System.out.println("INPUT ERROR: Non-numeric temperature detected");
                if (i == 1)
                    System.out.println("INPUT ERROR: Non-numeric velocity detected");
                System.out.println("Terminating program...");
                return;
            }
        }

        double temperature = numbers[0];
        double velocity = numbers[1];

        /* Check if wind chill formula becomes invalid due to temperature or velocity being out of the
           acceptable range. The formula is invalid if T is larger than 50 in absolute value or if v
           is larger than 120 or less than 3. If the formula becomes invalid, display error message
           and terminate program. */
        if (Math.abs(temperature) > 50) {
            System.out.println("RANGE ERROR: Temperature must be between -50 and 50 degrees Farenheit");
            System.out.println("Terminating program...");
            return;
        }
        if (velocity < 3 || velocity > 120) {
            System.out.println("RANGE ERROR: Velocity must be between 3 and 120 mph");
            System.out.println("Terminating program...");
            return;
        }

        // Calculate wind chill from given formula and display it (formatted to 3 decimal places)
        double windChill = (35.74 + 0.6215 * temperature + (0.4275 * temperature - 35.75) * Math.pow(velocity, 0.16));
        System.out.println("Wind Chill: " + String.format("%.3f", windChill) + " degrees Farenheit");

    }

}