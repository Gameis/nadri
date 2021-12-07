package area.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import area.bean.ImgDTO;
import area.bean.PopMainDTO;
import area.bean.TripActivityDTO;
import area.bean.TripPopDTO;
import area.bean.TripPopMapDTO;
import area.dao.AreaDAO;

@Component
public class AreaServiceImpl implements AreaService {

	@Autowired
	private AreaDAO areaDAO;
	
	@Override
	public void popWrite(TripPopDTO tripPopDTO, 
						 TripPopMapDTO tripPopMapDTO) {
		
		areaDAO.popWrite(tripPopDTO, tripPopMapDTO);
		
	}
	
	@Override
	public void activityWrite(TripActivityDTO tripActivityDTO) {
		areaDAO.activityWrite(tripActivityDTO);
		
	}

	@Override
	public void imgPopWrite(ImgDTO imgDTO) {
		areaDAO.imgPopWrite(imgDTO);
	}
	
	@Override
	public void imgActivityWrite(ImgDTO imgDTO) {
		areaDAO.imgActivityWrite(imgDTO);
	}

	@Override
	public List<PopMainDTO> onAreaPop(int main_seq) {
		return areaDAO.printPopMain(main_seq);
	}

	@Override
	public List<PopMainDTO> onAreaActivity(int main_seq) {
		return areaDAO.printActivityMain(main_seq);
	}



}

