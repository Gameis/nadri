package pop.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import pop.bean.TripPopReviewDTO;

@Controller
@RequestMapping(value="/popular")
public class PopController {	
	
	@RequestMapping(value="/pop_review_write", method=RequestMethod.POST)
	@ResponseBody
	public void pop_reviewWrite(@ModelAttribute TripPopReviewDTO tripPopReviewDTO,
								@RequestParam("img[]") List<MultipartFile> list,
								HttpServletRequest request) {
		
		String filePath = "C:\\Users\\downc\\Desktop\\git_home\\nadri\\src\\main\\webapp\\repository\\img\\popular\\review";
		String fileName;
		File file;
		
		
		
		for(MultipartFile img : list) {
			//파일이름 가져오기
			fileName = img.getOriginalFilename();
			//String extension = fileName.substring(fileName.lastIndexOf("."), fileName.length());//확장자빼오기
			
			//파일이름 중복방지
			
			UUID uuid = UUID.randomUUID();
			String newFileName = uuid.toString() + "_" + fileName;
			
			//파일 업로드 경로와 이름 설정
			
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
			
			
			tripPopReviewDTO.setPop_review_imageName(newFileName);
			System.out.println(tripPopReviewDTO);
			
			//DB갓다오자

		}//for
		
		
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
	
	@RequestMapping(value="/popular", method=RequestMethod.POST)
	public void pop_main_data() {
		
	}
}
