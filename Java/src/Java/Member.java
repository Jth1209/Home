package Java;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Member implements Serializable{
	String name;
	String ssn;
	String tel;
	int balance;
	
	public Member() {}

	@Override
	public String toString() {
		return "Member [name=" + name + ", ssn=" + ssn + ", tel=" + tel + ", balance=" + balance + "]";
	}

	public Member(String name, String ssn, String tel) {
		super();
		this.name = name;
		this.ssn = ssn;
		this.tel = tel;
	};
	
	
}
