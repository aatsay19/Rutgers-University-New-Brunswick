public class FactorialR {
	
	public static int factorial(int n) {
		if (n == 1) return 1;
		else
			return n * factorial(n - 1);
	}

	public static void main(String[] args) {

		int n = Integer.parseInt(args[0]);
		StdOut.println(factorial(n));
		
	}

}