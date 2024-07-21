package Java;

public class User2 extends Thread{
	private Calculator cal2;
	
	void setCalculator(Calculator calculator){
		this.cal2 = calculator;
		this.setName("User2");
	}
	
	public void run() {
		cal2.setMemory(50);
	}
}
