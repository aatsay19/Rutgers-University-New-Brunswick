public class NthColumnOfMatrix {
	
	public static void main(String[] args) {

		int n = Integer.parseInt(args[0]);

		int[][] arr = new int[][];
		int[][] result = new int[][];

		int[] col = new int[arr.length];

		for (int i = 0; i < arr.length; i++) {
			col[i] = a[i][n];
		}

		for (int j = 0; j < col.length; j++) {
			System.out.println(col[i] + " ");
		}

	}

}