package Java;

public class BeepPrintEx4 {

	public static void main(String[] args) {
		Thread thread = new BeepThread();
		thread.run();
		
		for(int i = 0; i<5; i++) {
			System.out.println("명~");
			try {Thread.sleep(500);} catch(Exception e) {};
		}

	}

}
