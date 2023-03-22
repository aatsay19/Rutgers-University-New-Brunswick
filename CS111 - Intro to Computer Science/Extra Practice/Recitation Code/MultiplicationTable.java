public class MultiplicationTable {
	
	public static void main(String[] args) {
		int a = Integer.parseInt(args[0]);
		printTable(a);
	}

	public static void printTable(int n) {
		int[][] table = new int[n][n];
		for (int i = 0; i < n; i++) {
			table[0][i] = i + 1;
		}
		for (int i = 0; i < n; i++) {
			table[i][0] = i + 1;
		}
		for (int i = 1; i < n; i++) {
			for (int j = 1; j < n; j++) {
				table[i][j] = (table[i][0] * table[0][j]);
			}
		}
		for (int i = 0; i < n; i++) {
			for (int j = 0; j < n; j++) {
				StdOut.print(table[i][j] + "\t");
			}
			StdOut.println();
		}
	}

}