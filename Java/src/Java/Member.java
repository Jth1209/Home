package Java;

import java.io.Serializable;

public class Member implements Serializable{
	String name;
	int grade;
	String addr;
	String tel;
	
	public Member() {};
	
	
	@Override
	public String toString() {
		return "Member [name=" + name + ", grade=" + grade + ", addr=" + addr + ", tel=" + tel + "]";
	}


	public Member(String name, int grade, String addr, String tel) {
		super();
		this.name =name;
		this.grade = grade;
		this.addr = addr;
		this.tel = tel;
	}
	public void pGrade() {
		System.out.println("학생의 학년: " + grade);
	}

}
