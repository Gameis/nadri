package area.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import area.bean.ImgDTO;
import area.bean.TripPopDTO;
import area.bean.TripPopMapDTO;
import area.dao.AreaDAO;

@Component
public class AreaServiceImpl implements AreaService {

	@Autowired
	private AreaDAO areaDAO;
	
	@Override
	public void popWrite(TripPopDTO tripPopDTO, 
						 TripPopMapDTO tripPopMapDTO, 
						 List<MultipartFile> list) {
		
		
	}

	@Override
	public void imgWrite(ImgDTO imgDTO) {
		
		areaDAO.imgWrite(imgDTO);
	}

}
