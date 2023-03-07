public class GuessingGame {
	
	public static void main(String args[]) {

		int a = (int)((1000 * Math.random()) + 1);
		int g = StdIn.readInt();

		while (g != a) {
			if (g > a)
				StdOut.println("Too high!");
			else
				StdOut.println("Too low!");
			g = StdIn.readInt();
		}

		if (g == a)
			StdOut.println("You win!");

	}

}
	
	//generate a number between 1 and 1000
//	int secretNumber = 1 + (int)(Math.random()*1000);
//	StdOut.println("I'm thinking of a number between 1 and 1,000");
//	int guess = 0;
//
//	while(guess!=secretNumber){
//		//prompt user for guess and provide an answer
//		StdOut.print("What's your guess? ");
//		guess = StdIn.readInt();
//		if(guess == secretNumber){
//			StdOut.println("You win!");
//		}
//		if(guess < secretNumber){
//			StdOut.println("Too low");
//		}
//		if(guess > secretNumber){
//			StdOut.println("Too high");
//		}
//	