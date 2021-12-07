package member.dao;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;
import member.bean.ZipcodeDTO;

public interface MemberDAO {
	
//	public MemberDTO login(Map<String, String> map);
	
	public MemberDTO login(MemberDTO memberDTO);

	public MemberDTO checkId(String id);
		
	public List<ZipcodeDTO> checkPostSearch(ZipcodeDTO zipcodeDTO);
	
	public void write(MemberDTO memberDTO);
	
	/*
	public List<MemberDTO> getUserList();

	public MemberDTO getUser(String searchId);
	*/
	
	public MemberDTO getMemberInfo(String id);
	
	public void modify(MemberDTO memeberDTO);

	public void delete(String id);






	

}
