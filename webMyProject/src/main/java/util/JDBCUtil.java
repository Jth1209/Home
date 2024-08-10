package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCUtil {
	public static Connection conn;
	
	public static Connection getConnection() {
		String URL = "jdbc:mysql://localhost:3306/spring5fs";
		String id = "root";
		String pw = "mysql";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(URL,id,pw);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public static void close(PreparedStatement pstmt, Connection conn) {
		try {
			pstmt.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			conn.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rs, PreparedStatement pstmt, Connection conn) {//사용한 rs , pstmt , con 반납
		try {
			rs.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			pstmt.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			conn.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
