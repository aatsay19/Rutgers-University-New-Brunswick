public class RecursiveFibonacci {
	
	public static void main(String[] args) {

		int a = Integer.parseInt(args[0]);
		System.out.println(fib(a));

	}

	public static int fib(int n) {
		if (n <= 2) return 1;
		return fib(n - 2) + fib(n - 1);
	}

}