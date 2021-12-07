package member.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import member.bean.MemberDTO;
import member.bean.ZipcodeDTO;

@Repository //	@Component써줘도 되지만 직관적으로 DB관련쪽이라고 알려주자
@Transactional
public class MemberDAOMybatis implements MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	
//	@Autowired
//	BCryptPasswordEncoder passwordEncoder;

/*
	@Override
	public MemberDTO login(Map<String, String> map) {
		//System.out.println(map.get("id") + "," + map.get("pwd"));
		return sqlSession.selectOne("memberSQL.login",map);
	}
	*/
	
	@Override
	public MemberDTO login(MemberDTO memberDTO) {
		return sqlSession.selectOne("memberSQL.login",memberDTO);
	}

	
	@Override
	public MemberDTO checkId(String id) {
		return sqlSession.selectOne("memberSQL.checkId",id);
	}
	
	
	@Override
	public List<ZipcodeDTO> checkPostSearch(ZipcodeDTO zipcodeDTO) {
		return sqlSession.selectList("memberSQL.checkPostSearch",zipcodeDTO);
	}

	@Override
	public void write(MemberDTO userDTO) {
	//	System.out.println("2번 연결됫니"+userDTO);		
		sqlSession.insert("memberSQL.write",userDTO);
	}

	
	/*
	@Override
	public List<MemberDTO> getUserList() {	
		return sqlSession.selectList("memberSQL.getUserList");
	}

	@Override
	public MemberDTO getUser(String searchId) {
		return sqlSession.selectOne("memberSQL.getUser",searchId);
	}
	*/
		
	@Override
	public MemberDTO getMemberInfo(String id) {	
		return sqlSession.selectOne("memberSQL.getMemberInfo", id);
	}
	
	@Override
	public void modify(MemberDTO userDTO) {
		sqlSession.update("memberSQL.modify",userDTO);
	}

	@Override
	public void delete(String id) {
		sqlSession.delete("memberSQL.delete",id);
		
	}



	
}	//클래스
