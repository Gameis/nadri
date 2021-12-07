package tripmoment.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import tripmoment.bean.TripmomentImgDTO;

@Controller
@RequestMapping(value = "/main")
public class TripmomentController {
	
	@RequestMapping(value = "/tripmoment_writeForm", method=RequestMethod.POST)
	@ResponseBody
	public String tripmoment_writeForm(@ModelAttribute TripmomentImgDTO tripmomentImgDTO,
								  @RequestParam("img[]") List<MultipartFile> list) {
		
		String filePath = "D:\\Spring\\workspace\\nadri\\src\\main\\webapp\\tripmoment_ImgStorage";
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
			
			tripmomentImgDTO.setImage1(fileName);
			tripmomentImgDTO.setImage2("");
			
			
		} //for
		System.out.println("야 여기가 컨트롤러다");
		return "/main/tripmoment_write";
	}
	
	@RequestMapping("/tripmoment")
    public String createMember(@Valid @RequestBody TripmomentImgDTO tripmomentImgDTO) {
        System.out.println("tripmomentImgDTO.getImage1() = " + tripmomentImgDTO.getImage1());
        System.out.println("tripmomentImgDTO.getImage2() = " + tripmomentImgDTO.getImage2());
        System.out.println("tripmomentImgDTO.getMoment_title() = " + tripmomentImgDTO.getMoment_title());
        System.out.println("tripmomentImgDTO.getMoment_content() = " + tripmomentImgDTO.getMoment_content());
        System.out.println("tripmomentImgDTO.getPop_name() = " + tripmomentImgDTO.getPop_name());

        // 비지니스 로직이 들어가는 자리.
        return "성공!";
    }

	/*
	private static final Logger logger = LoggerFactory.getLogger(TripmomentController.class);

	@Resource(name = "uploadPath")
	private String uploadPath;

	@RequestMapping(value = "/uploadForm", method = RequestMethod.GET)
	public void uploadForm() throws Exception {
	}

	@RequestMapping(value = "/uploadForm", method = RequestMethod.POST)
	public String uploadForm(MultipartFile file, Model model) throws Exception {

		logger.info("originalName: " + file.getOriginalFilename());
		logger.info("size: " + file.getSize());
		logger.info("contentType: " + file.getContentType());

		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());

		model.addAttribute("savedName", savedName);

		return "/main/tripmoment_writeForm";
	}

	private String uploadFile(String originalName, byte[] fileData) throws Exception {

		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}
	 */
}