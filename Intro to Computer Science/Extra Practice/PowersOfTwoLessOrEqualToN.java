public class PowersOfTwoLessOrEqualToN {
	
	public static void main(String[] args) {

		int n = Integer.parseInt(args[0]);
		int power = 0;

		while(Math.pow(2, power) <= n) {
			StdOut.print(Math.pow(2, power) + " ");
			power++;
		}

	}

}