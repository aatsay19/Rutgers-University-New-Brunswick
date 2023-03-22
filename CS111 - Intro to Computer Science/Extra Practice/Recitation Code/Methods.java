public class Methods {
	
	public static int gcf(int a, int b) {
		int smaller = a;
		if (a > b) {
			smaller = b;
		}

		for (int i = smaller; i > 1; i--) {
			if (a % i == 0 && b % i == 0) {
				return i;
			}
		}

		return 1;
	}

}