package Java;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

public class FileOut {

	public static void main(String[] args) {
		Member[] stuList = {
				new Member("김하나", 3, "서울","010-1234-5678"),
				new Member("강하나", 1, "성남","010-6345-6531"),
				new Member("이하나", 2, "부산","010-5245-7631"),
				new Member("장하나", 2, "대구","010-7543-1324")
		};
		
		try (FileOutputStream fos = new FileOutputStream("c:\\temp\\student.dat");
				ObjectOutputStream oos = new ObjectOutputStream(fos)){
			oos.writeObject(stuList);
			System.out.println("객체 정보를 파일에 저장했습니다.");
			
		}catch(IOException e) {
			e.printStackTrace();
		}

	}

}
