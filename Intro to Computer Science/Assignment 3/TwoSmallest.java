/*************************************************************************
 *  Compilation:  javac TwoSmallest.java
 *  Execution:    java TwoSmallest 1.1 6.9 0.3
 *
 *  @author: Aatif Sayed
 *
 *  The program TwoSmallest takes a set of double command-line
 *  arguments and prints the smallest and second-smallest number, in that
 *  order. It is possible for the smallest and second-smallest numbers to
 *  be the same (if the sequence contains duplicate numbers).
 *
 *  Note: display one number per line
 *
 *  % java TwoSmallest 17.0 23.0 5.0 1.1 6.9 0.3
 *  0.3
 *  1.1
 *
 *  % java TwoSmallest 1.0 35.0 2.0 1.1 6.9 0.3 0.3 6.7
 *  0.3
 *  0.3
 *
 *************************************************************************/

public class TwoSmallest {

    public static void main(String[] args) {

    	int count = 0;
    	int list1size = args.length;
    	int list2size = list1size - 1;
   		double[] list1 = new double[list1size];
		double[] list2 = new double[list2size];

		for (int i = 0; i < list1size; i++) {
    		list1[i] = Double.parseDouble(args[i]);
    	}

    	double lowest = list1[0];

    	for (int j = 1; j < list1size; j++) {
    		if (list1[j] < lowest) {
    			lowest = list1[j];
    			count = j;
    		}
    	}

    	for (int k = 0; k < count; k++) {
    		list2[k] = list1[k];
    	}

    	for (int l = count; l < list2size; l++) {
    		list2[l] = list1[l + 1];
    	}

    	double secondLowest = list2[0];

    	for (int m = 1; m < list2size; m++) {
    		if (list2[m] < secondLowest) {
    			secondLowest = list2[m];
    		}
    	}

    	System.out.println(lowest);
    	System.out.println(secondLowest);

    }

}
