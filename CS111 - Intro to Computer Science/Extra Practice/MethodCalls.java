public class MethodCalls {
	
	public static void main(String[] args) {

		StdOut.println(doubleInt(sum(product(3, 5), product(4, 2))));

	}

	public static int sum(int x, int y) {
		return x + y;
	}

	public static int product(int x, int y) {
		return x * y;
	}

	public static int doubleInt(int x) {
		return 2 * x;
	}
}