package Java;

public class Ex {

	public static void main(String[] args) {
		Calculator calMain = new Calculator();
		
		User1 user1 = new User1();
		user1.setCalculator(calMain);
		user1.start();
		User2 user2 = new User2();
		user2.setCalculator(calMain);
		user2.start();
		
	}

}
