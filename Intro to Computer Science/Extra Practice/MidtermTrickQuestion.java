public class MidtermTrickQuestion {
	public static void halve3(int[] a) {
		int n = a.length;
		int[] b = new int[n/2];
		for (int i = 0; i < n/2; i++) 
			b[i] = a[i];
		a = b;
	}

	public static void main(String[] args) {
		int[] a = {16, 32, 48, 64};
		halve3(a);
		halve3(a);
		for (int i = 0; i < a.length; i++) {
			System.out.print(a[i] + " ");
		}
	}
}


// public int sequentialSearch(int[] arr, int x){
//     for(int i = 0; i < arr.length; i++){
//         if(arr[i] == x){
//             return i;
//         }
//     }
//     return -1;
// }

// [15, 2, 8, 1, 17, 5] //compare 1 to 15
// [15, 2, 8, 1, 17, 5] //compare 1 to 2
// [15, 2, 8, 1, 17, 5] //compare 1 to 8
// [15, 2, 8, 1, 17, 5] //compare 1 to 1 - found at index 3
// Best Case: O(1)
// Worst Case: O(n)
// Big O: O(n)