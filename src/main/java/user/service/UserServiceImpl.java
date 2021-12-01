package user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//import net.sf.json.JSONArray;
//import net.sf.json.JSONObject;
import user.bean.UserDTO;
import user.bean.ZipcodeDTO;
import user.dao.UserDAO;

@Service	//@Component	 이것도 되지만 Service라고 직관적으로 알아볼수있록 하자
public class UserServiceImpl implements UserService {
 
	@Autowired
	private UserDAO userDAO;
	
	/*
	 * @Override public UserDTO login(UserDTO userDTO) { // TODO Auto-generated
	 * method stub return null; }
	 */
	@Override
	public List<ZipcodeDTO> checkPostSearch(ZipcodeDTO zipcodeDTO) {
		return userDAO.checkPostSearch(zipcodeDTO);
	}

	@Override
	public String checkId(String id) {

		UserDTO userDTO=userDAO.checkId(id);
		
		if(userDTO==null)
			return "non-exist";
		else {
			return "exist";
		}
		
	}	//checkId
	

	// 회원가입
	@Override
	public void write(UserDTO userDTO) {
		userDAO.write(userDTO);		
	}
	 
	
	//출력하기
	
	//JSON 없이 list만 사용
	@Override
	public List<UserDTO> getUserList() {
		return userDAO.getUserList();
	}
	
	@Override
	public UserDTO getUser(String searchId) {
		return userDAO.getUser(searchId);
	}
	
	@Override
	public void modify(UserDTO userDTO) {
		userDAO.modify(userDTO);
	}
	
	@Override
	public void delete(String searchId) {
		userDAO.delete(searchId);	
	}

	@Override
	public String login(UserDTO userDTO) {
		// TODO Auto-generated method stub
		return null;
	}




	
}	//클래스
