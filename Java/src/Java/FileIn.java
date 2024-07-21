package Java;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;

public class FileIn implements Runnable{

	public void FileIn() {
		Member[] list = new Member[30];
		
		int count = 0;
		
		try (FileInputStream fis = new FileInputStream("c:\\temp\\student.dat");
				ObjectInputStream ois = new ObjectInputStream(fis)){
			
			Member[] list2 = (Member[]) ois.readObject();
			System.arraycopy(list2, 0, list, 0, list2.length);
			System.out.println("파일에 저장된 객체를 불러왔습니다.");
		
		}catch (IOException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		for(Member member: list) {
			if(member != null) {
				System.out.println(member);
				++count;
			}
		}
		System.out.println("index = " + count);
		
	}
	public void run() {
		// TODO Auto-generated method stub
		
	};

}
