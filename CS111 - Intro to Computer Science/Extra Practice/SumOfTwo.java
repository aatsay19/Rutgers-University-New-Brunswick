/********************************************************
*  Compilation: javac SumOfTwo.java
*  Execution: java SumOfTwo
*
*  @author: Aatif Sayed
*
*  Given 3 integers, write a program that prints TRUE if
*  any one integer is greater than the sum of the other 
*  two.
*
*  % java SumOfTwo 12 20 45
*  TRUE
*  % java SumOfTwo 20 12 15
*  FALSE
*
********************************************************/

public class SumOfTwo {
	public static void main(String[] args) {
		int a = Integer.parseInt(args[0]);
		int b = Integer.parseInt(args[1]);
		int c = Integer.parseInt(args[2]);
		boolean p = (a > b + c) || (b > a + c) || (c > a + b);
		System.out.println(p);
	}
}