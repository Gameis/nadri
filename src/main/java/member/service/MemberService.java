package member.service;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;
import member.bean.ZipcodeDTO;

public interface MemberService {
	
//	public MemberDTO login(Map<String, String> map);
	
	public MemberDTO login(MemberDTO memberDTO);
	
	public void write(MemberDTO userDTO);

	public String checkId(String id);

//이메일 인증 이건 못했음
//	public String checkEmail(String email);
	
	public List<ZipcodeDTO> checkPostSearch(ZipcodeDTO zipcodeDTO);
	
//Json 형식
//	public JSONObject getUserList();
	
//JSON 쓰지 않고 list형식으로 쓸때	
//	public List<MemberDTO> getUserList();

//	public MemberDTO getUser(String searchId);

	
	public MemberDTO getMemberInfo(String id);

	public void modify(MemberDTO userDTO);

	public void delete(String id);



	






}
