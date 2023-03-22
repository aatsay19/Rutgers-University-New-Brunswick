public class RecursivePrinting {
	
	public static void main(String[] args) {
		int n = Integer.parseInt(args[0]);
//		for (int i = 0; i < n; i++)
//			printStars(i);
		printStarsR(n);
	}

	public static void printStars(int n) {
		for (int i = 0; i < n; i++) {
			StdOut.print("*");
		}
		StdOut.println();
	}

	public static void printStarsR(int n) {
		for (int i = 0; i < n; i++) {
			StdOut.print("*");
		}
		StdOut.println();
		if (n > 1)
			printStarsR(n - 1);
	}

}