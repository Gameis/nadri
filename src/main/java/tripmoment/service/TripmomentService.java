package tripmoment.service;

import java.util.List;

import area.bean.ImgDTO;
import tripmoment.bean.MainTripmomentDTO;
import tripmoment.bean.TripmomentDTO;

public interface TripmomentService {

	public void tripmoment_writeForm(ImgDTO imgDTO, String pop_name);

	public void tripmoment_write(TripmomentDTO tripmomentDTO);

	public List<MainTripmomentDTO> onTripmoment();
}