package pop.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import pop.bean.TripPopCountDTO;
import pop.bean.TripPopImgDTO;
import pop.bean.TripPopLocationDTO;
import pop.bean.TripPopReviewDTO;
import pop.bean.TripPopReviewImgDTO;
import pop.bean.TripPopReviewSearchDTO;
import pop.service.PopService;

@Controller
@RequestMapping(value="/popular")
public class PopController {
	
	@Autowired
	private PopService popService;
	
	//멤버세션필요
	@RequestMapping(value="/pop_review_write", method=RequestMethod.POST)
	@ResponseBody
	public void pop_reviewWrite(@ModelAttribute TripPopReviewDTO tripPopReviewDTO,
								@ModelAttribute TripPopImgDTO tripPopImgDTO,
								@RequestParam("img[]") List<MultipartFile> list,
								@RequestParam int member_seq) {
		
		//String root_path = request.getSession().getServletContext().getRealPath("/");
        String attach_path = "\\popular\\review";
        
        //String path = root_path + attach_path;
        
		//받아오기전까지만 쓰기//////////////////////////////////////////////////////////
		member_seq = 42;
		
		tripPopReviewDTO.setMember_seq(member_seq);
		
		System.out.println(tripPopReviewDTO);
		
		popService.popReviewWrite(tripPopReviewDTO);
		
		
		for(MultipartFile img : list) {
			imgReNameCopy(tripPopImgDTO, img, "F", "review", attach_path);
			popService.popReviewImgWrite(tripPopImgDTO);
		}//for
		
	}
			
	@RequestMapping(value="getCountView")
	@ResponseBody
	public TripPopCountDTO getCountView() {
		return popService.getCountView();
	}
	
	//세션필요
	@RequestMapping(value="/getLocation", method=RequestMethod.POST)
	@ResponseBody
	public TripPopLocationDTO getLocation(@RequestParam int pop_seq,
										  @RequestParam int member_seq) {
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("pop_seq", pop_seq);
		resultMap.put("member_seq", member_seq);
		
		return popService.getLocation(resultMap);
		
	}
	
	@RequestMapping(value="/getPopImg", method=RequestMethod.POST)
	@ResponseBody
	public List<TripPopImgDTO> getPopImg(@RequestParam int pop_seq) {
		
		return popService.getPopImg(pop_seq);
	}
	
	@RequestMapping(value="/getReviewContent", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getReviewContent(TripPopReviewSearchDTO tripPopReviewSearchDTO,
												TripPopReviewImgDTO tripPopReviewImgDTO){		
		Map<String, Object> resultMap = new HashMap<>();
			
		if(tripPopReviewSearchDTO.getSearchType().equals("IMAGE")) {
			resultMap.put("total", popService.getReviewContentPhotoCnt(tripPopReviewSearchDTO));
			resultMap.put("contentList", popService.getReviewContentPhoto(tripPopReviewSearchDTO));
			resultMap.put("photoList", popService.getReviewContentPhotoList(tripPopReviewSearchDTO));
		} else {
			resultMap.put("total", popService.getReviewContentCnt(tripPopReviewSearchDTO));
			resultMap.put("list", popService.getReviewContent(tripPopReviewSearchDTO));
		}
		return resultMap;
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
		public void imgReNameCopy(TripPopImgDTO tripPopImgDTO, MultipartFile img, String isMain, String img_path, String attach_path) {
//		String filePath = "C:\\Spring\\workspace\\nadri\\src\\main\\webapp\\repository\\img" + path; //건휘
		String filePath = "C:\\Users\\downc\\Desktop\\git_home\\nadri\\src\\main\\webapp\\repository\\img" + attach_path; //현석
//		String filePath = path; //현석
		
		String fileName = null;
		File file = null;
		
		fileName = img.getOriginalFilename();
		
		if(fileName!="") {
			UUID uuid = UUID.randomUUID();
			uuid = UUID.randomUUID();
			fileName = uuid.toString() + "_" + fileName;
			
			file = new File(filePath, fileName);
		}

		if(fileName==""){
			System.out.println("땡땡찍혔따");
			fileName = "noImg.jpg";
			
			file = new File(filePath, fileName);
		
		}
		
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
		tripPopImgDTO.setImg_name(fileName);
		tripPopImgDTO.setImg_path(img_path);
	}
	
}
