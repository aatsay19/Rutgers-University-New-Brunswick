import java.util.concurrent.TimeUnit;

public class Karel {
	// instance variables
	private int x;
	private int y;

	//constructor
	public Karel(int x, int y) {
		x = this.x;
		y = this.y;
	}

	//methods/behaviors/functions
	public void moveRight() {
		x++;
	}

	public void moveLeft() {
		x--;
	}

	public void moveUp() {
		y++;
	}

	public void moveDown() {
		y--;
	}

	public int getX() {
		return x;
	}

	public int getY() {
		return y;
	}
	//test clien
	public static void main(String[] args) {
		StdDraw.setScale(-10.0, +10.0);
		Karel myRobot = new Karel(0, 0);
		StdDraw.filledCircle(myRobot.getX(), myRobot.getY(), 0.2);
		for (int i = 0; i < 4; i++) {
			delay(1);
			myRobot.moveRight();
			StdDraw.filledCircle(myRobot.getX(), myRobot.getY(), 0.2);
			delay(1);
			myRobot.moveUp();
			StdDraw.filledCircle(myRobot.getX(), myRobot.getY(), 0.2);
		}
	}

	public static void delay(int t) {
		try {
			TimeUnit.SECONDS.sleep(t);
		}
		catch(Exception E) {}
	}
}