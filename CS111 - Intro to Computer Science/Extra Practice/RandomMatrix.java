public class RandomMatrix {
	
	public static void printMatrix(int[][] a, int n, int m) {
		for (int i = 0; i < n; i++) {
			for (int j = 0; j < m; j++) {
				StdOut.print(a[i][j] + " ");
			}
			StdOut.println();
		}
		StdOut.println();
	}

	public static void main(String args[]) {

		int n = Integer.parseInt(args[0]);
		// Assume n is a power of 2

		int[][] a1 = new int[n][n];
		for (int i = 0; i < n; i++) {
			for (int j = 0; j < n; j++) {
				a1[i][j] = (int)(100 * Math.random());
			}
		}

		// Call the printMatrix function
		printMatrix(a1, n, n);

		int[][] b = new int[n / 2][n / 2];
		for (int i = 0; i < n / 2; i++) {
			for (int j = 0; j < n / 2; j++) {
				b[i][j] = a1[i][j];
			}
		}

		printMatrix(b, n / 2, n / 2);

		int[][] c = new int[n / 2][n / 2];
		for (int i = 0; i < n / 2; i++) {
			for (int j = 0; j < n / 2; j++) {
				c[i][j] = a1[i][j + (n / 2)];
			}
		}
		printMatrix(c, n / 2, n / 2);

	}

}