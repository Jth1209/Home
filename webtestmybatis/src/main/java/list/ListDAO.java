package list;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlMapConfig;

public class ListDAO {
	SqlSessionFactory sqlsession_f = SqlMapConfig.getSqlMapInstance();
	SqlSession session;
	
	public ListDAO() {
		//SqlSessionFactory에서 session을 할당받는다.
		//이 때 openSession에 true를 주어야 자동 커밋이 된다.
		//default는 false이다.
		session = sqlsession_f.openSession(true);
	}
	
	public List<ListDTO> searchAll() {
		return session.selectList("B.searchUser");
	}
	
	public ListDTO showContent(int num) {
		return session.selectOne("B.viewContent",num);
	}
	
	public void updateUser(ListDTO dto) {
		session.selectOne("B.updateUser");
	}
	
	public void insertUser(ListDTO dto) {
		session.selectOne("B.insertUser");
	}
}
