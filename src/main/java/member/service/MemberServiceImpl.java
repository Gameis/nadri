package member.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import member.bean.ZipcodeDTO;
import member.dao.MemberDAO;

@Service	//@Component	 이것도 되지만 Service라고 직관적으로 알아볼수있록 하자
public class MemberServiceImpl implements MemberService {
 
	@Autowired
	private MemberDAO memberDAO;
	
	/*
	@Override
	public MemberDTO login(Map<String, String> map) {
		return memberDAO.login(map);
	}
	*/
	
	@Override
	public MemberDTO login(MemberDTO memberDTO) {
		
		
		return memberDAO.login(memberDTO);

	}
	
	@Override
	public List<ZipcodeDTO> checkPostSearch(ZipcodeDTO zipcodeDTO) {
		return memberDAO.checkPostSearch(zipcodeDTO);
	}

	@Override
	public String checkId(String id) {

		MemberDTO memberDTO=memberDAO.checkId(id);
		
		if(memberDTO==null)
			return "non-exist";
		else {
			return "exist";
		}
		
	}	//checkId
	

	// 회원가입
	@Override
	public void write(MemberDTO memberDTO) {
	//	System.out.println("1번 연결됬니"+memberDTO);
		memberDAO.write(memberDTO);		
	}
	 
	
	//출력하기
	
	/* 관리자용 두개
	//JSON 없이 list만 사용
	@Override
	public List<MemberDTO> getUserList() {
		return memberDAO.getUserList();
	}
	
	@Override
	public MemberDTO getUser(String searchId) {
		return memberDAO.getUser(searchId);
	}
	*/
	
	
	@Override
	public MemberDTO getMemberInfo(String id) {
		return memberDAO.getMemberInfo(id);
	}


	
	@Override
	public void modify(MemberDTO memberDTO) {
		memberDAO.modify(memberDTO);
	}
	
	@Override
	public void delete(String id) {
		memberDAO.delete(id);	
	}










	
}	//클래스
