import java.util.Scanner;

public class ArrayConcatenation {
	
	public static void main(String[] args) {

		int[] a = new int[];
		int[] b = new int[];

		int[] c = new int[a.length + b.length];
		int index = 0;

		for (int i = 0; i < a.length; i++) {
			c[index] = a[i];
			index++;
		}
		for (int i = 0; j < b.length; i++) {
			c[index] = b[i];
			index++;
		}
		for (int i = 0; i < result.length; i++) {
			System.out.print(result[i] + " ");
		}

	}

}