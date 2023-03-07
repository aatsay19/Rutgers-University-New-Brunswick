/*************************************************************************
 *  Compilation:  javac RunLengthEncoding.java
 *  Execution:    java RunLengthEncoding
 *
 *  @author: Aatif Sayed
 *           Email: as3259@scarletmail.rutgers.edu
 *           NetID: as3259
 *
 *************************************************************************

public class RunLengthEncoding {

    /* 
     * Encode the original string by finding sequences in the string
     * where the same character repeats. Replace each such sequence
     * by a token consisting of: the number of characters in the sequence
     * followed by the repeating character.
     * Return the encoded string.
     */
    public static String encode (String original)  {
        String original2 = "";
        for (int i = 0; i < original.length(); i++) {
            int count = 1;
            int j = i + 1;
            while (j < original.length() && original.charAt(i) == original.charAt(j)) {
                count++;
                j++;
            }
            if (count > 1) {
                    String token = Integer.toString(count) + original.charAt(i);
                    original2 += token;
                    i = i + count - 1;
            }
            else {
                original2 += original.charAt(i);
            }
        }
        return original2;
    }

    /*
     * Decodes the original string encoded with the encode method.
     * Returns the decoded string.
     *
     * YOUR decode METHOD MUST BE RECURSIVE, do not use while, do/while, 
     * or for loops
     */
    public static String decode (String original)  {
	    char a = original.charAt(0);
        if (original.length() == 1) {
            return original;
        }
        else if (Character.isDigit(a)) {
            if (a == '2') {
                return original.charAt(1) + decode(original.substring(1));
            }
            else {
                a--;
                return original.charAt(1) + decode(a + original.substring(1));
            }
        }
        else {
            return a + decode(original.substring(1));
        }
    }

    public static void main (String[] args) {
        String string = args[0];

        System.out.println(encode(string));
        System.out.println(decode(encode(string)));
    }
}
