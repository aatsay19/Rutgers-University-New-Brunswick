public class MatrixOnesAndZeros {
	
	public static void main(String[] args) {

		int[][] arr = new int[][];
		int zeroCount = 0;
		int oneCount = 0;

		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				if (arr[i][j] == 0) {
					zeroCount++;
				}
				if (arr[i][j] == 1) {
					oneCount++;
				}
			}
		}
		System.out.println("There are " + zeroCount + " zeros and " + oneCount + " ones in this 2D matrix.");
	}

}