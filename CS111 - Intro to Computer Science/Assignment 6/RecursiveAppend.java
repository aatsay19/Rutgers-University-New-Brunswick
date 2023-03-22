/*************************************************************************
 *  Compilation:  javac RecursiveAppend.java
 *  Execution:    java RecursiveAppend
 *
 *  @author: Aatif Sayed
 * 			 Email: as3259@scarletmail.rutgers.edu
 *			 NetID: as3259
 *
 *************************************************************************/

public class RecursiveAppend {

    // Returns the original string appended to the original string n times 
    public static String appendNTimes (String original, int n) {
    	if (n == 0) return original;
    	return original + appendNTimes(original, n - 1);
    }

    public static void main (String[] args) {
    	String string = args[0];
    	int a = Integer.parseInt(args[1]);

    	System.out.println(appendNTimes(string, a));
    }
}