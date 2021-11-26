package area.dao;

import area.bean.ImgDTO;
import area.bean.TripPopDTO;
import area.bean.TripPopMapDTO;

public interface AreaDAO {

	public void imgWrite(ImgDTO imgDTO);

	public void popWrite(TripPopDTO tripPopDTO, TripPopMapDTO tripPopMapDTO);

}
