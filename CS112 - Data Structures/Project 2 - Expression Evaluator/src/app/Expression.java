package app;

import java.io.*;
import java.util.*;
import java.util.regex.*;

import structures.Stack;

public class Expression {

	public static String delims = " \t*+-/()[]";
			
	
    /**
     * Populates the vars list with simple variables, and arrays lists with arrays
     * in the expression. For every variable (simple or array), a SINGLE instance is created 
     * and stored, even if it appears more than once in the expression.
     * At this time, values for all variables and all array items are set to
     * zero - they will be loaded from a file in the loadVariableValues method.
     * 
     * @param expr The expression
     * @param vars The variables array list - already created by the caller
     * @param arrays The arrays array list - already created by the caller
     */
    public static void makeVariableLists(String expr, ArrayList<Variable> vars, ArrayList<Array> arrays) {
    	expr = expr + " ";
		StringTokenizer st = new StringTokenizer(expr, delims);
		int count = 0;
		while (st.hasMoreTokens()) {
			String str = st.nextToken();
			if (!helper7(str)) {
				if (arrays.contains(new Array(str)) == false) {
					if (expr.charAt(expr.indexOf(str, count) + str.length()) == '[') {
						arrays.add(new Array(str));
						count = expr.indexOf('[', count) - 1;
					} else if (vars.contains(new Variable(str)) == false) {
						vars.add(new Variable(str));
					}
				}
			}
		}
    }
    
    
    /**
     * Loads values for variables and arrays in the expression
     * 
     * @param sc Scanner for values input
     * @throws IOException If there is a problem with the input 
     * @param vars The variables array list, previously populated by makeVariableLists
     * @param arrays The arrays array list - previously populated by makeVariableLists
     */
    public static void loadVariableValues(Scanner sc, ArrayList<Variable> vars, ArrayList<Array> arrays) throws IOException {
        while (sc.hasNextLine()) {
            StringTokenizer st = new StringTokenizer(sc.nextLine().trim());
            int numTokens = st.countTokens();
            String tok = st.nextToken();
            Variable var = new Variable(tok);
            Array arr = new Array(tok);
            int vari = vars.indexOf(var);
            int arri = arrays.indexOf(arr);
            if (vari == -1 && arri == -1) {
            	continue;
            }
            int num = Integer.parseInt(st.nextToken());
            if (numTokens == 2) { // scalar symbol
                vars.get(vari).value = num;
            } else { // array symbol
            	arr = arrays.get(arri);
            	arr.values = new int[num];
                // following are (index,val) pairs
                while (st.hasMoreTokens()) {
                    tok = st.nextToken();
                    StringTokenizer stt = new StringTokenizer(tok," (,)");
                    int index = Integer.parseInt(stt.nextToken());
                    int val = Integer.parseInt(stt.nextToken());
                    arr.values[index] = val;              
                }
            }
        }
    }
    
    
    /**
     * Evaluates the expression.
     * 
     * @param vars The variables array list, with values for all variables in the expression
     * @param arrays The arrays array list, with values for all array items
     * @return Result of evaluation
     */
    public static float evaluate(String expr, ArrayList<Variable> vars, ArrayList<Array> arrays) {
    	expr=helper1(expr.replaceAll("\\s+", ""));
		System.out.println(expr);
		float result = 0;

		if (expr.contains("[")) {
			int start = 0;
			int end = 0;
			int count = 0;
			for (int a = 0; a < expr.length(); a++) {
				if (expr.charAt(a) == '[') {
					if (count == 0) {
						start = a;
					}
					count++;
				}	
				if (expr.charAt(a) == ']') {
					end = a;
					count--;
					if (count == 0) {
						System.out.println(expr.substring(start + 1, end));
						String arrayName = helper2(expr, start - 1);
						expr = helper1(expr.substring(0, start - arrayName.length()) + helper6(arrayName, evaluate(expr.substring(start + 1, end), vars, arrays), arrays) + expr.substring(end + 1, expr.length()));
						a = 0;
					}
				}
			}
		}
		if (expr.contains("(")) {
			int start = 0;
			int end = 0;
			int count2 = 0;
			for (int a = 0; a < expr.length(); a++) {
				if (expr.charAt(a) == '(') {
					if (count2 == 0) {
						start = a;
					}
					count2++;
				}
				if (expr.charAt(a) == ')') {
					end = a;
					count2--;
					if (count2 == 0) {
						System.out.println(expr.substring(start + 1, end));
						expr = helper1(expr.substring(0, start) + evaluate(expr.substring(start + 1, end), vars, arrays) + expr.substring(end + 1, expr.length()));
						a = 0;
					}
				}
			}
		}
		if (helper3(expr)) {
			System.out.print(expr);
			String expressionName = "";
			for (int i = 0; i < expr.length(); i++) {
				char cr = expr.charAt(i);
				if (Character.isLetter(cr)) {
					expressionName += cr;
				}
				if (expressionName != "" && (helper4(cr))) {
					expr = expr.substring(0, i - expressionName.length()) + helper5(expressionName, vars) + expr.substring(i, expr.length());
					expressionName = "";
				}
				if (expressionName != "" && i + 1 == expr.length()) {
					expr = expr.substring(0, i - expressionName.length() + 1) + helper5(expressionName, vars) + expr.substring(i, i);
					expressionName = "";
					break;
				}
			}
			System.out.println(expr);
		}
		if (expr.contains("/") || expr.contains("*")) {
			System.out.println(expr);
			for (int i = 0; i < expr.length(); i++) {
				char char2 = expr.charAt(i);
				String string1 = "";
				String string2 = "";
				if (char2 == '/' || char2 == '*') {
					int x = i - 1;
					char z = expr.charAt(x);
					boolean negative = false;
					int y = i - 1;
					int count = 0;	
					while (y >= 0) {
						if (expr.charAt(y) == '-' && count == 0 && y == 0) {
							negative = true;
							break;
						}
						if (helper4(expr.charAt(y))) {
							count++;
						}
						y--;
					}
					while ((z != '+' && z != '-' && z != '*' && z != '/') && x >= 0) {
						if (negative) {
							string1 = z + string1;
						} 
						else {
							string1 = z + string1;
						}
						x--;
						try {
							z = expr.charAt(x);
						} 
						catch (StringIndexOutOfBoundsException error) {
						}
					}
					int var = i + 1;
					char e = expr.charAt(var);
					if (expr.charAt(var) == '-') {
						var++;
						string2 += '-';
						e = expr.charAt(var);
					}
					while ((e != '/' && e != '*' && e != '+' && e != '-') && var < expr.length()) {
						string2 += e;
						var++;
						try {
							e = expr.charAt(var);
						} 
						catch (StringIndexOutOfBoundsException error) {
						}
					}
					float float1 = Float.parseFloat(string1);
					float float2 = Float.parseFloat(string2);
					float answer = 0;
					if (char2 == '/') {
						answer = float1 / float2;
					}
					if (char2 == '*') {
						answer = float1 * float2;	
					}
					expr = helper1(expr.substring(0, x + 1) +String.format("%.16f",answer) + expr.substring(var, expr.length()));
					System.out.println(expr + ":  " + float1 + "  */ " + float2);
					string1 = "";
					string2 = "";
					i = 0;
				}
			}
		}
		if (expr.contains("+") || expr.contains("-")) {
			int i = 0;
			String s = "";
			boolean subract = false;
			while (i < expr.length()) {
				char c = expr.charAt(i);
				i++;
				if (c != '+' && c != '-') {
					s += c;
				}
				try {
					if(expr.charAt(i - 1) == 'E') {
						i++;
						while(i<expr.length()&&expr.charAt(i)!='+'&&expr.charAt(i)!='-') {
							i++;
						}
					}
				}
				catch(StringIndexOutOfBoundsException error) {	
				}
				if (c == '+' || c == '-' || i == expr.length()) {
					if (expr.charAt(0) == '-') {
					}
					if (subract) {
						try {
							result -= Float.parseFloat(s);
							s = "";
						} 
						catch (NumberFormatException error) {
						}
						s = "";
					} 
					else {
						try {
							result += Float.parseFloat(s);
							s = "";
						} 
						catch (NumberFormatException error) {
						}
					}
				}
				if (c == '+') {
					subract = false;
				}
				if (c == '-') {
					subract = true;
				}
			}
			System.out.println(result + " = " + expr);
			return result;
		} 
		else {
			return Float.parseFloat(expr);
		}
	}

