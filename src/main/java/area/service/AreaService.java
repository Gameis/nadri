package area.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import area.bean.ImgDTO;
import area.bean.TripPopDTO;
import area.bean.TripPopMapDTO;

public interface AreaService {
	public void popWrite(TripPopDTO tripPopDTO, 
						 TripPopMapDTO tripPopMapDTO,
						 List<MultipartFile> list);

	public void imgWrite(ImgDTO imgDTO);
}
