public class ArrayAverage {
	
	public static void main(String[] args) {

		int[] arr = new int[args.length];
		for (int i = 0; i < args.length; i++) {
			int n = Integer.parseInt(args[i]);
			arr[i] = n;
		}

		double sum = 0;

		for (int i = 0; i < arr.length; i++) {
			sum += arr[i];
		}

		System.out.println(sum / arr.length);

	}

}