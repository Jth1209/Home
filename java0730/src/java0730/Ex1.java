package java0730;

import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Ex1 {

	public static void main(String[] args) {
		List<Student> list = new ArrayList<>();
		list.add(new Student("홍길동",90));
		list.add(new Student("김길동",80));
		list.add(new Student("이길동",70));
		list.add(new Student("노길동",90));
		
		
		Collections.sort(list,(Student s1 , Student s2) ->Integer.compare(s2.getNum(),s1.getNum()));
		
		list.stream().filter(s->s.getNum() > 70).forEach(a->{
			String msg = MessageFormat.format("{0} , {1}", a.getName(), a.getNum());
			System.out.println(msg);
		});
	}

}
