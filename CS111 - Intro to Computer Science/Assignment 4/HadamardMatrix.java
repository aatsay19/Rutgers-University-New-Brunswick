/*************************************************************************
 *  Compilation:  javac HadamardMatrix.java
 *  Execution:    java HadamardMatrix 2
 *
 *  @author: Aatif Sayed
 *			 NetID: as3259
 *			 Email: as3259@scarletmail.rutgers.edu
 *
 * The program HadamardMatrix prints H(n)
 *
 *  % java HadamardMatrix 2
 *  T T
 *  T F
 *
 *************************************************************************/

public class HadamardMatrix {

    public static void main(String[] args) {

    	int n = Integer.parseInt(args[0]);
    	boolean[][] matrix = new boolean[n][n];

    	matrix[0][0] = true;

    	for (int i = 1; i < n; i = i + i) {
    		for (int j = 0; j < i; j++) {
    			for (int k = 0; k < i; k++) {
    				matrix[j + i][k] = matrix[j][k];
    				matrix[j][k + i] = matrix[j][k];
    				matrix[j + i][k + i] = !matrix[j][k];
    			}
    		}
    	}

    	String[][] result = new String[n][n]; 

		for (int i = 0; i < n; i++) {
			for (int j = 0; j < n; j++) {
				result[i][j] = Boolean.toString(matrix[i][j]);
				if (result[i][j] == "true") {
					result[i][j] = "T";
				}
				else {
					result[i][j] = "F";
				}
			}
		}

    	printMatrix(result, n);

    }

    public static void printMatrix(String[][] a, int m) {
		
		for (int i = 0; i < m; i++) {
			for (int j = 0; j < m; j++) {
				System.out.print(a[i][j] + " ");
			}
			System.out.println();
		}

	}   
}