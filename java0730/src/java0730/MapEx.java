package java0730;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class MapEx {

	public static void main(String[] args) {
		Map<String,Integer> map = new HashMap<>();
		map.put("ex1",1);
		map.put("ex2",2);
		map.put("ex3",3);
		map.put("ex4",4);
		
		Set<String> set = map.keySet();
		for(String str : set) {
			Integer ret = map.get(str);
			System.out.println(ret);
		}
	}

}
