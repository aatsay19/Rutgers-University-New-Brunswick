/********************************************************
*  Compilation: javac IsPrime.java
*  Execution: java IsPrime
*
*  @author: Aatif Sayed
*
*  Write a program that finds if a given integer is prime
*  or not
*
*  % java IsPrime 53
*  TRUE
*  % java IsPrime 20
*  FALSE
*
********************************************************/

public class IsPrime {
	public static void main(String[] args) {
		int n = Integer.parseInt(args[0]);
		boolean isprime = true;
		for (int i = 2; i < n; i++) {
			if (n % i == 0)
				isprime = false;
		}
		System.out.println(isprime);
	}
}