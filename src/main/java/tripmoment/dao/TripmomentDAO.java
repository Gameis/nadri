package tripmoment.dao;

import java.util.List;

import area.bean.ImgDTO;
import tripmoment.bean.MainTripmomentDTO;
import tripmoment.bean.TripmomentDTO;

public interface TripmomentDAO {
	public void tripmoment_writeForm(ImgDTO imgDTO, String pop_name);

	public void tripmomment_write(TripmomentDTO tripmomentDTO);

	public List<MainTripmomentDTO> onTripmoment();
}
