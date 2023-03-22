public class PlayWaveFile {
	
	public static void main(String[] args) {

		double[] b = StdAudio.read('data/a2001011001.wav')
		for (int i = 0; i < 100; i++) {
			StdOut.print(b[i] + "")
		}

	}

}