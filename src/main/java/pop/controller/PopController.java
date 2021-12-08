package pop.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import pop.bean.TripPopCountDTO;
import pop.bean.TripPopImgDTO;
import pop.bean.TripPopLocationDTO;
import pop.bean.TripPopReviewContentDTO;
import pop.bean.TripPopReviewDTO;
import pop.service.PopService;

@Controller
@RequestMapping(value="/popular")
public class PopController {
	
	@Autowired
	private PopService popService;	
	
	@RequestMapping(value="/pop_review_write", method=RequestMethod.POST)
	@ResponseBody
	public void pop_reviewWrite(@ModelAttribute TripPopReviewDTO tripPopReviewDTO,
								@ModelAttribute TripPopImgDTO tripPopImgDTO,
								@RequestParam("img[]") List<MultipartFile> list,
								HttpServletRequest request) {
		//받아오기전까지만 쓰기
		int member_seq = 1;
		tripPopReviewDTO.setMember_seq(member_seq);
		
		System.out.println(tripPopReviewDTO);
		
		popService.popReviewWrite(tripPopReviewDTO);
		
		//세션받기
//		ModelAndView mv = new ModelAndView();
//		HttpSession session = request.getSession();
//		int member_seq = (int)session.getAttribute("member_seq");
//		session.setAttribute("member_seq", member_seq);
//		mv.setViewName("/repository/jsp/popular/popular");
		
		
		for(MultipartFile img : list) {
			imgReNameCopy(tripPopImgDTO, img, "F", "review", "\\popular\\review");
			popService.popReviewImgWrite(tripPopImgDTO);
		}//for
		
	}
			
	@RequestMapping(value="getCountView")
	@ResponseBody
	public TripPopCountDTO getCountView() {
		return popService.getCountView();
	}
	
	
	@RequestMapping(value="/getLocation", method=RequestMethod.GET)
	@ResponseBody
	public TripPopLocationDTO getLocation(@RequestParam int pop_seq) {
		
		return popService.getLocation(pop_seq);
		
	}
	
	@RequestMapping(value="/getPopImg", method=RequestMethod.POST)
	@ResponseBody
	public List<TripPopImgDTO> getPopImg(@RequestParam int pop_seq) {
		
		return popService.getPopImg(pop_seq);
	}
	
	@RequestMapping(value="/getReviewContent", method=RequestMethod.POST)
	@ResponseBody
	public List<TripPopReviewContentDTO> getReviewContent(){
		System.out.println("컨트롤러 왔다");
		
		return popService.getReviewContent();
	}
	
	
	
	//img파일인지 체크 메소드
	private boolean checkImageType(File file) {
		try {
			String contentType = Files.probeContentType(file.toPath());
			
			return contentType.startsWith("image");
		}catch(IOException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//함수
		public void imgReNameCopy(TripPopImgDTO tripPopImgDTO, MultipartFile img, String isMain, String img_path, String path) {
//		String filePath = "C:\\Spring\\workspace\\nadri\\src\\main\\webapp\\repository\\img" + path; //건휘
		String filePath = "C:\\Users\\downc\\Desktop\\git_home\\nadri\\src\\main\\webapp\\repository\\img" + path; //현석
		
		String fileName = null;
		File file = null;
		
		fileName = img.getOriginalFilename();
		
		UUID uuid = UUID.randomUUID();
		String newFileName = uuid.toString() + "_" + fileName;
		
		file = new File(filePath, newFileName);
		
		uuid = UUID.randomUUID();
		newFileName = uuid.toString() + "_" + fileName;
		
		file = new File(filePath, newFileName);
		try {
			if(checkImageType(file)) {
				FileCopyUtils.copy(img.getInputStream(), new FileOutputStream(file));
				}else {
					System.out.println("이미지파일이 아닙니다.");
					return;
				}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		tripPopImgDTO.setMainImg(isMain);
		tripPopImgDTO.setImg_name(newFileName);
		tripPopImgDTO.setImg_path(img_path);
	}
	
}
