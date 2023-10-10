import java.util.concurrent.TimeUnit;

public class Main {
	public static void main(String[] args) {
		int delay = 50;
		int i = 0;
		int n = 1000;

		while (waitForDelay(delay, i++) < 143) {
			if (n <= 6) {
				System.out.println("Я гуль!");
				return;
			}
			System.out.println(n + " - 7 = " + (n - 7));
			n -= 7;
		}
	}

	private static int waitForDelay(int delay, int i) {
		try {
			TimeUnit.MILLISECONDS.sleep(delay);
		} catch (InterruptedException e) {
			Thread.currentThread().interrupt();
		}
		return i;
	}
}