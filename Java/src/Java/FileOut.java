package Java;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.LinkedList;

public class FileOut {
	LinkedList<Member> list = new LinkedList<>();
					
	public FileOut() {};
	    
	public void Store() {//리스트 값을 파일에 저장(역직렬화)
		try (FileOutputStream fos = new FileOutputStream("c:\\temp\\members.dat");
	    		ObjectOutputStream oos = new ObjectOutputStream(fos)){
	    	
	    	oos.writeObject(list);
	    	System.out.println("객체를 파일에 저장했습니다.");
	    	
	    }catch(IOException e) {
	    	e.printStackTrace();
	    }
	};
	
	public void Upload() {//파일에서 정보를 프로젝트로 전달 (직렬화)
		try (FileInputStream fis = new FileInputStream("c:\\temp\\members.dat");
				ObjectInputStream ois = new ObjectInputStream(fis)) {
			LinkedList<Member> list2 = (LinkedList<Member>) ois.readObject();//파일에 기본적으로 값을 받지 않고 LinkedList령으로 강제변환하여 값을 받음
//			Member[] list2 = (Member[]) ois.readObject(); 
			for(Member i: list2){
				list.add(i);//1번 배열 0 번째 부터 두번째 배열의 0번 에 리스트2의 길이만큼 복사
			}
			System.out.println("파일에서 객체를 가져왔습니다.");
		}catch (IOException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	    for(Member member: list) {
	    	if(member != null) {
	    		System.out.println(member);
	    		
	    	}
	    }
	};

}