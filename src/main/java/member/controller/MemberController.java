package member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import member.bean.MemberDTO;
import member.bean.ZipcodeDTO;
import member.service.MemberService;

@Controller
@RequestMapping(value="/member")		//	앞에/user가 자동으로 붙는다 이제 생략가능
public class MemberController {
		
	// nadri/ 생략		web.xml쪽에서 생략기능줌
	//jsp는 servlet-context.xml에서생략기능줌
	
	@Autowired	//정확히는 UserService는 인터페이스이고 이걸 상속받은 UserServiceImpl이 온다
	private MemberService memberService;	
	
	@Autowired	// 두군데 
	BCryptPasswordEncoder passwordEncoder;

	/*

	@RequestMapping(value="/login",method=RequestMethod.POST)
//	@ResponseBody
	public String login(MemberDTO memberDTO, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		
		HttpSession session = req.getSession();
		MemberDTO login= memberService.login(memberDTO);
		
		if(login==null) {
			session.setAttribute("member",null);
			rttr.addFlashAttribute("msg",false);
		}else {
			session.setAttribute("member",login);
		}		
		return "redirect:/";
	} 	//login
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
//	@ResponseBody
	public String logout(HttpSession session)throws Exception{
		session.invalidate();
		
		return "redirect:/";
	}
	*/
	
/*
	@RequestMapping(value="/login",method=RequestMethod.POST)
	@ResponseBody
	public String login(@RequestParam String id, @RequestParam String pwd) {
		System.out.println(id);
		System.out.println(pwd);
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		MemberDTO memberDTO2 = memberService.login(map);
		
		String inputPwd = map.get("pwd");
		String dbPwd = memberDTO2.getPwd();
		
		if(! passwordEncoder.matches(inputPwd, dbPwd)) {
			return "비밀번호가 같지 않습니다";
		}
		return "비밀번호가 같습니다";
	} 	//login
	*/
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	@ResponseBody
	public String login(@ModelAttribute MemberDTO memberDTO,HttpServletRequest request) {
		MemberDTO memberDTO2 = memberService.login(memberDTO);// db갔다온 정보
	
		String inputPwd=null;
		String dbPwd=null;
		System.out.println(memberDTO2);
		if(memberDTO2!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("memName", memberDTO2.getName());
			session.setAttribute("memId",  memberDTO2.getId());
			session.setAttribute("memEmail",memberDTO2.getEmail1()+"@"+memberDTO2.getEmail2());
					
			//복호화된 비밀번호 비밀번호 비교하기
			inputPwd = memberDTO.getPwd();	//로그인시 입력한 비번
			dbPwd = memberDTO2.getPwd();		//db에서 꺼내온 비번
		} //if
		
		if(! passwordEncoder.matches(inputPwd,  dbPwd)) {
			return "fail";
		}else {
			return "ok";
			
		}
	} 	//login
	
	@RequestMapping(value="/compare",method=RequestMethod.POST)
	@ResponseBody
	public String compare(@RequestParam String pwd,HttpSession session) {
		
		String inputPwd=null;
		String dbPwd=null;
		String id =(String) session.getAttribute("memId");
		MemberDTO memberDTO2 = memberService.getMemberInfo(id);// db갔다온 정보
		inputPwd = pwd;			//		비교창에서 입력한 비번
		dbPwd = memberDTO2.getPwd();		//db에서 꺼내온 비번
	
	if(! passwordEncoder.matches(inputPwd,  dbPwd)) {
		return "fail";
	}else {
		return "ok";
		
	}
} 	//login	
	
	@RequestMapping(value="/logOut",method=RequestMethod.POST)
	@ResponseBody
	public void logOut(HttpServletRequest request, HttpSession session) {
		//모든 세션 제거
		session.invalidate();//무효화
	}		//logout
			//memeber가 없는데 이건 어떻게 해야하나
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index() {
		return "/index";	
	} 
	
	@RequestMapping(value="/myPage",method=RequestMethod.GET)
	public String myPage() {
		return "/repository/jsp/member/myPage";	
	} 	

	@RequestMapping(value="/checkId",method=RequestMethod.POST)
	@ResponseBody	//단순문자로 보낼경우에 붙임
	public String checkId(@RequestParam String id) {
		return memberService.checkId(id);
	}		//checkId
		
	@RequestMapping(value="/checkPost",method=RequestMethod.GET)
	public String checkPost() {
		return "/member/checkPost";	
	} 	//checkPost
	
	@RequestMapping(value="/checkPostSearch",method=RequestMethod.POST)
	@ResponseBody	//단순문자로 보낼경우에 붙임
	public List<ZipcodeDTO> checkPostSearch(@ModelAttribute ZipcodeDTO zipcodeDTO ) {
		return memberService.checkPostSearch(zipcodeDTO);		
	}		//checkPostsearch
		
	@RequestMapping(value="/write",method=RequestMethod.POST)
	@ResponseBody	
	public void write(@ModelAttribute MemberDTO memberDTO) {
		memberDTO.setPwd(passwordEncoder.encode(memberDTO.getPwd()));
		memberService.write(memberDTO);
	}	//write
	
	/*
//	전체 인원 출력하기랑 임의 특정인원 출력하기  이건 매니저만 사용가능하도록 빼둬야 할듯? 
	@PostMapping("/getUserList")
	@ResponseBody
	public List<MemberDTO> getUserList() {
		return memberService.getUserList();
	}

	@PostMapping("/getUser")
	@ResponseBody
	public MembeDTO getUser(@RequestParam String searchId) {	//	한개는 RequestParam으로 받아옴
		return memberService.getUser(searchId);
	}
	*/

	@GetMapping(value="/getMember")
	public String getMember(Model model) {	
		model.addAttribute("display", "/repository/jsp/member/getMember.jsp");	
		return "/repository/jsp/member/myPage";		
	}	// getMember
	
	

	@PostMapping("/getMemberInfo")
	@ResponseBody
	public MemberDTO getMemberInfo(HttpSession session) {
		String id =(String) session.getAttribute("memId");	
		
		return memberService.getMemberInfo(id); 			
	}
	
	@GetMapping("/deleteForm")
	public String deleteForm(Model model) {		
		model.addAttribute("display", "/repository/jsp/member/deleteForm.jsp");	
		return "/repository/jsp/member/myPage";	
	}
	
	@PostMapping("/delete")
	@ResponseBody
	public void delete(HttpSession session) {
		String id =(String) session.getAttribute("memId");	
		memberService.delete(id);
	}
	

	@GetMapping("/modifyForm")
	public String moodifyForm(Model model) {
		model.addAttribute("display", "/repository/jsp/member/modifyForm.jsp");	
		return "/repository/jsp/member/myPage";	
	}
	
	/* 	
	@PostMapping("/modify")
	@ResponseBody
	public void modify(HttpSession session) {	//dto 여러개는 ModelAttribute로 보냄
		String id =(String) session.getAttribute("memId");	

		memberService.modify(id);
	}
	

//	 이메일 확인 완성못함
//	@RequestMapping(value="/checkEmail",method=RequestMethod.POST)
//	@ResponseBody	//단순문자로 보낼경우에 붙임
//	public String checkEmail(@RequestParam String email) {
//		return userService.checkEmail(email);	
//	}		//checkEmail
	


	
	*/
	
	
	
	/*
	//개인 이미지 변경하기
	@RequestMapping(value="/imageboardWriteForm",method=RequestMethod.GET)
	public String imageboardWriteForm() {
		return "/member/imageboardWriteForm";
	}	//write
	*/
	
}	//클래스
