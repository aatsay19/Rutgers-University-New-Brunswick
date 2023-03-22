/********************************************************
*  Compilation: javac MaxOfTwo.java
*  Execution: java MaxOfJava
*
*  @author: Aatif Sayed
*
*  This program prints the order of the two integers as
*  ascending or descending
*
*  % java MaxOfTwo 12 20
*  Ascending
*  % java MaxOfTwo 20 12
*  Descending
*
********************************************************/

public class MaxOfTwo {
	public static void main(String[] args) {
		int a = Integer.parseInt(args[0]);
		int b = Integer.parseInt(args[1]);
		// not allowed to use if statement
		boolean p = (a > b);
		boolean q = (b > a);
		System.out.println("descending " + p);
		System.out.println("ascending " + q);
	}
}