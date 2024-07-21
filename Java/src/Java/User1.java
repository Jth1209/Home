package Java;

public class User1 extends Thread{
	private Calculator cal1;
	
	void setCalculator(Calculator calculator) {
		this.cal1 = calculator;
		this.setName("User1");
	}
	
	public void run() {
		cal1.setMemory(100);
	}
}
