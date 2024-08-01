package java0801;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

public class FileInputOutputEx2 {

	public static void main(String[] args) throws IOException {
		Reader read = new FileReader("C://Temp//test2.csv");
		String line = "";
		
		BufferedReader br = new BufferedReader(read);
		while((line = br.readLine()) != null) {
			String[] str = line.split(",");
			System.out.println(str[0]);
			System.out.println(str[1]);
			System.out.println(str[2]);
		}
		read.close();
	}

}
