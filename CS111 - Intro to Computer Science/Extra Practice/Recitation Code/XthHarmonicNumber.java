public class XthHarmonicNumber {
	
	public static void main(String[] args) {

		int a = Integer.parseInt(args[0]);
		System.out.println(harmonic(a));

	}

	public static double harmonic(int x) {
		if (x == 1) return 1;
		return 1 / x + harmonic(x - 1);
	}

}