public class RecursiveFactorial {
	
	public static void main(String[] args) {

		int a = Integer.parseInt(args[0]);
		System.out.println(factorial(a));

	}

	public static int factorial(int n) {
		if (n == 0) return 1;
		return n * factorial(n - 1);
	}

}