package user.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import user.bean.UserDTO;
import user.bean.ZipcodeDTO;
import user.service.UserService;

@Controller
@RequestMapping(value="/user")		//	앞에/user가 자동으로 붙는다 이제 생략가능
public class UserController {
		
	// nadri/ 생략		web.xml쪽에서 생략기능줌
	//jsp는 servlet-context.xml에서생략기능줌
	
	@Autowired	//정확히는 UserService는 인터페이스이고 이걸 상속받은 UserServiceImpl이 온다
	private UserService userService;	
	
	/*
	@RequestMapping(value="/loginForm",method=RequestMethod.GET)
	public String loginForm() {
		return "/user/loginForm";
	} 	//loginForm
	*/
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(@ModelAttribute UserDTO userDTO) {
		return userService.login(userDTO);
	} 	//login
	
	//writeForm을 어떻게 처리해야하나 의문...
	
	@RequestMapping(value="/writeForm",method=RequestMethod.GET)
	public String writeForm() {
		return "/user/writeForm";	
	} 	//writeForm
	
	@RequestMapping(value="/checkId",method=RequestMethod.POST)
	@ResponseBody	//단순문자로 보낼경우에 붙임
	public String checkId(@RequestParam String id) {
		return userService.checkId(id);
	
	}		//checkId
	
	
	/* 이메일 확인 완성못함
	@RequestMapping(value="/checkEmail",method=RequestMethod.POST)
	@ResponseBody	//단순문자로 보낼경우에 붙임
	public String checkEmail(@RequestParam String email) {
		return userService.checkEmail(email);
	
	}		//checkEmail
	
	*/
	
	@RequestMapping(value="/checkPostSearch",method=RequestMethod.POST)
	@ResponseBody	//단순문자로 보낼경우에 붙임
	public List<ZipcodeDTO> checkPostSearch(@ModelAttribute ZipcodeDTO zipcodeDTO ) {
		return userService.checkPostSearch(zipcodeDTO);
	
	}		//checkPostsearch
	
	
	@RequestMapping(value="/write",method=RequestMethod.POST)
	@ResponseBody	
	public void write(@ModelAttribute UserDTO userDTO) {
		userService.write(userDTO);
	}	//write

	@GetMapping(value="/list")
	public String list() {
		return "/user/list";	
	}	//list


	@PostMapping("/getUserList")
	@ResponseBody
	public List<UserDTO> getUserList() {
		return userService.getUserList();
	}

	@GetMapping("/modifyForm")
	public String moodifyForm() {
		return "/user/modifyForm";
	}
	
	@PostMapping("/getUser")
	@ResponseBody
	public UserDTO getUser(@RequestParam String searchId) {	//	한개는 RequestParam으로 받아옴
		return userService.getUser(searchId);
	}
	
	@PostMapping("/modify")
	@ResponseBody
	public void modify(@ModelAttribute UserDTO userDTO) {	//dto 여러개는 ModelAttribute로 보냄
		 userService.modify(userDTO);
	}
	
	@GetMapping("/deleteForm")
	public String deleteForm() {
		return "/user/deleteForm";
	}
	
	@PostMapping("/delete")
	@ResponseBody
	public void delete(@RequestParam String searchId) {
		 userService.delete(searchId);
	}
	
	/*
	//개인 이미지 변경하기
	@RequestMapping(value="/imageboardWriteForm",method=RequestMethod.GET)
	public String imageboardWriteForm() {
		return "/user/imageboardWriteForm";
	}	//write
	*/
	
}	//클래스
