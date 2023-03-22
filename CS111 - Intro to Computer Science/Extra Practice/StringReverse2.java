public class StringReverse2 {
	public static String reverseR(String s) {
		if (s.length() == 0) return "";
		else {
			String tail = s.substring(1, s.length());
			return reverseR(tail) + s.charAt(0);
		}
	}

	public static void main(String[] args) {
		StdOut.println(reverseR(args[0]));
	}
}