package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.JDBCUtil;

public class DAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String SELECT_ALL = "select * from board";
	private String DELETE = "delete from board where num = ?";
	private String HITS_UP = "update board set hits = hits + 1 where num = ?";
	private String SELECTED = "select * from board where num = ?";
	private String UPDATE = "update board set writer = ?, title = ?, content = ?, regtime = now(), hits = 0 where num = ?";
	private String INSERT = "insert into board (writer,title,content,regtime,hits) values (?,?,?,now(),0)";
	
	public List<DTO> selectAll(){//테이블의 모든 데이터를 출력
		List<DTO> dto = new ArrayList<>();
		conn = JDBCUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(SELECT_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				DTO dt = new DTO(rs.getInt("num"),rs.getString("writer"),rs.getString("title"),rs.getString("content"),rs.getString("regtime"),rs.getInt("hits"));
				dto.add(dt);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.close(rs, pstmt, conn);
			
		}
		return dto;
	}
	
	public DTO selected(String num) {//선택한 정보를 보여주기 위해 출력
		DTO dto = null;
		conn = JDBCUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(SELECTED);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto = new DTO(rs.getInt("num"),rs.getString("writer"),rs.getString("title"),rs.getString("content"),rs.getString("regtime"),rs.getInt("hits"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.close(rs,pstmt, conn);
			
		}
		
		return dto;
	}
	
	public void hitsCount(String num) {
		conn = JDBCUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(HITS_UP);
			pstmt.setString(1,num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt, conn);
			
		}
	}
	
	public void delete(String num) {
		conn = JDBCUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(DELETE);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt, conn);
		}
	}
	
	public void update(String num,String writer,String title, String content) {
		conn = JDBCUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(UPDATE);
			pstmt.setString(1, writer); 
			pstmt.setString(2, title); 
			pstmt.setString(3, content); 
			pstmt.setString(4, num); 
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt, conn);
			
		}
	}
	
	public void insertData(String writer,String title,String content) {
		conn = JDBCUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(INSERT);
			pstmt.setString(1,writer);
			pstmt.setString(2, title);
			pstmt.setString(3,content);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt, conn);
		}
	}
}
