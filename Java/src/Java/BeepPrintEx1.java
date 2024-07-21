package Java;

import java.awt.Toolkit;

public class BeepPrintEx1 {

	public static void main(String[] args) {
		Thread thread = new Thread(new Runnable() {
			
			@Override
			public void run() {//Runnable 안에서 구동됐으면 하는 메소드를 하나 만든다 생각
			Toolkit toolkit = Toolkit.getDefaultToolkit();
			for(int i  = 0; i < 5; i++) {
				toolkit.beep();
				try{Thread.sleep(500);} catch (Exception e) {}
			}
			
		}
		
		});
		thread.start();
		for(int i = 0; i<5; i++) {
			System.out.println("띵");
			try {Thread.sleep(500);} catch(Exception e) {}
		

	}

    }
}
