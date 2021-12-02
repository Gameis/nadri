package area.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import area.bean.ImgDTO;
import area.bean.PopMainDTO;
import area.bean.TripPopDTO;
import area.bean.TripPopMapDTO;
import area.service.AreaService;

@Controller
@RequestMapping(value = "/area")
public class AreaController {
	@Autowired
	private AreaService areaService;

	@RequestMapping(value = "/popWriteForm", method = RequestMethod.GET)
	public String popWriteForm() {
		return "/repository/jsp/area/popWriteForm";
	}
	
	@RequestMapping(value = "/popWrite", method = RequestMethod.POST)
	@ResponseBody
	public void popWrite(@ModelAttribute TripPopDTO tripPopDTO,
						 @ModelAttribute TripPopMapDTO tripPopMapDTO,
						 @ModelAttribute ImgDTO imgDTO,
						 @RequestParam("img[]") List<MultipartFile> list,
						 @RequestParam("main_seq") int main_seq) {
		
		System.out.println("main_seq = " + tripPopDTO.getMain_seq());
//		String filePath = "D:\\Spring\\workspace\\nadri\\src\\main\\webapp\\repository\\img\\popular\\popmain"; //건휘
		String filePath = "C:\\Users\\downc\\Desktop\\git_home\\nadri\\src\\main\\webapp\\repository\\img\\popular\\popmain"; //현석
		
		String fileName = null;
		File file = null;
		
		areaService.popWrite(tripPopDTO, tripPopMapDTO);
		for(MultipartFile img : list) {
			
			fileName = img.getOriginalFilename();
			
			UUID uuid = UUID.randomUUID();
			String newFileName = uuid.toString() + "_" + fileName;
			
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
			
			imgDTO.setImg_name(newFileName);
			imgDTO.setImg_path("popular");
			
			areaService.imgWrite(imgDTO);
			
		}//for
	}
	
	private boolean checkImageType(File file) {
		try {
			String contentType = Files.probeContentType(file.toPath());
			
			return contentType.startsWith("image");
		}catch(IOException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	@RequestMapping(value="/onArea", method=RequestMethod.GET)
	@ResponseBody
	public List<PopMainDTO> onArea() {
		return areaService.onArea(99);
	}
	
	@RequestMapping(value="/popular", method=RequestMethod.GET)
	public String popular() {
		return "/repository/jsp/popular/popular";
	}
	
}
