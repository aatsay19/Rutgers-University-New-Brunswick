public class FunctionDemo1 {

		// Write a function to find the square root
		public static double sqrt(double c, double eps) {
			if (c < 0) 
				return Double.NaN;

			double t = c;

			while (Math.abs(t - c/t) > eps * t) 
				t = (c/t + t) / 2.0;

			return t;
		}

		public static void main(String args[]) {

			double c = Double.parseDouble(args[0]);
			double eps = Double.parseDouble(args[1]); 
			// eps must be less than 1
			// Call the sqrt function
			double result = sqrt(c, eps);
			StdOut.println("The square root is " + result);

		}

}