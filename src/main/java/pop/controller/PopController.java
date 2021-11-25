package pop.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import pop.bean.pop_reviewboardDTO;

@Controller
@RequestMapping(value="/popular")
public class PopController {
	/*
	 * @Autowired private PopService popService;
	 */
	
	
	//json으로 변환후 방법
//	@PostMapping(value="/getUserList")
//	@ResponseBody
//	public JSONObject getUserList() {
//		return userService.getUserList();
//	}
	
	//메소드의 return형 앞에 @ResponseBody를 붙여서 사용하게되면 해당객체가 자동으로 JSON객체로 변환되어 반환됩니다.
//	<dependency>
//	    <groupId>org.codehaus.jackson</groupId>
//	    <artifactId>jackson-mapper-asl</artifactId>
//	    <version>버전</version>
//  </dependency>
	
	//https://www.nextree.co.kr/p11205/
	
	
//	@RequestMapping(value="/pop_review_writeForm", method=RequestMethod.GET)
//	public String imageboardWriteForm() {
//		return "/repository/jsp/popular/pop_imageboardWriteForm";
//	}
	
	//name="img"가 1개인 경우
	/*
	@RequestMapping(value="/imageboardWrite", method=RequestMethod.POST)
	public String imageboardWrite(@ModelAttribute ImageboardDTO imageboardDTO,
								@RequestParam MultipartFile img) {
		String filePath = "C:\\Users\\downc\\Desktop\\Spring\\workspace\\chapter06_SpringWebMaven\\src\\main\\webapp\\storage";
		String fileName = img.getOriginalFilename();
		File file = new File(filePath, fileName);
		
		//파일 복사
		try {
			FileCopyUtils.copy(img.getInputStream(), new FileOutputStream(file));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		imageboardDTO.setImage1(fileName);
		
		return "/user/imageboardWrite";
	}
	*/
	
	//name="img"가 2개 이상인 경우
	
	/*
	@RequestMapping(value="/imageboardWrite", method=RequestMethod.POST)
	public String imageboardWrite(@ModelAttribute ImageboardDTO imageboardDTO,
								@RequestParam MultipartFile[] img) {
		String filePath = "C:\\Users\\downc\\Desktop\\Spring\\workspace\\chapter06_SpringWebMaven\\src\\main\\webapp\\storage";
		String fileName;
		File file;
		
		//파일 복사
		if(img[0] != null) {
		
			fileName = img[0].getOriginalFilename();
			file = new File(filePath, fileName);
		try {
			FileCopyUtils.copy(img[0].getInputStream(), new FileOutputStream(file));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
			imageboardDTO.setImage1(fileName);
		}else {
			imageboardDTO.setImage1("");
		}
		
		if(img[1] != null) {
			
			fileName = img[1].getOriginalFilename();
			file = new File(filePath, fileName);
		try {
			FileCopyUtils.copy(img[1].getInputStream(), new FileOutputStream(file));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
			imageboardDTO.setImage2(fileName);
		}else {
			imageboardDTO.setImage2("");
		}
		return "/user/imageboardWrite";
	}
	*/
	
	//한번에 여러개의 선택한 경우
	
	/*
	 * File path = new File("."); System.out.println(path.getAbsolutePath());
	 */
	
	@RequestMapping(value="/pop_review_write", method=RequestMethod.POST)
	@ResponseBody
	public void imageboardWrite(@ModelAttribute pop_reviewboardDTO pop_reviewboardDTO,
								  @RequestParam("img[]") List<MultipartFile> list) {
		System.out.println("ddd");
		File path = new File(".");
		System.out.println(path.getAbsolutePath());
		
		
		String filePath = path.getAbsolutePath()+"\\src\\main\\webapp\\storage";
		String fileName;
		File file;
		
		for(MultipartFile img : list) {
			fileName = img.getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img.getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			//pop_reviewboardDTO.setPop_review_imageName(fileName);

		}//for
	}
}
