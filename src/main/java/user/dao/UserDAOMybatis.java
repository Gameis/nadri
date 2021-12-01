package user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import user.bean.UserDTO;
import user.bean.ZipcodeDTO;

@Repository //	@Component써줘도 되지만 직관적으로 DB관련쪽이라고 알려주자
@Transactional
public class UserDAOMybatis implements UserDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public UserDTO checkId(String id) {
		return sqlSession.selectOne("userSQL.checkId",id);
	}
	/*
	@Override
	public UserDTO checkId(String id) {
		return sqlSession.selectOne("userSQL.getUser",id);
	}
	*/

	@Override
	public void write(UserDTO userDTO) {
		sqlSession.insert("userSQL.write",userDTO);
	}

	@Override
	public List<UserDTO> getUserList() {	
		return sqlSession.selectList("userSQL.getUserList");
	}

	@Override
	public UserDTO getUser(String searchId) {
		return sqlSession.selectOne("userSQL.getUser",searchId);
	}

	@Override
	public void modify(UserDTO userDTO) {
		sqlSession.update("userSQL.modify",userDTO);
	}

	@Override
	public void delete(String searchId) {
		sqlSession.delete("userSQL.delete",searchId);
		
	}

	@Override
	public List<ZipcodeDTO> checkPostSearch(ZipcodeDTO zipcodeDTO) {
		return sqlSession.selectList("userSQL.checkPostSearch",zipcodeDTO);
	}


	
}	//클래스
