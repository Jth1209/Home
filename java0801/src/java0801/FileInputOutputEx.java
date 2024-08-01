package java0801;

import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;

public class FileInputOutputEx {

	public static void main(String[] args) throws IOException {
		Writer writer = new FileWriter("C://Temp//test1.txt");
		
		String str = "안녕하세요 올리버 쌤입니다, 와~ 보소?";
		
		writer.write(str);
		
		writer.flush();
		writer.close();
	}

}
