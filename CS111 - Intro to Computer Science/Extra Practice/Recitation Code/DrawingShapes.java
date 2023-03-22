public class DrawingShapes {
	
	public static void main(String[] args) {

		StdDraw.square(0.25, 0.75, 0.15);

		StdDraw.filledSquare(0.75, 0.75, 0.15);
		StdDraw.setPenColor(StdDraw.WHITE);
		StdDraw.text(0.75, 0.75, "white text");

		StdDraw.setPenColor(StdDraw.BLACK);
		StdDraw.circle(0.25, 0.25, 0.15);

		double[] x = {0.7, 0.6, 0.75, 0.9, 0.8};
		double[] y = {0.1, 0.2, 0.3, 0.2, 0.1};
		StdDraw.filledPolygon(x, y);
	}

}