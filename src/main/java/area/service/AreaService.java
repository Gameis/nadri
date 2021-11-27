package area.service;

import area.bean.ImgDTO;
import area.bean.TripPopDTO;
import area.bean.TripPopMapDTO;

public interface AreaService {
	public void popWrite(TripPopDTO tripPopDTO, TripPopMapDTO tripPopMapDTO);

	public void imgWrite(ImgDTO imgDTO);
}
