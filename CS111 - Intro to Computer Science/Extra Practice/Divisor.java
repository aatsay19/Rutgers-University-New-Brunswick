// READ n
// SET divisor to 2
// WHILE divisor < n
	// IF n % divisor IS 0 THEN
		// DISPLAY divisor
	// ENDIF
	// ADD 1 to divisor
// ENDWHILE

public class Divisors {
	public static void main(String[] args) {
		int n = Integer.parseInt(args[0]);
		int divisor = 2;
		while (divisor < n) {
			if (n % divisor == 0) {
				System.out.println(divisor);
			}
			divisor++;
		}
	}
}