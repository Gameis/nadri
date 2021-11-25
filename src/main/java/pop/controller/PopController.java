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

import pop.bean.Pop_reviewboardDTO;

@Controller
@RequestMapping(value="/popular")
public class PopController {
	@RequestMapping(value="/pop_review_write", method=RequestMethod.POST)
	@ResponseBody
	public void imageboardWrite(@ModelAttribute Pop_reviewboardDTO pop_reviewboardDTO,
								@RequestParam("img[]") List<MultipartFile> list) {
		
		
		String filePath = "C:\\Users\\downc\\Desktop\\git_home\\nadri\\src\\main\\webapp\\storage";
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
