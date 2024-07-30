package java0730;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ArrayEx {

	public static void main(String[] args) {
		Integer[] arr = new Integer[] {10,1,3,11,45,23,45,78,32,64};
		List<Integer> arrL = Arrays.asList(arr);
		Set<Integer> set = new HashSet<>(arrL);
		Collections.sort(arrL,(Integer i1, Integer i2) -> Integer.compare(i1,i2));
		System.out.println(arrL);
		
	}

}
