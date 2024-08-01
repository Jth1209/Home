package java0731;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class StreamEx {

	public static void main(String[] args) {
		List<Student> list = Arrays.asList(
				new Student("홍길동",90),
				new Student("김길동",80),
				new Student("이길동",77)
				);
		
		int sum = list.stream().mapToInt(s->s.getNum()).sum();
		System.out.println(sum);
		double avg = list.stream().mapToInt(s->s.getNum()).average().getAsDouble();
		System.out.println(avg);
		
		Collections.sort(list,(Student s1,Student s2)->Integer.compare(s2.getNum(),s1.getNum()));//큰 수부터 출력
		System.out.println(list);
	}

}
