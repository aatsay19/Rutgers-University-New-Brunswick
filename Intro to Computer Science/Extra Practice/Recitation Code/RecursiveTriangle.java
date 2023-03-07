public class RecursiveTriangle {
	
	public static void main(String[] args) {

		int a = Integer.parseInt(args[0]);
		pyramid(a);
		System.out.println();
		upsideDownPyramid(a);

	}

	public static void printRow(int nStars) {
		if (nStars == 0) {
			System.out.println();
			return;
		}
		System.out.print("*");
		printRow(nStars - 1);
	}

	public static void pyramid(int n) {
		if (n == 0) return;
		pyramid(n - 1);
		printRow(n);
	}

	public static void upsideDownPyramid(int n) {
		if (n == 0) return;
		printRow(n);
		upsideDownPyramid(n - 1);
	}

}