	// The following are Helper Methods that were used in the code above:
    
    // Returns a simplified version of the given expression
	private static String helper1(String expr) {
		if(expr.contains("E0.0")) {
			expr = expr.replace("E0.0", "");
		}
		if(expr.contains("--")) {
			expr = expr.replace("--", "+");
		}
		if(expr.contains("-+")) {
			expr = expr.replace("-+", "-");
		}
		if(expr.contains("++")) {
			expr = expr.replace("++", "+");
		}
		if(expr.contains("+-")) {
			expr = expr.replace("+-", "-");
		}
		return expr;
	}
	
	// Returns a string of all consecutive letters between the start of the expression and a given end point
	private static String helper2(String expr, int start) {
		int ptr = start;
		String string = "";
		while (ptr >= 0 && Character.isLetter(expr.charAt(ptr))) {
			string = expr.charAt(ptr) + string;
			ptr--;
		}
		return string;
	}
	
	// Determines whether the given string contains any letters or not
	private static boolean helper3(String string) {
		for (int i = 0; i < string.length(); i++) {
			if (Character.isLetter(string.charAt(i))) {
				return true;
			}
		}
		return false;
	}
	
	// Determines whether the given character is a mathematical operator or not
	private static boolean helper4(char c) {
		if (c == '*' || c == '/' || c == '+' || c == '-') {
			return true;
		}
		return false;
	}

	// Returns the value of the first variable that is equivalent to the given string, returns 0 otherwise
	private static float helper5(String string, ArrayList<Variable> vars) {
		for (Variable var : vars) {
			if (var.name.equals(string)) {
				return var.value;
			}
		}
		return 0;
	}
	
	// arrVal
	private static float helper6(String string, float index, ArrayList<Array> arrays) {
		for (Array array : arrays) {
			if (array.name.equals(string)) {
				return array.values[(int) index];
			}
		}
		return 0;
	}
	
	// 
	private static boolean helper7(String string) {
		try {
			Float.parseFloat(string);
			return true;
		} catch (Exception exception) {
			return false;
		}
	}
}