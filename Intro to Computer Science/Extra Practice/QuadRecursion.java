public class QuadRecursion {
	
	public static void main(String[] args) {

		StdDraw.setScale(-10.0, +10.0);	
		recursiveDraw(0, 0, 4);

	}

	public static void recursiveDraw(double x, double y, double hl) {
		StdDraw.square(x, y, hl);
		if (hl < 0.25) return;
		else {
			recursiveDraw(x-hl/2, y+hl/2, hl/2);
			recursiveDraw(x+hl/2, y+hl/2, hl/2);
			recursiveDraw(x+hl/2, y-hl/2, hl/2);
			recursiveDraw(x-hl/2, y-hl/2, hl/2);
		}
	}
}