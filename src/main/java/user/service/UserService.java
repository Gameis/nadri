package user.service;

import java.util.List;

//import net.sf.json.JSONObject;
import user.bean.UserDTO;
import user.bean.ZipcodeDTO;

public interface UserService {
	
	public String login(UserDTO userDTO);
	
	public void write(UserDTO userDTO);

	public String checkId(String id);

//	public String checkEmail(String email);
	
	public List<ZipcodeDTO> checkPostSearch(ZipcodeDTO zipcodeDTO);
	
//Json 형식
//	public JSONObject getUserList();
	
//JSON 쓰지 않고 list형식으로 쓸때	
	public List<UserDTO> getUserList();

	public UserDTO getUser(String searchId);

	public void modify(UserDTO userDTO);

	public void delete(String searchId);



	






}
