import java.awt.Color;
import java.awt.image;

public class PicApp2 {
	
	public static double lum(Color c) {
		int r = c.getRed();
		int g = c.getGreen();
		int b = c.getBlue();

		return .299*r + .587*g + .114*b;
	}

	public static Color toGray(Color c) {
		int y = (int) (Math.round(lum(c)));
		Color gray = new Color(y, y, y);
		return gray;
	}

	public static void main(String[] args) {
		Picture mypic = new Picture(args[0]);
		for (int i = 0; i < mypic.width; i++) {
			for (int j = 0; j < mypic.height; j++) {
				Color c = mypic(i, j);
				mypic.set(i, j, toGray(c));
			}
		}
		mypic.show();
	}

}