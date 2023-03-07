public class Palindromes {
	
	public static void main(String[] args) {
		String s = new String(args[0]);
		System.out.println(isPalindrome(s));
	}

	public static boolean isPalindrome(String s) {
		// for (int i = 0; i < s.length() / 2; i++) {
		// 	if (s.charAt(i) != (s.charAt(s.length() - 1 - i))) {
		// 		return false;
		// 	}
		// }
		// return true;

		// String backwards = "";
		// for (int i = 0; i < s.length(); i++) {
		// 	backwards += s.charAt(s.length() - 1 - i);
		// }
		// if (s.equalsIgnoreCase(backwards)) {
		// 	return true;
		// }
		// return false;

// 		public static boolean palindrome2(String s) {

// 	int len = s.length();
// 	String s2 = s.toLowerCase();

// 	for(int i = 0; i < len/2; i++) {
// 		if(s2.charAt(i) != s2.charAt(len-1-i)) {
// 			return false;
// 		}
// 	}

// 	return true;
// }

// 		public static boolean palindrome3(String s) {
// 	int len = s.length();
// 	String s2 = s.toLowerCase();
// 	String s3 = "";

// 	for(int i = 0; i < len; i++){
// 		if(!Character.isSpaceChar(s2.charAt(i))){
// 			s3 += s2.charAt(i);
// 		}
// 	}

// 	int len2 = s3.length();

// 	for(int i = 0; i < len2/2; i++) {

// 		if(s3.charAt(i) != s3.charAt(len2-1-i)) {
// 			return false;
// 		}
// 	}

// 	return true;
// }
	}
}