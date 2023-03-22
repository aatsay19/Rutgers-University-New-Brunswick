public class HadamardRecursion {

	public static void print(boolean[][] a) {
		

		String[][] b = new String[a.length][a.length];
		for (int i = 0; i < a.length; i++) {
			for (int j = 0; j < a.length; j++) {
				b[i][j] = Boolean.toString(a[i][j]);
				if (b[i][j] == "true") {
					b[i][j] = "T";
				}
				else {
					b[i][j] = "F";
				}
			}
		}

		for (int i = 0; i < a.length; i++) {
			for (int j = 0; j < a[i].length; j++) {
				System.out.print(b[i][j] + " ");
			}
			System.out.println();
		}
	}
	
	public static boolean[][] hadamard(boolean a[][]) {
		return hadamard(a, 0, 0, a.length, true);
	}

	public static boolean[][] hadamard(boolean[][] a, int x, int y, int size, boolean value) {
		if (size == 1)
			a[x][y] = value;
		else {
			a = hadamard(a, x, y, size / 2, value);
			a = hadamard(a,  x + size / 2, y, size / 2, value);
			a = hadamard(a, x, y + size / 2, size / 2, value);
			a = hadamard(a, x + size / 2, y + size / 2, size / 2, !value);
		}
		return a;
	}

	public static void main(String[] args) {

		int n = Integer.parseInt(args[0]);
		boolean[][] a = new boolean[n][n];
		print(hadamard(a));

	}

}