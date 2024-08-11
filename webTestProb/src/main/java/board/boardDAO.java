package board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlMapConfig;

public class boardDAO {
	SqlSessionFactory sqlsession_f = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public boardDAO() {
		//SqlSessionFactory에서 session을 할당받는다.
		//이 때 openSession에 true를 주어야 자동 커밋이 된다.
		//default는 false이다.
		session = sqlsession_f.openSession(true);
	}
	
	public List<boardDTO> selectAll(){
		return session.selectList("Board.selectAll");
	}
	
	public boardDTO selectBoard(int num) {
		return session.selectOne("Board.selectBoard",num);
	}
	
	public void insertBoard(boardDTO dto) {
		session.insert("Board.insertBoard",dto);
	}
	
	public void updateBoard(boardDTO dto) {
		session.update("Board.updateBoard",dto);
	}
	
	public void deleteBoard(int num) {
		session.delete("Board.deleteBoard",num);
	}
	
	public void updateHits(int num) {
		session.update("Board.updateHits",num);
	}
}
