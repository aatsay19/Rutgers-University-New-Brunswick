/********************************************************
*  Compilation: javac NumbersInOrder.java
*  Execution: java NumbersInOrder
*
*  @author: Aatif Sayed
*
*  Given 3 integers, write a program that prints TRUE if
*  a < b < c and prints FALSE otherwise
*
*  % java NumbersInOrder 12 20 45
*  TRUE
*  % java NumbersInOrder 20 12 67
*  FALSE
*
********************************************************/

public class NumbersInOrder {
	public static void main(String[] args) {
		int a = Integer.parseInt(args[0]);
		int b = Integer.parseInt(args[1]);
		int c = Integer.parseInt(args[2]);
		boolean p = (a < b) && (b < c);
		System.out.println(p);
	}
}