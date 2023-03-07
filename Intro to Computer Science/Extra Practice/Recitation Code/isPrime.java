public class isPrime {

	public static void main(String[] args) {

		int n = Integer.parseInt(args[0]);
		StdOut.println(isPrime(n));

	}

	public static boolean isPrime(int x) {
		// We start our loop at 2, since all numbers are divisible by 1.
		for (int i = 2; i < x; i++) {
			if (x % i == 0) return false;
		}
		return true;
	}

}