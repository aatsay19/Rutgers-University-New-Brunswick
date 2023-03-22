public class SimplifyFraction {
	
	public static void main(String[] args) {

		int numerator = StdIn.readInt();
		int denominator = StdIn.readInt();

		while (denominator == 0) {
			System.out.println("Denominator can't be 0");
			denominator = StdIn.readInt();
		}

		int gcf = Methods.gcf(numerator, denominator);
		numerator /= gcf;
		denominator /= gcf;
		System.out.println(numerator + "/" + denominator);
	}

}