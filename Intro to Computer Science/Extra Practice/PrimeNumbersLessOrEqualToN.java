public class PrimeNumbersLessOrEqualToN

	public static void main(String[] args) {

		int n = Integer.parseInt(args[0]);
		int count = 0;
		for (int p = 2; p <= n; p++) {
			boolean isprime = true;
			for (int i = 2; i < p; i++) {
				if (p % i == 0)
					isprime = false;
			}
			if (isprime)
				count++;
		}
		StdOut.println(count);

	}

}